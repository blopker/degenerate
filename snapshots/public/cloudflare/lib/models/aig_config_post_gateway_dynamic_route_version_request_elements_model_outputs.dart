// GENERATED CODE - DO NOT MODIFY BY HAND

import 'aig_config_post_gateway_dynamic_route_version_request_elements_model_outputs_fallback.dart';import 'aig_config_post_gateway_dynamic_route_version_request_elements_model_outputs_success.dart';final class AigConfigPostGatewayDynamicRouteVersionRequestElementsModelOutputs {const AigConfigPostGatewayDynamicRouteVersionRequestElementsModelOutputs({required this.fallback, required this.success, });

factory AigConfigPostGatewayDynamicRouteVersionRequestElementsModelOutputs.fromJson(Map<String, dynamic> json) { return AigConfigPostGatewayDynamicRouteVersionRequestElementsModelOutputs(
  fallback: AigConfigPostGatewayDynamicRouteVersionRequestElementsModelOutputsFallback.fromJson(json['fallback'] as Map<String, dynamic>),
  success: AigConfigPostGatewayDynamicRouteVersionRequestElementsModelOutputsSuccess.fromJson(json['success'] as Map<String, dynamic>),
); }

final AigConfigPostGatewayDynamicRouteVersionRequestElementsModelOutputsFallback fallback;

final AigConfigPostGatewayDynamicRouteVersionRequestElementsModelOutputsSuccess success;

Map<String, dynamic> toJson() { return {
  'fallback': fallback.toJson(),
  'success': success.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('fallback') &&
      json.containsKey('success'); } 
AigConfigPostGatewayDynamicRouteVersionRequestElementsModelOutputs copyWith({AigConfigPostGatewayDynamicRouteVersionRequestElementsModelOutputsFallback? fallback, AigConfigPostGatewayDynamicRouteVersionRequestElementsModelOutputsSuccess? success, }) { return AigConfigPostGatewayDynamicRouteVersionRequestElementsModelOutputs(
  fallback: fallback ?? this.fallback,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPostGatewayDynamicRouteVersionRequestElementsModelOutputs &&
          fallback == other.fallback &&
          success == other.success; } 
@override int get hashCode { return Object.hash(fallback, success); } 
@override String toString() { return 'AigConfigPostGatewayDynamicRouteVersionRequestElementsModelOutputs(fallback: $fallback, success: $success)'; } 
 }
