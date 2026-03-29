// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_certificate_authorities_response_result_certificate_authorities.dart';final class RadarGetCertificateAuthoritiesResponseResult {const RadarGetCertificateAuthoritiesResponseResult({required this.certificateAuthorities});

factory RadarGetCertificateAuthoritiesResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetCertificateAuthoritiesResponseResult(
  certificateAuthorities: (json['certificateAuthorities'] as List<dynamic>).map((e) => RadarGetCertificateAuthoritiesResponseResultCertificateAuthorities.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<RadarGetCertificateAuthoritiesResponseResultCertificateAuthorities> certificateAuthorities;

Map<String, dynamic> toJson() { return {
  'certificateAuthorities': certificateAuthorities.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('certificateAuthorities'); } 
RadarGetCertificateAuthoritiesResponseResult copyWith({List<RadarGetCertificateAuthoritiesResponseResultCertificateAuthorities>? certificateAuthorities}) { return RadarGetCertificateAuthoritiesResponseResult(
  certificateAuthorities: certificateAuthorities ?? this.certificateAuthorities,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetCertificateAuthoritiesResponseResult &&
          listEquals(certificateAuthorities, other.certificateAuthorities); } 
@override int get hashCode { return Object.hashAll(certificateAuthorities).hashCode; } 
@override String toString() { return 'RadarGetCertificateAuthoritiesResponseResult(certificateAuthorities: $certificateAuthorities)'; } 
 }
