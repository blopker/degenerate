// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_get_gateway_dynamic_route_version_response_result.dart';@immutable final class AigConfigGetGatewayDynamicRouteVersionResponse {const AigConfigGetGatewayDynamicRouteVersionResponse({required this.result, required this.success, });

factory AigConfigGetGatewayDynamicRouteVersionResponse.fromJson(Map<String, dynamic> json) { return AigConfigGetGatewayDynamicRouteVersionResponse(
  result: AigConfigGetGatewayDynamicRouteVersionResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final AigConfigGetGatewayDynamicRouteVersionResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
AigConfigGetGatewayDynamicRouteVersionResponse copyWith({AigConfigGetGatewayDynamicRouteVersionResponseResult? result, bool? success, }) { return AigConfigGetGatewayDynamicRouteVersionResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigGetGatewayDynamicRouteVersionResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'AigConfigGetGatewayDynamicRouteVersionResponse(result: $result, success: $success)'; } 
 }
