// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_get_gateway_dynamic_route_response_result_elements_conditional_outputs_false.dart';import 'aig_config_get_gateway_dynamic_route_response_result_elements_conditional_outputs_true.dart';@immutable final class AigConfigGetGatewayDynamicRouteResponseResultElementsConditionalOutputs {const AigConfigGetGatewayDynamicRouteResponseResultElementsConditionalOutputs({required this.$false, required this.$true, });

factory AigConfigGetGatewayDynamicRouteResponseResultElementsConditionalOutputs.fromJson(Map<String, dynamic> json) { return AigConfigGetGatewayDynamicRouteResponseResultElementsConditionalOutputs(
  $false: AigConfigGetGatewayDynamicRouteResponseResultElementsConditionalOutputsFalse.fromJson(json['false'] as Map<String, dynamic>),
  $true: AigConfigGetGatewayDynamicRouteResponseResultElementsConditionalOutputsTrue.fromJson(json['true'] as Map<String, dynamic>),
); }

final AigConfigGetGatewayDynamicRouteResponseResultElementsConditionalOutputsFalse $false;

final AigConfigGetGatewayDynamicRouteResponseResultElementsConditionalOutputsTrue $true;

Map<String, dynamic> toJson() { return {
  'false': $false.toJson(),
  'true': $true.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('false') &&
      json.containsKey('true'); } 
AigConfigGetGatewayDynamicRouteResponseResultElementsConditionalOutputs copyWith({AigConfigGetGatewayDynamicRouteResponseResultElementsConditionalOutputsFalse? $false, AigConfigGetGatewayDynamicRouteResponseResultElementsConditionalOutputsTrue? $true, }) { return AigConfigGetGatewayDynamicRouteResponseResultElementsConditionalOutputs(
  $false: $false ?? this.$false,
  $true: $true ?? this.$true,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigGetGatewayDynamicRouteResponseResultElementsConditionalOutputs &&
          $false == other.$false &&
          $true == other.$true; } 
@override int get hashCode { return Object.hash($false, $true); } 
@override String toString() { return 'AigConfigGetGatewayDynamicRouteResponseResultElementsConditionalOutputs(\$false: ${$false}, \$true: ${$true})'; } 
 }
