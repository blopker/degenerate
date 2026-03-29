// GENERATED CODE - DO NOT MODIFY BY HAND

import 'aig_config_post_gateway_dynamic_route_version_request_elements_rate_outputs_fallback.dart';import 'aig_config_post_gateway_dynamic_route_version_request_elements_rate_outputs_success.dart';final class AigConfigPostGatewayDynamicRouteVersionRequestElementsRateOutputs {const AigConfigPostGatewayDynamicRouteVersionRequestElementsRateOutputs({required this.fallback, required this.success, });

factory AigConfigPostGatewayDynamicRouteVersionRequestElementsRateOutputs.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteVersionRequestElementsRateOutputs(
  fallback: AigConfigPostGatewayDynamicRouteVersionRequestElementsRateOutputsFallback.fromJson(json['fallback'] as Map<String, dynamic>),
  success: AigConfigPostGatewayDynamicRouteVersionRequestElementsRateOutputsSuccess.fromJson(json['success'] as Map<String, dynamic>),
); }

final AigConfigPostGatewayDynamicRouteVersionRequestElementsRateOutputsFallback fallback;

final AigConfigPostGatewayDynamicRouteVersionRequestElementsRateOutputsSuccess success;

Map<String, dynamic> toJson() { return {
  'fallback': fallback.toJson(),
  'success': success.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('fallback') &&
      json.containsKey('success'); } 
AigConfigPostGatewayDynamicRouteVersionRequestElementsRateOutputs copyWith({AigConfigPostGatewayDynamicRouteVersionRequestElementsRateOutputsFallback? fallback, AigConfigPostGatewayDynamicRouteVersionRequestElementsRateOutputsSuccess? success, }) { return AigConfigPostGatewayDynamicRouteVersionRequestElementsRateOutputs(
  fallback: fallback ?? this.fallback,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteVersionRequestElementsRateOutputs &&
          fallback == other.fallback &&
          success == other.success; } 
@override int get hashCode { return Object.hash(fallback, success); } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteVersionRequestElementsRateOutputs(fallback: $fallback, success: $success)'; } 
 }
