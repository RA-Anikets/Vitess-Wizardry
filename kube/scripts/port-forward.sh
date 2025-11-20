#!/bin/bash

# Port-forward script for Vitess VTAdmin and VTGate services
# This script dynamically discovers service names and sets up port-forwarding

set -e

NAMESPACE="${NAMESPACE:-cmms}"
VTADMIN_WEB_PORT="${VTADMIN_WEB_PORT:-15000}"
VTADMIN_API_PORT="${VTADMIN_API_PORT:-15001}"
VTGATE_PORT="${VTGATE_PORT:-15306}"
VTCTLD_WEB_PORT="${VTCTLD_WEB_PORT:-14002}"
VTCTLD_GRPC_PORT="${VTCTLD_GRPC_PORT:-15999}"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Function to print colored output
print_info() {
    echo -e "${GREEN}[INFO]${NC} $1"
}

print_warn() {
    echo -e "${YELLOW}[WARN]${NC} $1"
}

print_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# Function to check if namespace exists
check_namespace() {
    if ! kubectl get namespace "$NAMESPACE" &>/dev/null; then
        print_error "Namespace '$NAMESPACE' does not exist!"
        exit 1
    fi
}

# Function to discover service names
discover_services() {
    print_info "Discovering services in namespace '$NAMESPACE'..."
    
    VTADMIN_SVC=$(kubectl -n "$NAMESPACE" get svc -o name | grep vtadmin | head -1 | cut -d/ -f2)
    VTGATE_SVC=$(kubectl -n "$NAMESPACE" get svc -o name | grep zone1-vtgate | head -1 | cut -d/ -f2)
    VTCTLD_SVC=$(kubectl -n "$NAMESPACE" get svc -o name | grep vtctld | head -1 | cut -d/ -f2)
    
    if [ -z "$VTADMIN_SVC" ]; then
        print_error "VTAdmin service not found in namespace '$NAMESPACE'"
        exit 1
    fi
    
    if [ -z "$VTGATE_SVC" ]; then
        print_warn "VTGate service not found in namespace '$NAMESPACE'"
    fi
    
    if [ -z "$VTCTLD_SVC" ]; then
        print_warn "VTCTLD service not found in namespace '$NAMESPACE'"
    fi
    
    print_info "Found services:"
    [ -n "$VTADMIN_SVC" ] && echo "  - VTAdmin: $VTADMIN_SVC"
    [ -n "$VTGATE_SVC" ] && echo "  - VTGate: $VTGATE_SVC"
    [ -n "$VTCTLD_SVC" ] && echo "  - VTCTLD: $VTCTLD_SVC"
}

# Function to check if port is already in use
check_port() {
    local port=$1
    local service=$2
    
    if lsof -Pi :$port -sTCP:LISTEN -t >/dev/null 2>&1; then
        print_warn "Port $port is already in use. $service port-forward may fail."
        return 1
    fi
    return 0
}

# Function to start port-forward
start_port_forward() {
    local service=$1
    local local_port=$2
    local remote_port=$3
    local name=$4
    
    check_port "$local_port" "$name"
    
    print_info "Starting port-forward for $name..."
    print_info "  Service: $service"
    print_info "  Local port: $local_port -> Remote port: $remote_port"
    
    kubectl -n "$NAMESPACE" port-forward "svc/$service" "$local_port:$remote_port" > /tmp/vitess-pf-$name.log 2>&1 &
    local pid=$!
    echo $pid > /tmp/vitess-pf-$name.pid
    
    # Wait a moment to check if it started successfully
    sleep 2
    if ps -p $pid > /dev/null 2>&1; then
        print_info "$name port-forward started (PID: $pid)"
        return 0
    else
        print_error "$name port-forward failed to start. Check /tmp/vitess-pf-$name.log"
        return 1
    fi
}

# Function to stop port-forwards
stop_port_forwards() {
    print_info "Stopping all port-forwards..."
    
    for name in vtadmin-web vtadmin-api vtgate vtctld-web vtctld-grpc; do
        if [ -f "/tmp/vitess-pf-$name.pid" ]; then
            local pid=$(cat /tmp/vitess-pf-$name.pid)
            if ps -p $pid > /dev/null 2>&1; then
                kill $pid 2>/dev/null
                print_info "Stopped $name port-forward (PID: $pid)"
            fi
            rm -f /tmp/vitess-pf-$name.pid
        fi
    done
}

