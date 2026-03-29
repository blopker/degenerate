// GENERATED CODE - DO NOT MODIFY BY HAND

import 'r2_data_catalog_table_maintenance_config.dart';/// Contains table maintenance configuration.
final class R2DataCatalogTableMaintenanceConfigResponse {const R2DataCatalogTableMaintenanceConfigResponse({required this.maintenanceConfig});

factory R2DataCatalogTableMaintenanceConfigResponse.fromJson(Map<String, dynamic> json) { return R2DataCatalogTableMaintenanceConfigResponse(
  maintenanceConfig: R2DataCatalogTableMaintenanceConfig.fromJson(json['maintenance_config'] as Map<String, dynamic>),
); }

final R2DataCatalogTableMaintenanceConfig maintenanceConfig;

Map<String, dynamic> toJson() { return {
  'maintenance_config': maintenanceConfig.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('maintenance_config'); } 
R2DataCatalogTableMaintenanceConfigResponse copyWith({R2DataCatalogTableMaintenanceConfig? maintenanceConfig}) { return R2DataCatalogTableMaintenanceConfigResponse(
  maintenanceConfig: maintenanceConfig ?? this.maintenanceConfig,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2DataCatalogTableMaintenanceConfigResponse &&
          maintenanceConfig == other.maintenanceConfig; } 
@override int get hashCode { return maintenanceConfig.hashCode; } 
@override String toString() { return 'R2DataCatalogTableMaintenanceConfigResponse(maintenanceConfig: $maintenanceConfig)'; } 
 }
