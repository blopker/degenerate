// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_certificate_log_details_response_result_certificate_log.dart';final class RadarGetCertificateLogDetailsResponseResult {const RadarGetCertificateLogDetailsResponseResult({required this.certificateLog});

factory RadarGetCertificateLogDetailsResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetCertificateLogDetailsResponseResult(
  certificateLog: RadarGetCertificateLogDetailsResponseResultCertificateLog.fromJson(json['certificateLog'] as Map<String, dynamic>),
); }

final RadarGetCertificateLogDetailsResponseResultCertificateLog certificateLog;

Map<String, dynamic> toJson() { return {
  'certificateLog': certificateLog.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('certificateLog'); } 
RadarGetCertificateLogDetailsResponseResult copyWith({RadarGetCertificateLogDetailsResponseResultCertificateLog? certificateLog}) { return RadarGetCertificateLogDetailsResponseResult(
  certificateLog: certificateLog ?? this.certificateLog,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetCertificateLogDetailsResponseResult &&
          certificateLog == other.certificateLog; } 
@override int get hashCode { return certificateLog.hashCode; } 
@override String toString() { return 'RadarGetCertificateLogDetailsResponseResult(certificateLog: $certificateLog)'; } 
 }
