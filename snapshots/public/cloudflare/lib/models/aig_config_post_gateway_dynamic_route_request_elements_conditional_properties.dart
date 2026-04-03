// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigPostGatewayDynamicRouteRequestElementsConditionalProperties {const AigConfigPostGatewayDynamicRouteRequestElementsConditionalProperties({this.conditions});

factory AigConfigPostGatewayDynamicRouteRequestElementsConditionalProperties.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteRequestElementsConditionalProperties(
  conditions: json['conditions'] as Map<String, dynamic>?,
); }

final Map<String,dynamic>? conditions;

Map<String, dynamic> toJson() { return {
  'conditions': ?conditions,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'conditions'}.contains(key)); } 
AigConfigPostGatewayDynamicRouteRequestElementsConditionalProperties copyWith({Map<String, dynamic> Function()? conditions}) { return AigConfigPostGatewayDynamicRouteRequestElementsConditionalProperties(
  conditions: conditions != null ? conditions() : this.conditions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteRequestElementsConditionalProperties &&
          conditions == other.conditions; } 
@override int get hashCode { return conditions.hashCode; } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteRequestElementsConditionalProperties(conditions: $conditions)'; } 
 }
