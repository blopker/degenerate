// GENERATED CODE - DO NOT MODIFY BY HAND

import 'aig_config_update_gateway_dynamic_route_response_route_elements_conditional_outputs_false.dart';import 'aig_config_update_gateway_dynamic_route_response_route_elements_conditional_outputs_true.dart';final class AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalOutputs {const AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalOutputs({required this.$false, required this.$true, });

factory AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalOutputs.fromJson(Map<String, dynamic> json) { return AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalOutputs(
  $false: AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalOutputsFalse.fromJson(json['false'] as Map<String, dynamic>),
  $true: AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalOutputsTrue.fromJson(json['true'] as Map<String, dynamic>),
); }

final AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalOutputsFalse $false;

final AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalOutputsTrue $true;

Map<String, dynamic> toJson() { return {
  'false': $false.toJson(),
  'true': $true.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('false') &&
      json.containsKey('true'); } 
AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalOutputs copyWith({AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalOutputsFalse? $false, AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalOutputsTrue? $true, }) { return AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalOutputs(
  $false: $false ?? this.$false,
  $true: $true ?? this.$true,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalOutputs &&
          $false == other.$false &&
          $true == other.$true; } 
@override int get hashCode { return Object.hash($false, $true); } 
@override String toString() { return 'AigConfigUpdateGatewayDynamicRouteResponseRouteElementsConditionalOutputs(\$false: ${$false}, \$true: ${$true})'; } 
 }
