// GENERATED CODE - DO NOT MODIFY BY HAND

final class AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalProperties {const AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalProperties({this.conditions});

factory AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalProperties.fromJson(Map<String, dynamic> json) { return AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalProperties(
  conditions: (json['conditions'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
); }

final Map<String,dynamic>? conditions;

Map<String, dynamic> toJson() { return {
  'conditions': ?conditions,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalProperties copyWith({Map<String, dynamic> Function()? conditions}) { return AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalProperties(
  conditions: conditions != null ? conditions() : this.conditions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalProperties &&
          conditions == other.conditions; } 
@override int get hashCode { return conditions.hashCode; } 
@override String toString() { return 'AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalProperties(conditions: $conditions)'; } 
 }
