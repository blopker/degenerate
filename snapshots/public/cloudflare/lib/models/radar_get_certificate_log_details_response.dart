// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_certificate_log_details_response_result.dart';@immutable final class RadarGetCertificateLogDetailsResponse {const RadarGetCertificateLogDetailsResponse({required this.result, required this.success, });

factory RadarGetCertificateLogDetailsResponse.fromJson(Map<String, dynamic> json) { return RadarGetCertificateLogDetailsResponse(
  result: RadarGetCertificateLogDetailsResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetCertificateLogDetailsResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetCertificateLogDetailsResponse copyWith({RadarGetCertificateLogDetailsResponseResult? result, bool? success, }) { return RadarGetCertificateLogDetailsResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetCertificateLogDetailsResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetCertificateLogDetailsResponse(result: $result, success: $success)'; } 
 }
