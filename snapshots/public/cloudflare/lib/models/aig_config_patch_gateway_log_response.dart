// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigPatchGatewayLogResponse {const AigConfigPatchGatewayLogResponse({required this.result, required this.success, });

factory AigConfigPatchGatewayLogResponse.fromJson(Map<String, dynamic> json) { return AigConfigPatchGatewayLogResponse(
  result: json['result'] as Map<String, dynamic>,
  success: json['success'] as bool,
); }

final Map<String,dynamic> result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result,
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
AigConfigPatchGatewayLogResponse copyWith({Map<String,dynamic>? result, bool? success, }) { return AigConfigPatchGatewayLogResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigPatchGatewayLogResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'AigConfigPatchGatewayLogResponse(result: $result, success: $success)'; } 
 }
