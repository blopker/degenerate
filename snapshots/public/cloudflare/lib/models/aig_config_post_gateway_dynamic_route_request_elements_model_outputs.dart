// GENERATED CODE - DO NOT MODIFY BY HAND

import 'aig_config_post_gateway_dynamic_route_request_elements_model_outputs_fallback.dart';import 'aig_config_post_gateway_dynamic_route_request_elements_model_outputs_success.dart';final class AigConfigPostGatewayDynamicRouteRequestElementsModelOutputs {const AigConfigPostGatewayDynamicRouteRequestElementsModelOutputs({required this.fallback, required this.success, });

factory AigConfigPostGatewayDynamicRouteRequestElementsModelOutputs.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteRequestElementsModelOutputs(
  fallback: AigConfigPostGatewayDynamicRouteRequestElementsModelOutputsFallback.fromJson(json['fallback'] as Map<String, dynamic>),
  success: AigConfigPostGatewayDynamicRouteRequestElementsModelOutputsSuccess.fromJson(json['success'] as Map<String, dynamic>),
); }

final AigConfigPostGatewayDynamicRouteRequestElementsModelOutputsFallback fallback;

final AigConfigPostGatewayDynamicRouteRequestElementsModelOutputsSuccess success;

Map<String, dynamic> toJson() { return {
  'fallback': fallback.toJson(),
  'success': success.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('fallback') &&
      json.containsKey('success'); } 
AigConfigPostGatewayDynamicRouteRequestElementsModelOutputs copyWith({AigConfigPostGatewayDynamicRouteRequestElementsModelOutputsFallback? fallback, AigConfigPostGatewayDynamicRouteRequestElementsModelOutputsSuccess? success, }) { return AigConfigPostGatewayDynamicRouteRequestElementsModelOutputs(
  fallback: fallback ?? this.fallback,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteRequestElementsModelOutputs &&
          fallback == other.fallback &&
          success == other.success; } 
@override int get hashCode { return Object.hash(fallback, success); } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteRequestElementsModelOutputs(fallback: $fallback, success: $success)'; } 
 }