# Function to show status
show_status() {
    print_info "Port-forward status:"
    echo ""
    
    for name in vtadmin-web vtadmin-api vtgate vtctld-web vtctld-grpc; do
        if [ -f "/tmp/vitess-pf-$name.pid" ]; then
            local pid=$(cat /tmp/vitess-pf-$name.pid)
            if ps -p $pid > /dev/null 2>&1; then
                echo "  ✓ $name (PID: $pid) - Running"
            else
                echo "  ✗ $name (PID: $pid) - Not running"
            fi
        else
            echo "  ✗ $name - Not started"
        fi
    done
}

# Function to show connection info
show_connection_info() {
    echo ""
    print_info "Connection Information:"
    echo ""
    echo "  VTAdmin Web UI:    http://localhost:$VTADMIN_WEB_PORT"
    echo "  VTAdmin API:       http://localhost:$VTADMIN_API_PORT"
    [ -n "$VTGATE_SVC" ] && echo "  VTGate MySQL:       mysql -h 127.0.0.1 -P $VTGATE_PORT -u user1 -ppassword1"
    [ -n "$VTCTLD_SVC" ] && echo "  VTCTLD Web UI:      http://localhost:$VTCTLD_WEB_PORT"
    [ -n "$VTCTLD_SVC" ] && echo "  VTCTLD gRPC:        localhost:$VTCTLD_GRPC_PORT"
    echo ""
    print_info "Logs are stored in /tmp/vitess-pf-*.log"
    print_info "PID files are stored in /tmp/vitess-pf-*.pid"
    echo ""
}

# Main function
main() {
    case "${1:-start}" in
        start)
            check_namespace
            discover_services
            
            # Start VTAdmin port-forwards
            if [ -n "$VTADMIN_SVC" ]; then
                start_port_forward "$VTADMIN_SVC" "$VTADMIN_WEB_PORT" "web" "vtadmin-web"
                start_port_forward "$VTADMIN_SVC" "$VTADMIN_API_PORT" "api" "vtadmin-api"
            fi
            
            # Start VTGate port-forward
            if [ -n "$VTGATE_SVC" ]; then
                start_port_forward "$VTGATE_SVC" "$VTGATE_PORT" "3306" "vtgate"
            fi
            
            # Start VTCTLD port-forwards (optional)
            if [ -n "$VTCTLD_SVC" ]; then
                start_port_forward "$VTCTLD_SVC" "$VTCTLD_WEB_PORT" "web" "vtctld-web"
                start_port_forward "$VTCTLD_SVC" "$VTCTLD_GRPC_PORT" "grpc" "vtctld-grpc"
            fi
            
            show_connection_info
            print_info "Port-forwards are running in the background."
            print_info "Use '$0 stop' to stop them or '$0 status' to check status."
            # Clear the EXIT trap so port-forwards don't get killed on script exit
            trap - EXIT
            # Exit normally, leaving port-forwards running
            exit 0
            ;;
        stop)
            stop_port_forwards
            ;;
        status)
            show_status
            ;;
        restart)
            stop_port_forwards
            sleep 2
            exec "$0" start
            ;;
        *)
            echo "Usage: $0 {start|stop|status|restart}"
            echo ""
            echo "Commands:"
            echo "  start    - Start port-forwards (default)"
            echo "  stop     - Stop all port-forwards"
            echo "  status   - Show status of port-forwards"
            echo "  restart  - Restart all port-forwards"
            echo ""
            echo "Environment variables:"
            echo "  NAMESPACE           - Kubernetes namespace (default: cmms)"
            echo "  VTADMIN_WEB_PORT    - VTAdmin web UI port (default: 15000)"
            echo "  VTADMIN_API_PORT    - VTAdmin API port (default: 15001)"
            echo "  VTGATE_PORT         - VTGate MySQL port (default: 15306)"
            echo "  VTCTLD_WEB_PORT     - VTCTLD web UI port (default: 15002)"
            echo "  VTCTLD_GRPC_PORT    - VTCTLD gRPC port (default: 15999)"
            exit 1
            ;;
    esac
}

# Trap to cleanup on signals only (not on normal exit)
trap 'stop_port_forwards; exit' INT TERM

# Run main function
main "$@"

