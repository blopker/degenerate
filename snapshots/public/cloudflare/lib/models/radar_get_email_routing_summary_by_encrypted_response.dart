// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_email_routing_summary_by_encrypted_response_result.dart';final class RadarGetEmailRoutingSummaryByEncryptedResponse {const RadarGetEmailRoutingSummaryByEncryptedResponse({required this.result, required this.success, });

factory RadarGetEmailRoutingSummaryByEncryptedResponse.fromJson(Map<String, dynamic> json) { return RadarGetEmailRoutingSummaryByEncryptedResponse(
  result: RadarGetEmailRoutingSummaryByEncryptedResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetEmailRoutingSummaryByEncryptedResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetEmailRoutingSummaryByEncryptedResponse copyWith({RadarGetEmailRoutingSummaryByEncryptedResponseResult? result, bool? success, }) { return RadarGetEmailRoutingSummaryByEncryptedResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailRoutingSummaryByEncryptedResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetEmailRoutingSummaryByEncryptedResponse(result: $result, success: $success)'; } 
 }
