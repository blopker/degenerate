// GENERATED CODE - DO NOT MODIFY BY HAND

import 'aig_config_post_gateway_dynamic_route_request_elements_rate_outputs_fallback.dart';import 'aig_config_post_gateway_dynamic_route_request_elements_rate_outputs_success.dart';final class AigConfigPostGatewayDynamicRouteRequestElementsRateOutputs {const AigConfigPostGatewayDynamicRouteRequestElementsRateOutputs({required this.fallback, required this.success, });

factory AigConfigPostGatewayDynamicRouteRequestElementsRateOutputs.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteRequestElementsRateOutputs(
  fallback: AigConfigPostGatewayDynamicRouteRequestElementsRateOutputsFallback.fromJson(json['fallback'] as Map<String, dynamic>),
  success: AigConfigPostGatewayDynamicRouteRequestElementsRateOutputsSuccess.fromJson(json['success'] as Map<String, dynamic>),
); }

final AigConfigPostGatewayDynamicRouteRequestElementsRateOutputsFallback fallback;

final AigConfigPostGatewayDynamicRouteRequestElementsRateOutputsSuccess success;

Map<String, dynamic> toJson() { return {
  'fallback': fallback.toJson(),
  'success': success.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('fallback') &&
      json.containsKey('success'); } 
AigConfigPostGatewayDynamicRouteRequestElementsRateOutputs copyWith({AigConfigPostGatewayDynamicRouteRequestElementsRateOutputsFallback? fallback, AigConfigPostGatewayDynamicRouteRequestElementsRateOutputsSuccess? success, }) { return AigConfigPostGatewayDynamicRouteRequestElementsRateOutputs(
  fallback: fallback ?? this.fallback,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteRequestElementsRateOutputs &&
          fallback == other.fallback &&
          success == other.success; } 
@override int get hashCode { return Object.hash(fallback, success); } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteRequestElementsRateOutputs(fallback: $fallback, success: $success)'; } 
 }
