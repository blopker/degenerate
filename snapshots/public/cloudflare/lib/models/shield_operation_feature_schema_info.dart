// GENERATED CODE - DO NOT MODIFY BY HAND

import 'shield_operation_feature_schema_info_schema_info.dart';final class ShieldOperationFeatureSchemaInfo {const ShieldOperationFeatureSchemaInfo({this.schemaInfo});

factory ShieldOperationFeatureSchemaInfo.fromJson(Map<String, dynamic> json) { return ShieldOperationFeatureSchemaInfo(
  schemaInfo: json['schema_info'] != null ? ShieldOperationFeatureSchemaInfoSchemaInfo.fromJson(json['schema_info'] as Map<String, dynamic>) : null,
); }

final ShieldOperationFeatureSchemaInfoSchemaInfo? schemaInfo;

Map<String, dynamic> toJson() { return {
  if (schemaInfo != null) 'schema_info': schemaInfo?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'schema_info'}.contains(key)); } 
ShieldOperationFeatureSchemaInfo copyWith({ShieldOperationFeatureSchemaInfoSchemaInfo Function()? schemaInfo}) { return ShieldOperationFeatureSchemaInfo(
  schemaInfo: schemaInfo != null ? schemaInfo() : this.schemaInfo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldOperationFeatureSchemaInfo &&
          schemaInfo == other.schemaInfo; } 
@override int get hashCode { return schemaInfo.hashCode; } 
@override String toString() { return 'ShieldOperationFeatureSchemaInfo(schemaInfo: $schemaInfo)'; } 
 }
