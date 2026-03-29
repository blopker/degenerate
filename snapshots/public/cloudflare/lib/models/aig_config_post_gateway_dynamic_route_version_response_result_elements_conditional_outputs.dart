// GENERATED CODE - DO NOT MODIFY BY HAND

import 'aig_config_post_gateway_dynamic_route_version_response_result_elements_conditional_outputs_false.dart';import 'aig_config_post_gateway_dynamic_route_version_response_result_elements_conditional_outputs_true.dart';final class AigConfigPostGatewayDynamicRouteVersionResponseResultElementsConditionalOutputs {const AigConfigPostGatewayDynamicRouteVersionResponseResultElementsConditionalOutputs({required this.$false, required this.$true, });

factory AigConfigPostGatewayDynamicRouteVersionResponseResultElementsConditionalOutputs.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteVersionResponseResultElementsConditionalOutputs(
  $false: AigConfigPostGatewayDynamicRouteVersionResponseResultElementsConditionalOutputsFalse.fromJson(json['false'] as Map<String, dynamic>),
  $true: AigConfigPostGatewayDynamicRouteVersionResponseResultElementsConditionalOutputsTrue.fromJson(json['true'] as Map<String, dynamic>),
); }

final AigConfigPostGatewayDynamicRouteVersionResponseResultElementsConditionalOutputsFalse $false;

final AigConfigPostGatewayDynamicRouteVersionResponseResultElementsConditionalOutputsTrue $true;

Map<String, dynamic> toJson() { return {
  'false': $false.toJson(),
  'true': $true.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('false') &&
      json.containsKey('true'); } 
AigConfigPostGatewayDynamicRouteVersionResponseResultElementsConditionalOutputs copyWith({AigConfigPostGatewayDynamicRouteVersionResponseResultElementsConditionalOutputsFalse? $false, AigConfigPostGatewayDynamicRouteVersionResponseResultElementsConditionalOutputsTrue? $true, }) { return AigConfigPostGatewayDynamicRouteVersionResponseResultElementsConditionalOutputs(
  $false: $false ?? this.$false,
  $true: $true ?? this.$true,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteVersionResponseResultElementsConditionalOutputs &&
          $false == other.$false &&
          $true == other.$true; } 
@override int get hashCode { return Object.hash($false, $true); } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteVersionResponseResultElementsConditionalOutputs(\$false: ${$false}, \$true: ${$true})'; } 
 }
