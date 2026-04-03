// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigDeleteGatewayDynamicRouteResponseResultElementsConditionalProperties {const AigConfigDeleteGatewayDynamicRouteResponseResultElementsConditionalProperties({this.conditions});

factory AigConfigDeleteGatewayDynamicRouteResponseResultElementsConditionalProperties.fromJson(Map<String, dynamic> json) { return AigConfigDeleteGatewayDynamicRouteResponseResultElementsConditionalProperties(
  conditions: (json['conditions'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
); }

final Map<String,dynamic>? conditions;

Map<String, dynamic> toJson() { return {
  'conditions': ?conditions,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'conditions'}.contains(key)); } 
AigConfigDeleteGatewayDynamicRouteResponseResultElementsConditionalProperties copyWith({Map<String, dynamic> Function()? conditions}) { return AigConfigDeleteGatewayDynamicRouteResponseResultElementsConditionalProperties(
  conditions: conditions != null ? conditions() : this.conditions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigDeleteGatewayDynamicRouteResponseResultElementsConditionalProperties &&
          conditions == other.conditions; } 
@override int get hashCode { return conditions.hashCode; } 
@override String toString() { return 'AigConfigDeleteGatewayDynamicRouteResponseResultElementsConditionalProperties(conditions: $conditions)'; } 
 }
