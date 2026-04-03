// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_email_security_top_tlds_by_spoof_response_result.dart';@immutable final class RadarGetEmailSecurityTopTldsBySpoofResponse {const RadarGetEmailSecurityTopTldsBySpoofResponse({required this.result, required this.success, });

factory RadarGetEmailSecurityTopTldsBySpoofResponse.fromJson(Map<String, dynamic> json) { return RadarGetEmailSecurityTopTldsBySpoofResponse(
  result: RadarGetEmailSecurityTopTldsBySpoofResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetEmailSecurityTopTldsBySpoofResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetEmailSecurityTopTldsBySpoofResponse copyWith({RadarGetEmailSecurityTopTldsBySpoofResponseResult? result, bool? success, }) { return RadarGetEmailSecurityTopTldsBySpoofResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailSecurityTopTldsBySpoofResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetEmailSecurityTopTldsBySpoofResponse(result: $result, success: $success)'; } 
 }
