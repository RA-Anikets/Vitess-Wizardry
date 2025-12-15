# VSchema Summary for schShared Migration

## Files Created

1. **schShared_vschema.json** - VSchema for sharded keyspace (274 tables)
2. **schSharedLookup_vschema.json** - VSchema for unsharded keyspace (139 tables)
3. **VSCHEMA_MIGRATION_GUIDE.md** - Comprehensive migration guide with risks and steps

## Quick Stats

- **Total Tables**: 413
- **Sharded Tables**: 274 (in `schShared` keyspace)
  - 262 tables using `intTenantID` as sharding key
  - 12 tables using `intOwnerTenantID` as sharding key
- **Unsharded Tables**: 139 (in `schSharedLookup` keyspace)
  - 11 Quartz scheduler tables (QRTZ_*)
  - 1 master tenant table (tblTenant)
  - 127 reference/lookup tables

## Tables Using intOwnerTenantID

These 12 tables use `intOwnerTenantID` instead of `intTenantID`:
- tblDashboard
- tblDashboardDashboardPersona
- tblDashboardFeatureNotice
- tblDashboardWidget
- tblDashboardWidgetDashboardPersona
- tblDashboardWidgetParameter
- tblDashboardWidgetQuery
- tblEpicFeatureNotice
- tblFeatureProperty
- tblLocalization
- tblLocalizationArchive
- tblReportTemplate

**Note**: These are correctly configured in the VSchema with `intOwnerTenantID` as the sharding column.

## VSchema Configuration

### schShared (Sharded)
```json
{
  "sharded": true,
  "vindexes": {
    "hash": {
      "type": "hash"
    }
  },
  "tables": {
    "tableName": {
      "column_vindexes": [
        {
          "column": "intTenantID",  // or "intOwnerTenantID"
          "name": "hash"
        }
      ]
    }
  }
}
```

### schSharedLookup (Unsharded)
```json
{
  "sharded": false,
  "tables": {
    "tableName": {}
  }
}
```

## How to Apply

```bash
# Apply VSchema to sharded keyspace
vtctldclient ApplyVSchema -- --vschema-file schShared_vschema.json schShared

# Apply VSchema to unsharded keyspace
vtctldclient ApplyVSchema -- --vschema-file schSharedLookup_vschema.json schSharedLookup

# Verify VSchema
vtctldclient GetVSchema schShared
vtctldclient GetVSchema schSharedLookup
```

## Critical Next Steps

1. **⚠️ Remove Foreign Keys** - Vitess does not support FKs across shards
2. **Update Cluster Config** - Change `parts: 1` to `parts: 4` or `parts: 8` in `kube/vitess_cluster.yaml`
3. **Test VSchema** - Apply in non-production first
4. **Review Migration Guide** - See `VSCHEMA_MIGRATION_GUIDE.md` for detailed steps

## Validation

Both VSchema files have been validated:
- ✓ Valid JSON syntax
- ✓ All 274 sharded tables configured
- ✓ All 139 unsharded tables configured
- ✓ Correct sharding columns identified (intTenantID vs intOwnerTenantID)

