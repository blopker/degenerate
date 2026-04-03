// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_certificate_authority_details_response_result.dart';@immutable final class RadarGetCertificateAuthorityDetailsResponse {const RadarGetCertificateAuthorityDetailsResponse({required this.result, required this.success, });

factory RadarGetCertificateAuthorityDetailsResponse.fromJson(Map<String, dynamic> json) { return RadarGetCertificateAuthorityDetailsResponse(
  result: RadarGetCertificateAuthorityDetailsResponseResult.fromJson(json['result'] as Map<String, dynamic>),
  success: json['success'] as bool,
); }

final RadarGetCertificateAuthorityDetailsResponseResult result;

final bool success;

Map<String, dynamic> toJson() { return {
  'result': result.toJson(),
  'success': success,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('result') &&
      json.containsKey('success') && json['success'] is bool; } 
RadarGetCertificateAuthorityDetailsResponse copyWith({RadarGetCertificateAuthorityDetailsResponseResult? result, bool? success, }) { return RadarGetCertificateAuthorityDetailsResponse(
  result: result ?? this.result,
  success: success ?? this.success,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetCertificateAuthorityDetailsResponse &&
          result == other.result &&
          success == other.success; } 
@override int get hashCode { return Object.hash(result, success); } 
@override String toString() { return 'RadarGetCertificateAuthorityDetailsResponse(result: $result, success: $success)'; } 
 }
