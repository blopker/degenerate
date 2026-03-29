// GENERATED CODE - DO NOT MODIFY BY HAND

import 'r2_data_catalog_catalog_maintenance_state.dart';/// Updates snapshot expiration configuration (all fields optional).
final class R2DataCatalogSnapshotExpirationUpdateParams {const R2DataCatalogSnapshotExpirationUpdateParams({this.maxSnapshotAge, this.minSnapshotsToKeep, this.state, });

factory R2DataCatalogSnapshotExpirationUpdateParams.fromJson(Map<String, dynamic> json) { return R2DataCatalogSnapshotExpirationUpdateParams(
  maxSnapshotAge: json['max_snapshot_age'] as String?,
  minSnapshotsToKeep: json['min_snapshots_to_keep'] != null ? (json['min_snapshots_to_keep'] as num).toInt() : null,
  state: json['state'] != null ? R2DataCatalogCatalogMaintenanceState.fromJson(json['state'] as String) : null,
); }

/// Updates the maximum age for snapshots optionally.
final String? maxSnapshotAge;

/// Updates the minimum number of snapshots to retain optionally.
final int? minSnapshotsToKeep;

/// Updates the state optionally.
/// 
/// Specifies the state of maintenance operations.
final R2DataCatalogCatalogMaintenanceState? state;

Map<String, dynamic> toJson() { return {
  'max_snapshot_age': ?maxSnapshotAge,
  'min_snapshots_to_keep': ?minSnapshotsToKeep,
  if (state != null) 'state': state?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
R2DataCatalogSnapshotExpirationUpdateParams copyWith({String Function()? maxSnapshotAge, int Function()? minSnapshotsToKeep, R2DataCatalogCatalogMaintenanceState Function()? state, }) { return R2DataCatalogSnapshotExpirationUpdateParams(
  maxSnapshotAge: maxSnapshotAge != null ? maxSnapshotAge() : this.maxSnapshotAge,
  minSnapshotsToKeep: minSnapshotsToKeep != null ? minSnapshotsToKeep() : this.minSnapshotsToKeep,
  state: state != null ? state() : this.state,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2DataCatalogSnapshotExpirationUpdateParams &&
          maxSnapshotAge == other.maxSnapshotAge &&
          minSnapshotsToKeep == other.minSnapshotsToKeep &&
          state == other.state; } 
@override int get hashCode { return Object.hash(maxSnapshotAge, minSnapshotsToKeep, state); } 
@override String toString() { return 'R2DataCatalogSnapshotExpirationUpdateParams(maxSnapshotAge: $maxSnapshotAge, minSnapshotsToKeep: $minSnapshotsToKeep, state: $state)'; } 
 }
