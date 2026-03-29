// GENERATED CODE - DO NOT MODIFY BY HAND

final class AigConfigGetGatewayDynamicRouteResponseResultElementsConditionalProperties {const AigConfigGetGatewayDynamicRouteResponseResultElementsConditionalProperties({this.conditions});

factory AigConfigGetGatewayDynamicRouteResponseResultElementsConditionalProperties.fromJson(Map<String, dynamic> json) { return AigConfigGetGatewayDynamicRouteResponseResultElementsConditionalProperties(
  conditions: (json['conditions'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
); }

final Map<String,dynamic>? conditions;

Map<String, dynamic> toJson() { return {
  'conditions': ?conditions,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AigConfigGetGatewayDynamicRouteResponseResultElementsConditionalProperties copyWith({Map<String, dynamic> Function()? conditions}) { return AigConfigGetGatewayDynamicRouteResponseResultElementsConditionalProperties(
  conditions: conditions != null ? conditions() : this.conditions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigGetGatewayDynamicRouteResponseResultElementsConditionalProperties &&
          conditions == other.conditions; } 
@override int get hashCode { return conditions.hashCode; } 
@override String toString() { return 'AigConfigGetGatewayDynamicRouteResponseResultElementsConditionalProperties(conditions: $conditions)'; } 
 }
