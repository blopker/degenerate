// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'r2_data_catalog_catalog_maintenance_state.dart';import 'r2_data_catalog_catalog_target_file_size.dart';/// Configures compaction settings for table optimization.
@immutable final class R2DataCatalogTableCompactionConfig {const R2DataCatalogTableCompactionConfig({required this.state, required this.targetSizeMb, });

factory R2DataCatalogTableCompactionConfig.fromJson(Map<String, dynamic> json) { return R2DataCatalogTableCompactionConfig(
  state: R2DataCatalogCatalogMaintenanceState.fromJson(json['state'] as String),
  targetSizeMb: R2DataCatalogCatalogTargetFileSize.fromJson(json['target_size_mb'] as String),
); }

/// Specifies the state of maintenance operations.
final R2DataCatalogCatalogMaintenanceState state;

/// Sets the target file size for compaction in megabytes. Defaults to "128".
final R2DataCatalogCatalogTargetFileSize targetSizeMb;

Map<String, dynamic> toJson() { return {
  'state': state.toJson(),
  'target_size_mb': targetSizeMb.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('state') &&
      json.containsKey('target_size_mb'); } 
R2DataCatalogTableCompactionConfig copyWith({R2DataCatalogCatalogMaintenanceState? state, R2DataCatalogCatalogTargetFileSize? targetSizeMb, }) { return R2DataCatalogTableCompactionConfig(
  state: state ?? this.state,
  targetSizeMb: targetSizeMb ?? this.targetSizeMb,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2DataCatalogTableCompactionConfig &&
          state == other.state &&
          targetSizeMb == other.targetSizeMb; } 
@override int get hashCode { return Object.hash(state, targetSizeMb); } 
@override String toString() { return 'R2DataCatalogTableCompactionConfig(state: $state, targetSizeMb: $targetSizeMb)'; } 
 }
