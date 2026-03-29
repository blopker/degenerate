// GENERATED CODE - DO NOT MODIFY BY HAND

import 'aig_config_list_gateway_dynamic_routes_response_data_routes_elements_conditional_outputs_false.dart';import 'aig_config_list_gateway_dynamic_routes_response_data_routes_elements_conditional_outputs_true.dart';final class AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalOutputs {const AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalOutputs({required this.$false, required this.$true, });

factory AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalOutputs.fromJson(Map<String, dynamic> json) { return AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalOutputs(
  $false: AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalOutputsFalse.fromJson(json['false'] as Map<String, dynamic>),
  $true: AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalOutputsTrue.fromJson(json['true'] as Map<String, dynamic>),
); }

final AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalOutputsFalse $false;

final AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalOutputsTrue $true;

Map<String, dynamic> toJson() { return {
  'false': $false.toJson(),
  'true': $true.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('false') &&
      json.containsKey('true'); } 
AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalOutputs copyWith({AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalOutputsFalse? $false, AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalOutputsTrue? $true, }) { return AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalOutputs(
  $false: $false ?? this.$false,
  $true: $true ?? this.$true,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalOutputs &&
          $false == other.$false &&
          $true == other.$true; } 
@override int get hashCode { return Object.hash($false, $true); } 
@override String toString() { return 'AigConfigListGatewayDynamicRoutesResponseDataRoutesElementsConditionalOutputs(\$false: ${$false}, \$true: ${$true})'; } 
 }
