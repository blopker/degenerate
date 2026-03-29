// GENERATED CODE - DO NOT MODIFY BY HAND

import 'aig_config_delete_gateway_response_result.dart';final class AigConfigDeleteGatewayResponse {const AigConfigDeleteGatewayResponse({required this.result, required this.success, });

factory AigConfigDeleteGatewayResponse.fromJson(Map<String, dynamic> json) { return AigConfigDeleteGatewayResponse(
  result: AigConfigDeleteGatewayResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final AigConfigDeleteGatewayResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
AigConfigDeleteGatewayResponse copyWith({AigConfigDeleteGatewayResponseResult? result, bool? success, }) { return AigConfigDeleteGatewayResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigDeleteGatewayResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'AigConfigDeleteGatewayResponse(result: $result, success: $success)'; } 
 }
