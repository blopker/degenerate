// GENERATED CODE - DO NOT MODIFY BY HAND

final class AigConfigPostGatewayDynamicRouteRequestElementsConditionalProperties {const AigConfigPostGatewayDynamicRouteRequestElementsConditionalProperties({this.conditions});

factory AigConfigPostGatewayDynamicRouteRequestElementsConditionalProperties.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteRequestElementsConditionalProperties(
  conditions: (json['conditions'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
); }

final Map<String,dynamic>? conditions;

Map<String, dynamic> toJson() { return {
  'conditions': ?conditions,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AigConfigPostGatewayDynamicRouteRequestElementsConditionalProperties copyWith({Map<String, dynamic> Function()? conditions}) { return AigConfigPostGatewayDynamicRouteRequestElementsConditionalProperties(
  conditions: conditions != null ? conditions() : this.conditions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteRequestElementsConditionalProperties &&
          conditions == other.conditions; } 
@override int get hashCode { return conditions.hashCode; } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteRequestElementsConditionalProperties(conditions: $conditions)'; } 
 }
