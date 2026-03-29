// GENERATED CODE - DO NOT MODIFY BY HAND

import 'aig_config_update_gateway_dynamic_route_response400_route_elements_rate_outputs_fallback.dart';import 'aig_config_update_gateway_dynamic_route_response400_route_elements_rate_outputs_success.dart';final class AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsRateOutputs {const AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsRateOutputs({required this.fallback, required this.success, });

factory AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsRateOutputs.fromJson(Map<String, dynamic> json) { return AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsRateOutputs(
  fallback: AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsRateOutputsFallback.fromJson(json['fallback'] as Map<String, dynamic>),
  success: AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsRateOutputsSuccess.fromJson(json['success'] as Map<String, dynamic>),
); }

final AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsRateOutputsFallback fallback;

final AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsRateOutputsSuccess success;

Map<String, dynamic> toJson() { return {
  'fallback': fallback.toJson(),
  'success': success.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('fallback') &&
      json.containsKey('success'); } 
AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsRateOutputs copyWith({AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsRateOutputsFallback? fallback, AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsRateOutputsSuccess? success, }) { return AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsRateOutputs(
  fallback: fallback ?? this.fallback,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsRateOutputs &&
          fallback == other.fallback &&
          success == other.success; } 
@override int get hashCode { return Object.hash(fallback, success); } 
@override String toString() { return 'AigConfigUpdateGatewayDynamicRouteResponse400RouteElementsRateOutputs(fallback: $fallback, success: $success)'; } 
 }
