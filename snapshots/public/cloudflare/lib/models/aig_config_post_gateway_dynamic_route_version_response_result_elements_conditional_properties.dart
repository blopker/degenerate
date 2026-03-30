// GENERATED CODE - DO NOT MODIFY BY HAND

final class AigConfigPostGatewayDynamicRouteVersionResponseResultElementsConditionalProperties {const AigConfigPostGatewayDynamicRouteVersionResponseResultElementsConditionalProperties({this.conditions});

factory AigConfigPostGatewayDynamicRouteVersionResponseResultElementsConditionalProperties.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteVersionResponseResultElementsConditionalProperties(
  conditions: (json['conditions'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
); }

final Map<String,dynamic>? conditions;

Map<String, dynamic> toJson() { return {
  'conditions': ?conditions,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'conditions'}.contains(key)); } 
AigConfigPostGatewayDynamicRouteVersionResponseResultElementsConditionalProperties copyWith({Map<String, dynamic> Function()? conditions}) { return AigConfigPostGatewayDynamicRouteVersionResponseResultElementsConditionalProperties(
  conditions: conditions != null ? conditions() : this.conditions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteVersionResponseResultElementsConditionalProperties &&
          conditions == other.conditions; } 
@override int get hashCode { return conditions.hashCode; } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteVersionResponseResultElementsConditionalProperties(conditions: $conditions)'; } 
 }
