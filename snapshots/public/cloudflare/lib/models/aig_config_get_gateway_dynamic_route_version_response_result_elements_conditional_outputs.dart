// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_get_gateway_dynamic_route_version_response_result_elements_conditional_outputs_false.dart';import 'aig_config_get_gateway_dynamic_route_version_response_result_elements_conditional_outputs_true.dart';@immutable final class AigConfigGetGatewayDynamicRouteVersionResponseResultElementsConditionalOutputs {const AigConfigGetGatewayDynamicRouteVersionResponseResultElementsConditionalOutputs({required this.$false, required this.$true, });

factory AigConfigGetGatewayDynamicRouteVersionResponseResultElementsConditionalOutputs.fromJson(Map<String, dynamic> json) { return AigConfigGetGatewayDynamicRouteVersionResponseResultElementsConditionalOutputs(
  $false: AigConfigGetGatewayDynamicRouteVersionResponseResultElementsConditionalOutputsFalse.fromJson(json['false'] as Map<String, dynamic>),
  $true: AigConfigGetGatewayDynamicRouteVersionResponseResultElementsConditionalOutputsTrue.fromJson(json['true'] as Map<String, dynamic>),
); }

final AigConfigGetGatewayDynamicRouteVersionResponseResultElementsConditionalOutputsFalse $false;

final AigConfigGetGatewayDynamicRouteVersionResponseResultElementsConditionalOutputsTrue $true;

Map<String, dynamic> toJson() { return {
  'false': $false.toJson(),
  'true': $true.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('false') &&
      json.containsKey('true'); } 
AigConfigGetGatewayDynamicRouteVersionResponseResultElementsConditionalOutputs copyWith({AigConfigGetGatewayDynamicRouteVersionResponseResultElementsConditionalOutputsFalse? $false, AigConfigGetGatewayDynamicRouteVersionResponseResultElementsConditionalOutputsTrue? $true, }) { return AigConfigGetGatewayDynamicRouteVersionResponseResultElementsConditionalOutputs(
  $false: $false ?? this.$false,
  $true: $true ?? this.$true,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigGetGatewayDynamicRouteVersionResponseResultElementsConditionalOutputs &&
          $false == other.$false &&
          $true == other.$true; } 
@override int get hashCode { return Object.hash($false, $true); } 
@override String toString() { return 'AigConfigGetGatewayDynamicRouteVersionResponseResultElementsConditionalOutputs(\$false: ${$false}, \$true: ${$true})'; } 
 }
