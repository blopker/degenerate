// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_certificate_authorities_response_result.dart';final class RadarGetCertificateAuthoritiesResponse {const RadarGetCertificateAuthoritiesResponse({required this.result, required this.success, });

factory RadarGetCertificateAuthoritiesResponse.fromJson(Map<String, dynamic> json) { return RadarGetCertificateAuthoritiesResponse(
  result: RadarGetCertificateAuthoritiesResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetCertificateAuthoritiesResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetCertificateAuthoritiesResponse copyWith({RadarGetCertificateAuthoritiesResponseResult? result, bool? success, }) { return RadarGetCertificateAuthoritiesResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetCertificateAuthoritiesResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetCertificateAuthoritiesResponse(result: $result, success: $success)'; } 
 }
