// GENERATED CODE - DO NOT MODIFY BY HAND

final class AigConfigGetGatewayUrlResponse {const AigConfigGetGatewayUrlResponse({required this.result, required this.success, });

factory AigConfigGetGatewayUrlResponse.fromJson(Map<String, dynamic> json) { return AigConfigGetGatewayUrlResponse(
  result: json['result'] as String,
  success: json['success'] as bool,
); }

final String result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result,
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') && json['result'] is String &&
      json.containsKey('success') && json['success'] is bool; } 
AigConfigGetGatewayUrlResponse copyWith({String? result, bool? success, }) { return AigConfigGetGatewayUrlResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AigConfigGetGatewayUrlResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'AigConfigGetGatewayUrlResponse(result: $result, success: $success)'; } 
 }
