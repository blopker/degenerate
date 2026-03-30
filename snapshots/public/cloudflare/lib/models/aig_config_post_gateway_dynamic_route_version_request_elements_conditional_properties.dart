// GENERATED CODE - DO NOT MODIFY BY HAND

final class AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalProperties {const AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalProperties({this.conditions});

factory AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalProperties.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalProperties(
  conditions: (json['conditions'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
); }

final Map<String,dynamic>? conditions;

Map<String, dynamic> toJson() { return {
  'conditions': ?conditions,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'conditions'}.contains(key)); } 
AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalProperties copyWith({Map<String, dynamic> Function()? conditions}) { return AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalProperties(
  conditions: conditions != null ? conditions() : this.conditions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalProperties &&
          conditions == other.conditions; } 
@override int get hashCode { return conditions.hashCode; } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteVersionRequestElementsConditionalProperties(conditions: $conditions)'; } 
 }
