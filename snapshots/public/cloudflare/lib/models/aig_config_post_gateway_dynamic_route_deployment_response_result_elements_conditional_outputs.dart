// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_post_gateway_dynamic_route_deployment_response_result_elements_conditional_outputs_false.dart';import 'aig_config_post_gateway_dynamic_route_deployment_response_result_elements_conditional_outputs_true.dart';@immutable final class AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsConditionalOutputs {const AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsConditionalOutputs({required this.$false, required this.$true, });

factory AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsConditionalOutputs.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsConditionalOutputs(
  $false: AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsConditionalOutputsFalse.fromJson(json['false'] as Map<String, dynamic>),
  $true: AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsConditionalOutputsTrue.fromJson(json['true'] as Map<String, dynamic>),
); }

final AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsConditionalOutputsFalse $false;

final AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsConditionalOutputsTrue $true;

Map<String, dynamic> toJson() { return {
  'false': $false.toJson(),
  'true': $true.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('false') &&
      json.containsKey('true'); } 
AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsConditionalOutputs copyWith({AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsConditionalOutputsFalse? $false, AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsConditionalOutputsTrue? $true, }) { return AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsConditionalOutputs(
  $false: $false ?? this.$false,
  $true: $true ?? this.$true,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsConditionalOutputs &&
          $false == other.$false &&
          $true == other.$true; } 
@override int get hashCode { return Object.hash($false, $true); } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteDeploymentResponseResultElementsConditionalOutputs(\$false: ${$false}, \$true: ${$true})'; } 
 }
