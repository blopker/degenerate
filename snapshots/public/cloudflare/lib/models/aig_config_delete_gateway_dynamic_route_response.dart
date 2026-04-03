// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'aig_config_delete_gateway_dynamic_route_response_result.dart';@immutable final class AigConfigDeleteGatewayDynamicRouteResponse {const AigConfigDeleteGatewayDynamicRouteResponse({required this.result, required this.success, });

factory AigConfigDeleteGatewayDynamicRouteResponse.fromJson(Map<String, dynamic> json) { return AigConfigDeleteGatewayDynamicRouteResponse(
  result: AigConfigDeleteGatewayDynamicRouteResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final AigConfigDeleteGatewayDynamicRouteResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
AigConfigDeleteGatewayDynamicRouteResponse copyWith({AigConfigDeleteGatewayDynamicRouteResponseResult? result, bool? success, }) { return AigConfigDeleteGatewayDynamicRouteResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigDeleteGatewayDynamicRouteResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'AigConfigDeleteGatewayDynamicRouteResponse(result: $result, success: $success)'; } 
 }
