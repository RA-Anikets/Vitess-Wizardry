# VSchema Migration Guide for schShared

## ⚠️ CRITICAL ARCHITECTURE RISKS

### 1. **Foreign Keys Will Break in Sharded Environment**
**Problem**: Your schema has 289+ foreign key constraints. Vitess **DOES NOT SUPPORT** foreign keys across shards.

**Impact**: 
- Foreign key constraints referencing `tblTenant` will fail if tenant data is on different shards
- Cross-shard foreign keys (e.g., `tblAccount` → `tblTenant`) will cause query failures
- Foreign keys between sharded tables on different shards will break

**Required Actions**:
1. **Remove ALL foreign key constraints** before migration
2. Implement application-level referential integrity checks
3. Use VReplication for eventual consistency where needed
4. Consider denormalization for frequently joined reference data

### 2. **Composite Unique Keys with intTenantID**
**Good News**: Your schema has composite unique keys like `xuTblAccountIntTenantIDId` (`intTenantID`, `id`). This is **perfect** for Vitess.

**Action**: These will work automatically with the VSchema. No changes needed.

### 3. **Quartz Scheduler Tables**
**Status**: All 11 Quartz tables are correctly placed in unsharded keyspace.

**Note**: Quartz requires transactional consistency, so unsharded placement is correct.

### 4. **Reference Tables Strategy**
**Current Plan**: 139 reference/lookup tables in `schSharedLookup` (unsharded).

**Considerations**:
- These tables are small and frequently joined
- Unsharded placement allows efficient cross-tenant lookups
- Monitor for hot-spotting if reference data grows significantly

## VSchema Structure

### schShared (Sharded Keyspace)
- **Sharding Key**: `intTenantID` (or `intOwnerTenantID` for some tables)
- **VIndex Type**: `hash` (good distribution for tenant-based sharding)
- **Tables**: 274 tenant-specific tables
- **Shard Count**: **You need to decide** (see recommendations below)

### schSharedLookup (Unsharded Keyspace)
- **Sharding**: None (single shard)
- **Tables**: 139 reference/lookup tables including:
  - All Quartz scheduler tables (QRTZ_*)
  - `tblTenant` (master tenant table)
  - Reference tables (Status, Type, Country, Currency, etc.)

## Shard Count Recommendations

### Current State
Your cluster config shows `parts: 1` (single shard). For multi-shard setup:

### Recommended Shard Count
1. **Start with 4 shards** (powers of 2 are easier to reshard later)
2. **Consider 8 shards** if:
   - You have >1000 active tenants
   - Individual tenant data >10GB
   - You need horizontal scaling headroom

### Shard Count Formula
```
Recommended shards = ceil(total_tenant_data_size / (target_shard_size * 0.7))
Where target_shard_size = 50-100GB per shard (MySQL best practice)
```

### Update Cluster Config
In `kube/vitess_cluster.yaml`, change:
```yaml
partitionings:
- equal:
    parts: 1  # ← Change this to 4 or 8
```

## Migration Steps

### Phase 1: Pre-Migration (CRITICAL)
1. **Remove Foreign Keys**:
   ```sql
   -- Generate FK removal script
   SELECT CONCAT('ALTER TABLE ', TABLE_NAME, ' DROP FOREIGN KEY ', CONSTRAINT_NAME, ';')
   FROM information_schema.KEY_COLUMN_USAGE
   WHERE TABLE_SCHEMA = 'schShared'
   AND REFERENCED_TABLE_NAME IS NOT NULL;
   ```

2. **Validate Sharding Key Coverage**:
   - Ensure all tenant tables have `intTenantID` or `intOwnerTenantID`
   - Verify no cross-tenant queries without tenant filter

3. **Test VSchema**:
   ```bash
   vtctldclient ApplyVSchema -- --vschema-file schShared_vschema.json schShared
   vtctldclient ApplyVSchema -- --vschema-file schSharedLookup_vschema.json schSharedLookup
   ```

### Phase 2: Schema Migration
1. Apply VSchema to both keyspaces
2. Create sharded keyspace with multiple shards
3. Use `MoveTables` to migrate data from source MySQL

### Phase 3: Application Updates
1. Update connection strings to use vtgate
2. Ensure all queries include `intTenantID` in WHERE clause
3. Remove application-level FK checks (already removed from DB)
4. Implement application-level referential integrity

## Query Patterns That Will Break

### ❌ Cross-Shard Queries (Will Fail)
```sql
-- This will fail if tenants are on different shards
SELECT a.*, t.* 
FROM tblAccount a 
JOIN tblTenant t ON a.intTenantID = t.id 
WHERE a.intTenantID IN (1, 2, 3);
```

### ✅ Correct Pattern
```sql
-- Query per tenant (application handles aggregation)
SELECT a.* FROM tblAccount a WHERE a.intTenantID = 1;
SELECT a.* FROM tblAccount a WHERE a.intTenantID = 2;
```

### ❌ Missing Sharding Key (Will Scatter)
```sql
-- This will query ALL shards (slow, but works)
SELECT * FROM tblAccount WHERE id = 123;
```

### ✅ Correct Pattern
```sql
-- Always include intTenantID
SELECT * FROM tblAccount WHERE intTenantID = 1 AND id = 123;
```

## Tables Using intOwnerTenantID

Some tables use `intOwnerTenantID` instead of `intTenantID`:
- These are correctly configured in the VSchema
- Ensure application queries use the correct column name

## Next Steps

1. **Review and approve VSchema files**
2. **Decide on shard count** (recommend 4 or 8)
3. **Remove foreign keys** from schema
4. **Update cluster config** with shard count
5. **Test VSchema** in non-production first
6. **Plan MoveTables migration**

## Files Created

- `schShared_vschema.json` - VSchema for sharded keyspace (274 tables)
- `schSharedLookup_vschema.json` - VSchema for unsharded keyspace (139 tables)

Apply with:
```bash
vtctldclient ApplyVSchema -- --vschema-file schShared_vschema.json schShared
vtctldclient ApplyVSchema -- --vschema-file schSharedLookup_vschema.json schSharedLookup
```

