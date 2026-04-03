// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_get_gateway_dynamic_route_response_result_elements_rate_outputs_fallback.dart';import 'aig_config_get_gateway_dynamic_route_response_result_elements_rate_outputs_success.dart';@immutable final class AigConfigGetGatewayDynamicRouteResponseResultElementsRateOutputs {const AigConfigGetGatewayDynamicRouteResponseResultElementsRateOutputs({required this.fallback, required this.success, });

factory AigConfigGetGatewayDynamicRouteResponseResultElementsRateOutputs.fromJson(Map<String, dynamic> json) { return AigConfigGetGatewayDynamicRouteResponseResultElementsRateOutputs(
  fallback: AigConfigGetGatewayDynamicRouteResponseResultElementsRateOutputsFallback.fromJson(json['fallback'] as Map<String, dynamic>),
  success: AigConfigGetGatewayDynamicRouteResponseResultElementsRateOutputsSuccess.fromJson(json['success'] as Map<String, dynamic>),
); }

final AigConfigGetGatewayDynamicRouteResponseResultElementsRateOutputsFallback fallback;

final AigConfigGetGatewayDynamicRouteResponseResultElementsRateOutputsSuccess success;

Map<String, dynamic> toJson() { return {
  'fallback': fallback.toJson(),
  'success': success.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('fallback') &&
      json.containsKey('success'); } 
AigConfigGetGatewayDynamicRouteResponseResultElementsRateOutputs copyWith({AigConfigGetGatewayDynamicRouteResponseResultElementsRateOutputsFallback? fallback, AigConfigGetGatewayDynamicRouteResponseResultElementsRateOutputsSuccess? success, }) { return AigConfigGetGatewayDynamicRouteResponseResultElementsRateOutputs(
  fallback: fallback ?? this.fallback,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigGetGatewayDynamicRouteResponseResultElementsRateOutputs &&
          fallback == other.fallback &&
          success == other.success; } 
@override int get hashCode { return Object.hash(fallback, success); } 
@override String toString() { return 'AigConfigGetGatewayDynamicRouteResponseResultElementsRateOutputs(fallback: $fallback, success: $success)'; } 
 }
