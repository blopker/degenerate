// GENERATED CODE - DO NOT MODIFY BY HAND

import 'aig_config_list_gateway_dynamic_routes_response_data.dart';final class AigConfigListGatewayDynamicRoutesResponse {const AigConfigListGatewayDynamicRoutesResponse({required this.data, required this.success, });

factory AigConfigListGatewayDynamicRoutesResponse.fromJson(Map<String, dynamic> json) { return AigConfigListGatewayDynamicRoutesResponse(
  data: AigConfigListGatewayDynamicRoutesResponseData.fromJson(json['data'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final AigConfigListGatewayDynamicRoutesResponseData data;

final bool success;

Map<String, dynamic> toJson() { return {
  'data': data.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('data') &&
      json.containsKey('success') && json['success'] is bool; } 
AigConfigListGatewayDynamicRoutesResponse copyWith({AigConfigListGatewayDynamicRoutesResponseData? data, bool? success, }) { return AigConfigListGatewayDynamicRoutesResponse(
  data: data ?? this.data,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigListGatewayDynamicRoutesResponse &&
          data == other.data &&
          success == other.success; } 
@override int get hashCode { return Object.hash(data, success); } 
@override String toString() { return 'AigConfigListGatewayDynamicRoutesResponse(data: $data, success: $success)'; } 
 }
