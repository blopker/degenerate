// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_post_gateway_dynamic_route_response_result_elements_model_outputs_fallback.dart';import 'aig_config_post_gateway_dynamic_route_response_result_elements_model_outputs_success.dart';@immutable final class AigConfigPostGatewayDynamicRouteResponseResultElementsModelOutputs {const AigConfigPostGatewayDynamicRouteResponseResultElementsModelOutputs({required this.fallback, required this.success, });

factory AigConfigPostGatewayDynamicRouteResponseResultElementsModelOutputs.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteResponseResultElementsModelOutputs(
  fallback: AigConfigPostGatewayDynamicRouteResponseResultElementsModelOutputsFallback.fromJson(json['fallback'] as Map<String, dynamic>),
  success: AigConfigPostGatewayDynamicRouteResponseResultElementsModelOutputsSuccess.fromJson(json['success'] as Map<String, dynamic>),
); }

final AigConfigPostGatewayDynamicRouteResponseResultElementsModelOutputsFallback fallback;

final AigConfigPostGatewayDynamicRouteResponseResultElementsModelOutputsSuccess success;

Map<String, dynamic> toJson() { return {
  'fallback': fallback.toJson(),
  'success': success.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('fallback') &&
      json.containsKey('success'); } 
AigConfigPostGatewayDynamicRouteResponseResultElementsModelOutputs copyWith({AigConfigPostGatewayDynamicRouteResponseResultElementsModelOutputsFallback? fallback, AigConfigPostGatewayDynamicRouteResponseResultElementsModelOutputsSuccess? success, }) { return AigConfigPostGatewayDynamicRouteResponseResultElementsModelOutputs(
  fallback: fallback ?? this.fallback,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteResponseResultElementsModelOutputs &&
          fallback == other.fallback &&
          success == other.success; } 
@override int get hashCode { return Object.hash(fallback, success); } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteResponseResultElementsModelOutputs(fallback: $fallback, success: $success)'; } 
 }
