// GENERATED CODE - DO NOT MODIFY BY HAND

import 'r2_data_catalog_compaction_update_params.dart';import 'r2_data_catalog_snapshot_expiration_update_params.dart';/// Contains maintenance update parameters.
final class R2DataCatalogMaintenanceUpdateParams {const R2DataCatalogMaintenanceUpdateParams({this.compaction, this.snapshotExpiration, });

factory R2DataCatalogMaintenanceUpdateParams.fromJson(Map<String, dynamic> json) { return R2DataCatalogMaintenanceUpdateParams(
  compaction: json['compaction'] != null ? R2DataCatalogCompactionUpdateParams.fromJson(json['compaction'] as Map<String, dynamic>) : null,
  snapshotExpiration: json['snapshot_expiration'] != null ? R2DataCatalogSnapshotExpirationUpdateParams.fromJson(json['snapshot_expiration'] as Map<String, dynamic>) : null,
); }

final R2DataCatalogCompactionUpdateParams? compaction;

final R2DataCatalogSnapshotExpirationUpdateParams? snapshotExpiration;

Map<String, dynamic> toJson() { return {
  if (compaction != null) 'compaction': compaction?.toJson(),
  if (snapshotExpiration != null) 'snapshot_expiration': snapshotExpiration?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'compaction', 'snapshot_expiration'}.contains(key)); } 
R2DataCatalogMaintenanceUpdateParams copyWith({R2DataCatalogCompactionUpdateParams Function()? compaction, R2DataCatalogSnapshotExpirationUpdateParams Function()? snapshotExpiration, }) { return R2DataCatalogMaintenanceUpdateParams(
  compaction: compaction != null ? compaction() : this.compaction,
  snapshotExpiration: snapshotExpiration != null ? snapshotExpiration() : this.snapshotExpiration,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2DataCatalogMaintenanceUpdateParams &&
          compaction == other.compaction &&
          snapshotExpiration == other.snapshotExpiration; } 
@override int get hashCode { return Object.hash(compaction, snapshotExpiration); } 
@override String toString() { return 'R2DataCatalogMaintenanceUpdateParams(compaction: $compaction, snapshotExpiration: $snapshotExpiration)'; } 
 }
