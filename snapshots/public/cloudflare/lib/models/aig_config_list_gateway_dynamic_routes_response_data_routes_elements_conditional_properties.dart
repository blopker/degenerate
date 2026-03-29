// GENERATED CODE - DO NOT MODIFY BY HAND

final class AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalProperties {const AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalProperties({this.conditions});

factory AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalProperties.fromJson(Map<String, dynamic> json) { return AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalProperties(
  conditions: (json['conditions'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
); }

final Map<String,dynamic>? conditions;

Map<String, dynamic> toJson() { return {
  'conditions': ?conditions,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalProperties copyWith({Map<String, dynamic> Function()? conditions}) { return AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalProperties(
  conditions: conditions != null ? conditions() : this.conditions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalProperties &&
          conditions == other.conditions; } 
@override int get hashCode { return conditions.hashCode; } 
@override String toString() { return 'AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalProperties(conditions: $conditions)'; } 
 }
