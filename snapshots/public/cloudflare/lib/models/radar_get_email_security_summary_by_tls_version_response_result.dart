// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_email_security_summary_by_tls_version_response_result_meta.dart';import 'radar_get_email_security_summary_by_tls_version_response_result_summary0.dart';@immutable final class RadarGetEmailSecuritySummaryByTlsVersionResponseResult {const RadarGetEmailSecuritySummaryByTlsVersionResponseResult({required this.meta, required this.summary0, });

factory RadarGetEmailSecuritySummaryByTlsVersionResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetEmailSecuritySummaryByTlsVersionResponseResult(
  meta: RadarGetEmailSecuritySummaryByTlsVersionResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  summary0: RadarGetEmailSecuritySummaryByTlsVersionResponseResultSummary0.fromJson(json['summary_0'] as Map<String, dynamic>),
); }

/// Metadata for the results.
final RadarGetEmailSecuritySummaryByTlsVersionResponseResultMeta meta;

final RadarGetEmailSecuritySummaryByTlsVersionResponseResultSummary0 summary0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'summary_0': summary0.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('summary_0'); } 
RadarGetEmailSecuritySummaryByTlsVersionResponseResult copyWith({RadarGetEmailSecuritySummaryByTlsVersionResponseResultMeta? meta, RadarGetEmailSecuritySummaryByTlsVersionResponseResultSummary0? summary0, }) { return RadarGetEmailSecuritySummaryByTlsVersionResponseResult(
  meta: meta ?? this.meta,
  summary0: summary0 ?? this.summary0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailSecuritySummaryByTlsVersionResponseResult &&
          meta == other.meta &&
          summary0 == other.summary0; } 
@override int get hashCode { return Object.hash(meta, summary0); } 
@override String toString() { return 'RadarGetEmailSecuritySummaryByTlsVersionResponseResult(meta: $meta, summary0: $summary0)'; } 
 }
