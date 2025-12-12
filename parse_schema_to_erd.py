#!/usr/bin/env python3
"""
Parse MySQL schema SQL file and generate an interactive ERD diagram.
"""

import re
import json
from collections import defaultdict
from typing import Dict, List, Set, Tuple, Optional

class SchemaParser:
    def __init__(self, sql_file_path: str):
        self.sql_file_path = sql_file_path
        self.tables: Dict[str, Dict] = {}
        self.foreign_keys: List[Dict] = []
        
    def parse(self):
        """Parse the SQL file to extract table definitions and relationships."""
        with open(self.sql_file_path, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # Find all CREATE TABLE statements
        create_table_pattern = r'CREATE TABLE\s+`?(\w+)`?\s*\((.*?)\)\s*ENGINE'
        
        for match in re.finditer(create_table_pattern, content, re.DOTALL | re.IGNORECASE):
            table_name = match.group(1)
            table_body = match.group(2)
            
            # Parse columns
            columns = self._parse_columns(table_body)
            
            # Parse primary key
            primary_key = self._parse_primary_key(table_body)
            
            # Parse foreign keys
            fks = self._parse_foreign_keys(table_body, table_name)
            self.foreign_keys.extend(fks)
            
            self.tables[table_name] = {
                'name': table_name,
                'columns': columns,
                'primary_key': primary_key,
                'foreign_keys': fks
            }
        
        print(f"Parsed {len(self.tables)} tables and {len(self.foreign_keys)} foreign keys")
        return self.tables, self.foreign_keys
    
    def _parse_columns(self, table_body: str) -> List[Dict]:
        """Extract column definitions from table body."""
        columns = []
        # Match column definitions (lines that start with backtick or space and backtick)
        column_pattern = r'`(\w+)`\s+([^,\n]+?)(?:,|$)'
        
        for match in re.finditer(column_pattern, table_body):
            col_name = match.group(1)
            col_def = match.group(2).strip()
            
            # Skip if it's a constraint line
            if 'CONSTRAINT' in col_def.upper() or 'KEY' in col_def.upper() and 'PRIMARY' not in col_def.upper():
                continue
            
            # Extract data type
            data_type_match = re.search(r'(\w+(?:\([^)]+\))?)', col_def)
            data_type = data_type_match.group(1) if data_type_match else 'unknown'
            
            # Check for NOT NULL
            is_nullable = 'NOT NULL' not in col_def.upper()
            
            columns.append({
                'name': col_name,
                'type': data_type,
                'nullable': is_nullable
            })
        
        return columns
    
    def _parse_primary_key(self, table_body: str) -> Optional[List[str]]:
        """Extract primary key columns."""
        pk_pattern = r'PRIMARY KEY\s*\(([^)]+)\)'
        match = re.search(pk_pattern, table_body, re.IGNORECASE)
        if match:
            pk_cols = re.findall(r'`(\w+)`', match.group(1))
            return pk_cols
        return None
    
    def _parse_foreign_keys(self, table_body: str, table_name: str) -> List[Dict]:
        """Extract foreign key constraints."""
        fks = []
        # Match CONSTRAINT ... FOREIGN KEY ... REFERENCES ...
        fk_pattern = r'CONSTRAINT\s+`?(\w+)`?\s+FOREIGN\s+KEY\s*\(([^)]+)\)\s+REFERENCES\s+`?(\w+)`?\s*\(([^)]+)\)'
        
        for match in re.finditer(fk_pattern, table_body, re.IGNORECASE):
            constraint_name = match.group(1)
            fk_columns = [col.strip().strip('`') for col in match.group(2).split(',')]
            ref_table = match.group(3)
            ref_columns = [col.strip().strip('`') for col in match.group(4).split(',')]
            
            fks.append({
                'constraint_name': constraint_name,
                'from_table': table_name,
                'from_columns': fk_columns,
                'to_table': ref_table,
                'to_columns': ref_columns
            })
        
        return fks
    
    def get_table_groups(self) -> Dict[str, List[str]]:
        """Group tables by prefix (e.g., tblAccount, tblAccountAddress -> Account group)."""
        groups = defaultdict(list)
        
        for table_name in self.tables.keys():
            # Extract prefix (remove common prefixes)
            name = table_name
            if name.startswith('tbl'):
                name = name[3:]
            elif name.startswith('QRTZ_'):
                name = 'Quartz'
            elif name.startswith('JGROUP'):
                name = 'JGroups'
            else:
                # Try to find a meaningful prefix
                parts = re.split(r'[A-Z]', name)
                if parts:
                    name = name[:len(parts[0])+1] if len(parts[0]) > 0 else name[:2]
            
            # Group by first meaningful word
            group_name = re.match(r'^([A-Z][a-z]+)', name)
            if group_name:
                group = group_name.group(1)
            else:
                group = name[:10] if len(name) > 10 else name
            
            groups[group].append(table_name)
        
        return dict(groups)

def generate_html_erd(tables: Dict, foreign_keys: List[Dict], output_file: str):
    """Generate an interactive HTML ERD diagram using vis.js."""
    
    # Sort tables alphabetically for better organization
    sorted_table_names = sorted(tables.keys())
    
    # Build relationship maps for quick lookup
    incoming_relations = defaultdict(list)  # table -> list of FKs pointing to it
    outgoing_relations = defaultdict(list)  # table -> list of FKs it points to
    
    for fk in foreign_keys:
        from_table = fk['from_table']
        to_table = fk['to_table']
        incoming_relations[to_table].append(fk)
        outgoing_relations[from_table].append(fk)
    
    # Prepare nodes and edges for vis.js
    nodes = []
    edges = []
    node_id_map = {table_name: idx for idx, table_name in enumerate(sorted_table_names)}
    
    # Create nodes (using sorted order)
    for table_name in sorted_table_names:
        table_info = tables[table_name]
        # Create label with table name and column count
        col_count = len(table_info['columns'])
        pk_info = f"PK: {', '.join(table_info['primary_key'])}" if table_info['primary_key'] else "No PK"
        
        # Get relationship counts
        incoming_count = len(incoming_relations.get(table_name, []))
        outgoing_count = len(outgoing_relations.get(table_name, []))
        
        # Create a detailed label
        label = f"{table_name}\n({col_count} cols)\n{pk_info}"
        
        # Determine group/color based on table prefix
        if table_name.startswith('QRTZ_'):
            group = 'quartz'
            color = '#FFB6C1'  # Light pink
        elif table_name.startswith('tbl'):
            prefix = table_name[3:10] if len(table_name) > 3 else 'other'
            group = prefix.lower()
            # Assign colors based on prefix
            color_map = {
                'account': '#87CEEB',  # Sky blue
                'asset': '#98FB98',    # Pale green
                'order': '#FFD700',    # Gold
                'user': '#DDA0DD',     # Plum
                'product': '#F0E68C',  # Khaki
                'purch': '#FFA07A',    # Light salmon
                'tenant': '#20B2AA',   # Light sea green
                'integ': '#B0C4DE',    # Light steel blue
            }
            color = color_map.get(prefix.lower(), '#D3D3D3')  # Light gray default
        else:
            group = 'other'
            color = '#D3D3D3'
        
        nodes.append({
            'id': node_id_map[table_name],
            'label': table_name,
            'title': f"<b>{table_name}</b><br/>Columns: {col_count}<br/>{pk_info}<br/>Relations: {incoming_count} incoming, {outgoing_count} outgoing",
            'group': group,
            'color': color,
            'shape': 'box',
            'font': {'size': 12},
            'x': None,  # Will be set by layout
            'y': None,
            'table_data': {
                'name': table_name,
                'columns': table_info['columns'],
                'primary_key': table_info['primary_key'],
                'incoming_relations': incoming_relations.get(table_name, []),
                'outgoing_relations': outgoing_relations.get(table_name, [])
            }
        })
    
    # Create edges (foreign key relationships)
    for fk in foreign_keys:
        from_table = fk['from_table']
        to_table = fk['to_table']
        
        if from_table in node_id_map and to_table in node_id_map:
            from_cols = ', '.join(fk['from_columns'])
            to_cols = ', '.join(fk['to_columns'])
            
            edges.append({
                'from': node_id_map[from_table],
                'to': node_id_map[to_table],
                'arrows': 'to',
                'label': f"{from_cols} → {to_cols}",
                'title': f"{from_table}.{from_cols} → {to_table}.{to_cols}",
                'color': {'color': '#848484'},
                'smooth': {'type': 'curvedCW', 'roundness': 0.2}
            })
    
    # Convert nodes and edges to JSON strings
    nodes_json = json.dumps(nodes, indent=2)
    edges_json = json.dumps(edges, indent=2)
    
    # Create a mapping of all relationships for easy lookup
    all_relations_json = json.dumps({
        'incoming': {k: v for k, v in incoming_relations.items()},
        'outgoing': {k: v for k, v in outgoing_relations.items()}
    }, indent=2)
    
    # Generate HTML
    html_content = f"""<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ERD Diagram - schShared Database</title>
    <script type="text/javascript" src="https://unpkg.com/vis-network/standalone/umd/vis-network.min.js"></script>
    <style>
        body {{
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: #f5f5f5;
        }}
        #header {{
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 20px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }}
        #header h1 {{
            margin: 0;
            font-size: 28px;
        }}
        #header p {{
            margin: 5px 0 0 0;
            opacity: 0.9;
        }}
        #controls {{
            background: white;
            padding: 15px 20px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            display: flex;
            gap: 15px;
            flex-wrap: wrap;
            align-items: center;
        }}
        #controls button {{
            padding: 8px 16px;
            background: #667eea;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 14px;
            transition: background 0.3s;
        }}
        #controls button:hover {{
            background: #5568d3;
        }}
        #controls input[type="text"] {{
            padding: 8px 12px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
            width: 200px;
        }}
        #controls select {{
            padding: 8px 12px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
            background: white;
            cursor: pointer;
        }}
        #controls label {{
            font-weight: 500;
            color: #333;
        }}
        #mynetwork {{
            width: 100%;
            height: calc(100vh - 180px);
            background: white;
            border: 1px solid #ddd;
        }}
        #traditionalERD {{
            display: none;
            width: 100%;
            height: calc(100vh - 180px);
            background: white;
            border: 1px solid #ddd;
            overflow: auto;
            padding: 20px;
        }}
        .table-card {{
            border: 2px solid #667eea;
            border-radius: 8px;
            margin: 15px;
            padding: 15px;
            background: #f9f9f9;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            display: inline-block;
            vertical-align: top;
            min-width: 250px;
            cursor: pointer;
            transition: all 0.3s;
        }}
        .table-card:hover {{
            box-shadow: 0 4px 10px rgba(0,0,0,0.2);
            transform: translateY(-2px);
            border-color: #5568d3;
        }}
        .table-card h4 {{
            margin: 0 0 10px 0;
            color: #667eea;
            border-bottom: 2px solid #667eea;
            padding-bottom: 5px;
        }}
        .table-column {{
            padding: 5px;
            font-size: 0.9em;
            border-bottom: 1px solid #eee;
        }}
        .table-column.pk {{
            font-weight: bold;
            color: #667eea;
        }}
        .relations-section {{
            margin-top: 20px;
            padding-top: 20px;
            border-top: 2px solid #ddd;
        }}
        .relation-item {{
            padding: 10px;
            margin: 8px 0;
            background: #f0f0f0;
            border-radius: 5px;
            border-left: 4px solid #667eea;
        }}
        .relation-item.incoming {{
            border-left-color: #4CAF50;
        }}
        .relation-item.outgoing {{
            border-left-color: #FF9800;
        }}
        .relation-label {{
            font-weight: bold;
            color: #333;
            margin-bottom: 5px;
        }}
        .relation-details {{
            font-size: 0.9em;
            color: #666;
        }}
        .view-toggle {{
            background: #28a745;
        }}
        .view-toggle.active {{
            background: #218838;
        }}
        #tableDetails {{
            position: fixed;
            right: -400px;
            top: 180px;
            width: 380px;
            height: calc(100vh - 180px);
            background: white;
            box-shadow: -2px 0 10px rgba(0,0,0,0.1);
            transition: right 0.3s;
            overflow-y: auto;
            padding: 20px;
            z-index: 1000;
        }}
        #tableDetails.open {{
            right: 0;
        }}
        #tableDetails h3 {{
            margin-top: 0;
            color: #667eea;
            border-bottom: 2px solid #667eea;
            padding-bottom: 10px;
        }}
        .column-item {{
            padding: 8px;
            margin: 5px 0;
            background: #f9f9f9;
            border-left: 3px solid #667eea;
            border-radius: 3px;
        }}
        .column-name {{
            font-weight: bold;
            color: #333;
        }}
        .column-type {{
            color: #666;
            font-size: 0.9em;
        }}
        .pk-badge {{
            background: #667eea;
            color: white;
            padding: 2px 8px;
            border-radius: 3px;
            font-size: 0.8em;
            margin-left: 5px;
        }}
        .close-btn {{
            position: absolute;
            top: 10px;
            right: 10px;
            background: #ff4444;
            color: white;
            border: none;
            border-radius: 50%;
            width: 30px;
            height: 30px;
            cursor: pointer;
            font-size: 18px;
        }}
        .stats {{
            display: flex;
            gap: 20px;
            margin-top: 10px;
        }}
        .stat-item {{
            background: rgba(255,255,255,0.2);
            padding: 5px 15px;
            border-radius: 5px;
        }}
    </style>
</head>
<body>
    <div id="header">
        <h1>📊 ERD Diagram - schShared Database</h1>
        <p>Interactive Entity Relationship Diagram with {len(tables)} tables and {len(foreign_keys)} relationships</p>
        <div class="stats">
            <div class="stat-item">Tables: {len(tables)}</div>
            <div class="stat-item">Relationships: {len(foreign_keys)}</div>
            <div class="stat-item">Click nodes to expand/collapse | Drag to rearrange</div>
        </div>
    </div>
    
    <div id="controls">
        <button id="viewToggle" class="view-toggle" onclick="toggleView()">📋 Switch to Traditional ERD</button>
        <button onclick="resetView()">🔄 Reset View</button>
        <button onclick="fitToScreen()">📐 Fit to Screen</button>
        <button onclick="togglePhysics()">⚙️ Toggle Physics</button>
        <button onclick="changeLayout()">📊 Change Layout</button>
        <button onclick="exportImage()">💾 Export Image</button>
        <label>
            <input type="text" id="searchBox" placeholder="Search table..." onkeyup="searchTable(event)">
        </label>
        <label>
            <input type="checkbox" id="showLabels" checked onchange="toggleLabels()"> Show Labels
        </label>
        <select id="filterGroup" onchange="filterByGroup()">
            <option value="all">All Tables</option>
            <option value="tblAccount">Account Tables</option>
            <option value="tblAsset">Asset Tables</option>
            <option value="tblOrder">Order Tables</option>
            <option value="tblUser">User Tables</option>
            <option value="tblProduct">Product Tables</option>
            <option value="tblPurchase">Purchase Tables</option>
            <option value="tblTenant">Tenant Tables</option>
            <option value="tblIntegration">Integration Tables</option>
            <option value="QRTZ_">Quartz Tables</option>
        </select>
    </div>
    
    <div id="mynetwork"></div>
    <div id="traditionalERD"></div>
    <div id="tableDetails">
        <button class="close-btn" onclick="closeDetails()">×</button>
        <h3 id="detailTitle">Table Details</h3>
        <div id="detailContent"></div>
    </div>

    <script type="text/javascript">
        // Data
        const nodes = new vis.DataSet({nodes_json});
        const edges = new vis.DataSet({edges_json});
        const allRelations = {all_relations_json};
        let currentView = 'network'; // 'network' or 'traditional'
        let currentLayout = 'force'; // 'force', 'hierarchical', 'circular'
        
        // Create a network
        const container = document.getElementById('mynetwork');
        const data = {{
            nodes: nodes,
            edges: edges
        }};
        
        const options = {{
            nodes: {{
                borderWidth: 2,
                shadow: true,
                font: {{
                    size: 12,
                    face: 'Segoe UI'
                }},
                shapeProperties: {{
                    useBorderWithImage: true
                }}
            }},
            edges: {{
                width: 2,
                shadow: true,
                font: {{
                    size: 10,
                    align: 'middle'
                }},
                smooth: {{
                    type: 'curvedCW',
                    roundness: 0.2
                }}
            }},
            physics: {{
                enabled: true,
                stabilization: {{
                    iterations: 200
                }},
                barnesHut: {{
                    gravitationalConstant: -2000,
                    centralGravity: 0.1,
                    springLength: 200,
                    springConstant: 0.04,
                    damping: 0.09
                }}
            }},
            interaction: {{
                hover: true,
                tooltipDelay: 100,
                zoomView: true,
                dragView: true
            }},
            layout: {{
                improvedLayout: true,
                hierarchical: {{
                    enabled: false
                }}
            }}
        }};
        
        const network = new vis.Network(container, data, options);
        let physicsEnabled = true;
        let expandedNodes = new Set();
        
        // Initialize traditional ERD view
        renderTraditionalERD();
        
        // Node click event - toggle expansion
        network.on("click", function (params) {{
            if (params.nodes.length > 0) {{
                const nodeId = params.nodes[0];
                const node = nodes.get(nodeId);
                
                if (node) {{
                    showTableDetails(node.table_data);
                    
                    // Toggle expansion (show/hide connected nodes)
                    if (expandedNodes.has(nodeId)) {{
                        collapseNode(nodeId);
                    }} else {{
                        expandNode(nodeId);
                    }}
                }}
            }} else {{
                closeDetails();
            }}
        }});
        
        // Double click to fit
        network.on("doubleClick", function (params) {{
            if (params.nodes.length > 0) {{
                network.focus(params.nodes[0], {{
                    scale: 1.5,
                    animation: true
                }});
            }}
        }});
        
        function expandNode(nodeId) {{
            expandedNodes.add(nodeId);
            const connectedEdges = network.getConnectedEdges(nodeId);
            const connectedNodes = new Set();
            
            connectedEdges.forEach(edgeId => {{
                const edge = edges.get(edgeId);
                if (edge.from === nodeId) {{
                    connectedNodes.add(edge.to);
                }} else {{
                    connectedNodes.add(edge.from);
                }}
            }});
            
            // Highlight connected nodes
            const updateNodes = nodes.get().map(node => {{
                if (connectedNodes.has(node.id) || node.id === nodeId) {{
                    return {{
                        id: node.id,
                        borderWidth: 4,
                        borderColor: '#667eea'
                    }};
                }} else {{
                    return {{
                        id: node.id,
                        opacity: 0.3
                    }};
                }}
            }});
            
            nodes.update(updateNodes);
        }}
        
        function collapseNode(nodeId) {{
            expandedNodes.delete(nodeId);
            
            // Reset all nodes
            const updateNodes = nodes.get().map(node => {{
                return {{
                    id: node.id,
                    borderWidth: 2,
                    borderColor: undefined,
                    opacity: 1
                }};
            }});
            
            nodes.update(updateNodes);
        }}
        
        function showTableDetails(tableData) {{
            const detailTitle = document.getElementById('detailTitle');
            const detailContent = document.getElementById('detailContent');
            const detailsPanel = document.getElementById('tableDetails');
            
            detailTitle.textContent = tableData.name;
            
            let html = '<h4>Columns:</h4>';
            tableData.columns.forEach(col => {{
                const isPk = tableData.primary_key && tableData.primary_key.includes(col.name);
                html += `
                    <div class="column-item">
                        <span class="column-name">${{col.name}}</span>
                        ${{isPk ? '<span class="pk-badge">PK</span>' : ''}}
                        <br>
                        <span class="column-type">${{col.type}}</span>
                        ${{col.nullable ? '<span style="color: #999;">(nullable)</span>' : ''}}
                    </div>
                `;
            }});
            
            if (tableData.primary_key && tableData.primary_key.length > 0) {{
                html += `<h4>Primary Key:</h4><p>${{tableData.primary_key.join(', ')}}</p>`;
            }}
            
            // Enhanced Relations Section
            html += '<div class="relations-section">';
            
            // Outgoing Relations (Foreign Keys this table references)
            if (tableData.outgoing_relations && tableData.outgoing_relations.length > 0) {{
                html += '<h4 style="color: #FF9800; margin-top: 15px;">Outgoing Relations (References):</h4>';
                tableData.outgoing_relations.forEach(rel => {{
                    html += `
                        <div class="relation-item outgoing">
                            <div class="relation-label">→ ${{rel.to_table}}</div>
                            <div class="relation-details">
                                <strong>${{rel.from_columns.join(', ')}}</strong> → 
                                <strong>${{rel.to_columns.join(', ')}}</strong>
                            </div>
                        </div>
                    `;
                }});
            }}
            
            // Incoming Relations (Foreign Keys pointing to this table)
            if (tableData.incoming_relations && tableData.incoming_relations.length > 0) {{
                html += '<h4 style="color: #4CAF50; margin-top: 15px;">Incoming Relations (Referenced By):</h4>';
                tableData.incoming_relations.forEach(rel => {{
                    html += `
                        <div class="relation-item incoming">
                            <div class="relation-label">← ${{rel.from_table}}</div>
                            <div class="relation-details">
                                <strong>${{rel.from_columns.join(', ')}}</strong> → 
                                <strong>${{rel.to_columns.join(', ')}}</strong>
                            </div>
                        </div>
                    `;
                }});
            }}
            
            if ((!tableData.outgoing_relations || tableData.outgoing_relations.length === 0) && 
                (!tableData.incoming_relations || tableData.incoming_relations.length === 0)) {{
                html += '<p style="color: #999; font-style: italic;">No relationships defined</p>';
            }}
            
            html += '</div>';
            
            detailContent.innerHTML = html;
            detailsPanel.classList.add('open');
        }}
        
        function toggleView() {{
            const networkDiv = document.getElementById('mynetwork');
            const traditionalDiv = document.getElementById('traditionalERD');
            const toggleBtn = document.getElementById('viewToggle');
            
            if (currentView === 'network') {{
                currentView = 'traditional';
                networkDiv.style.display = 'none';
                traditionalDiv.style.display = 'block';
                toggleBtn.textContent = '🕸️ Switch to Network View';
            }} else {{
                currentView = 'network';
                networkDiv.style.display = 'block';
                traditionalDiv.style.display = 'none';
                toggleBtn.textContent = '📋 Switch to Traditional ERD';
            }}
        }}
        
        function changeLayout() {{
            const layouts = ['force', 'hierarchical', 'circular'];
            const currentIndex = layouts.indexOf(currentLayout);
            currentLayout = layouts[(currentIndex + 1) % layouts.length];
            
            let layoutOptions = {{
                improvedLayout: true,
                hierarchical: {{ enabled: false }}
            }};
            
            if (currentLayout === 'hierarchical') {{
                layoutOptions.hierarchical = {{
                    enabled: true,
                    direction: 'UD',
                    sortMethod: 'directed',
                    levelSeparation: 150,
                    nodeSpacing: 200,
                    treeSpacing: 200
                }};
                network.setOptions({{ layout: layoutOptions }});
            }} else if (currentLayout === 'circular') {{
                // Use hierarchical with circular arrangement
                layoutOptions.hierarchical = {{
                    enabled: false
                }};
                network.setOptions({{ layout: layoutOptions }});
                // Manually arrange in circle
                const nodeIds = nodes.getIds();
                const centerX = 0;
                const centerY = 0;
                const radius = 500;
                const angleStep = (2 * Math.PI) / nodeIds.length;
                
                const updateNodes = nodeIds.map((id, index) => {{
                    const angle = index * angleStep;
                    return {{
                        id: id,
                        x: centerX + radius * Math.cos(angle),
                        y: centerY + radius * Math.sin(angle),
                        fixed: {{ x: false, y: false }}
                    }};
                }});
                nodes.update(updateNodes);
            }} else {{
                // Force-directed layout
                network.setOptions({{ layout: layoutOptions }});
            }}
            
            network.fit({{ animation: true }});
        }}
        
        function renderTraditionalERD() {{
            const traditionalDiv = document.getElementById('traditionalERD');
            let html = '';
            
            // Sort tables alphabetically
            const sortedNodes = nodes.get().sort((a, b) => a.label.localeCompare(b.label));
            
            sortedNodes.forEach((node, index) => {{
                const tableData = node.table_data;
                html += `<div class="table-card" onclick="showTableDetailsFromTraditional('${{tableData.name}}')">`;
                html += `<h4>${{tableData.name}}</h4>`;
                
                // Columns
                html += `<div style="margin-bottom: 10px;">`;
                tableData.columns.forEach(col => {{
                    const isPk = tableData.primary_key && tableData.primary_key.includes(col.name);
                    html += `<div class="table-column ${{isPk ? 'pk' : ''}}">`;
                    html += `<strong>${{col.name}}</strong> <span style="color: #666;">(${{col.type}})</span>`;
                    if (isPk) html += ` <span class="pk-badge">PK</span>`;
                    if (col.nullable) html += ` <span style="color: #999;">nullable</span>`;
                    html += `</div>`;
                }});
                html += `</div>`;
                
                // Relations
                if ((tableData.outgoing_relations && tableData.outgoing_relations.length > 0) || 
                    (tableData.incoming_relations && tableData.incoming_relations.length > 0)) {{
                    html += `<div style="border-top: 1px solid #ddd; margin-top: 10px; padding-top: 10px;">`;
                    
                    if (tableData.outgoing_relations && tableData.outgoing_relations.length > 0) {{
                        html += `<div style="font-size: 0.85em; color: #FF9800; margin-bottom: 5px;"><strong>References:</strong></div>`;
                        tableData.outgoing_relations.forEach(rel => {{
                            html += `<div style="font-size: 0.8em; color: #666; margin-left: 10px;">→ ${{rel.to_table}} (${{rel.from_columns.join(', ')}} → ${{rel.to_columns.join(', ')}})</div>`;
                        }});
                    }}
                    
                    if (tableData.incoming_relations && tableData.incoming_relations.length > 0) {{
                        html += `<div style="font-size: 0.85em; color: #4CAF50; margin-top: 8px; margin-bottom: 5px;"><strong>Referenced by:</strong></div>`;
                        tableData.incoming_relations.forEach(rel => {{
                            html += `<div style="font-size: 0.8em; color: #666; margin-left: 10px;">← ${{rel.from_table}} (${{rel.from_columns.join(', ')}} → ${{rel.to_columns.join(', ')}})</div>`;
                        }});
                    }}
                    
                    html += `</div>`;
                }}
                
                html += `</div>`;
            }});
            
            traditionalDiv.innerHTML = html;
        }}
        
        function showTableDetailsFromTraditional(tableName) {{
            const matchingNode = nodes.get().find(node => node.label === tableName);
            if (matchingNode) {{
                showTableDetails(matchingNode.table_data);
            }}
        }}
        
        function closeDetails() {{
            document.getElementById('tableDetails').classList.remove('open');
        }}
        
        function resetView() {{
            network.fit({{
                animation: true
            }});
            expandedNodes.clear();
            collapseNode(-1); // Reset all
        }}
        
        function fitToScreen() {{
            network.fit({{
                animation: true
            }});
        }}
        
        function togglePhysics() {{
            physicsEnabled = !physicsEnabled;
            network.setOptions({{
                physics: {{
                    enabled: physicsEnabled
                }}
            }});
        }}
        
        function toggleLabels() {{
            const showLabels = document.getElementById('showLabels').checked;
            const updateEdges = edges.get().map(edge => {{
                return {{
                    id: edge.id,
                    label: showLabels ? edge.label : ''
                }};
            }});
            edges.update(updateEdges);
        }}
        
        function searchTable(event) {{
            if (event.key === 'Enter') {{
                const searchTerm = document.getElementById('searchBox').value.toLowerCase();
                const matchingNodes = nodes.get().filter(node => 
                    node.label.toLowerCase().includes(searchTerm)
                );
                
                if (matchingNodes.length > 0) {{
                    network.focus(matchingNodes[0].id, {{
                        scale: 1.5,
                        animation: true
                    }});
                    showTableDetails(matchingNodes[0].table_data);
                    expandNode(matchingNodes[0].id);
                }}
            }}
        }}
        
        function exportImage() {{
            const canvas = network.getCanvas();
            const dataURL = canvas.toDataURL('image/png');
            const link = document.createElement('a');
            link.download = 'erd-diagram.png';
            link.href = dataURL;
            link.click();
        }}
        
        function filterByGroup() {{
            const filterValue = document.getElementById('filterGroup').value;
            const allNodes = nodes.get();
            let visibleNodeIds;
            
            if (filterValue === 'all') {{
                // Show all nodes
                visibleNodeIds = new Set(allNodes.map(n => n.id));
                const updateNodes = allNodes.map(node => ({{
                    id: node.id,
                    hidden: false
                }}));
                nodes.update(updateNodes);
            }} else {{
                // Filter by prefix
                visibleNodeIds = new Set();
                const updateNodes = allNodes.map(node => {{
                    const shouldShow = node.label.startsWith(filterValue);
                    if (shouldShow) {{
                        visibleNodeIds.add(node.id);
                    }}
                    return {{
                        id: node.id,
                        hidden: !shouldShow
                    }};
                }});
                nodes.update(updateNodes);
            }}
            
            // Also filter edges
            const allEdges = edges.get();
            const updateEdges = allEdges.map(edge => {{
                const shouldShow = visibleNodeIds.has(edge.from) && visibleNodeIds.has(edge.to);
                return {{
                    id: edge.id,
                    hidden: !shouldShow
                }};
            }});
            edges.update(updateEdges);
            
            network.fit({{
                animation: true
            }});
        }}
        
        // Initial fit
        network.on("stabilizationEnd", function() {{
            network.fit({{
                animation: true
            }});
        }});
    </script>
</body>
</html>"""
    
    with open(output_file, 'w', encoding='utf-8') as f:
        f.write(html_content)
    
    print(f"ERD diagram generated: {output_file}")

if __name__ == '__main__':
    import sys
    
    sql_file = '/Users/aniket.shelke/Learnings/Vitess/mysql/schemas/schShared.sql'
    output_file = '/Users/aniket.shelke/Learnings/Vitess/erd_diagram.html'
    
    print("Parsing SQL schema...")
    parser = SchemaParser(sql_file)
    tables, foreign_keys = parser.parse()
    
    print("Generating ERD diagram...")
    generate_html_erd(tables, foreign_keys, output_file)
    
    print(f"\n✅ Done! Open {output_file} in your browser to view the interactive ERD diagram.")

