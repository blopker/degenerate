// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_update_gateway_dynamic_route_response_route_elements_rate_outputs_fallback.dart';import 'aig_config_update_gateway_dynamic_route_response_route_elements_rate_outputs_success.dart';@immutable final class AigConfigUpdateGatewayDynamicRouteResponseRouteElementsRateOutputs {const AigConfigUpdateGatewayDynamicRouteResponseRouteElementsRateOutputs({required this.fallback, required this.success, });

factory AigConfigUpdateGatewayDynamicRouteResponseRouteElementsRateOutputs.fromJson(Map<String, dynamic> json) { return AigConfigUpdateGatewayDynamicRouteResponseRouteElementsRateOutputs(
  fallback: AigConfigUpdateGatewayDynamicRouteResponseRouteElementsRateOutputsFallback.fromJson(json['fallback'] as Map<String, dynamic>),
  success: AigConfigUpdateGatewayDynamicRouteResponseRouteElementsRateOutputsSuccess.fromJson(json['success'] as Map<String, dynamic>),
); }

final AigConfigUpdateGatewayDynamicRouteResponseRouteElementsRateOutputsFallback fallback;

final AigConfigUpdateGatewayDynamicRouteResponseRouteElementsRateOutputsSuccess success;

Map<String, dynamic> toJson() { return {
  'fallback': fallback.toJson(),
  'success': success.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('fallback') &&
      json.containsKey('success'); } 
AigConfigUpdateGatewayDynamicRouteResponseRouteElementsRateOutputs copyWith({AigConfigUpdateGatewayDynamicRouteResponseRouteElementsRateOutputsFallback? fallback, AigConfigUpdateGatewayDynamicRouteResponseRouteElementsRateOutputsSuccess? success, }) { return AigConfigUpdateGatewayDynamicRouteResponseRouteElementsRateOutputs(
  fallback: fallback ?? this.fallback,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigUpdateGatewayDynamicRouteResponseRouteElementsRateOutputs &&
          fallback == other.fallback &&
          success == other.success; } 
@override int get hashCode { return Object.hash(fallback, success); } 
@override String toString() { return 'AigConfigUpdateGatewayDynamicRouteResponseRouteElementsRateOutputs(fallback: $fallback, success: $success)'; } 
 }
