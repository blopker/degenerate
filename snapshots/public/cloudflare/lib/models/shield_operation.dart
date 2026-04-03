// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'routing.dart';import 'shield_operation_feature_confidence_intervals.dart';import 'shield_operation_feature_parameter_schemas.dart';import 'shield_operation_feature_schema_info.dart';import 'shield_operation_feature_thresholds.dart';import 'shield_operation_features.dart';@immutable final class ShieldOperation {const ShieldOperation({this.features});

factory ShieldOperation.fromJson(Map<String, dynamic> json) { return ShieldOperation(
  features: json['features'] != null ? OneOf5.parse(json['features'], fromA: (v) => ShieldOperationFeatureThresholds.fromJson(v as Map<String, dynamic>), fromB: (v) => ShieldOperationFeatureParameterSchemas.fromJson(v as Map<String, dynamic>), fromC: (v) => Routing.fromJson(v as Map<String, dynamic>), fromD: (v) => ShieldOperationFeatureConfidenceIntervals.fromJson(v as Map<String, dynamic>), fromE: (v) => ShieldOperationFeatureSchemaInfo.fromJson(v as Map<String, dynamic>),) : null,
); }

final ShieldOperationFeatures? features;

Map<String, dynamic> toJson() { return {
  if (features != null) 'features': features?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'features'}.contains(key)); } 
ShieldOperation copyWith({ShieldOperationFeatures Function()? features}) { return ShieldOperation(
  features: features != null ? features() : this.features,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldOperation &&
          features == other.features; } 
@override int get hashCode { return features.hashCode; } 
@override String toString() { return 'ShieldOperation(features: $features)'; } 
 }
