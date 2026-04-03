// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_email_security_summary_by_spf_response_result_meta.dart';import 'radar_get_email_security_summary_by_spf_response_result_summary0.dart';@immutable final class RadarGetEmailSecuritySummaryBySpfResponseResult {const RadarGetEmailSecuritySummaryBySpfResponseResult({required this.meta, required this.summary0, });

factory RadarGetEmailSecuritySummaryBySpfResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetEmailSecuritySummaryBySpfResponseResult(
  meta: RadarGetEmailSecuritySummaryBySpfResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  summary0: RadarGetEmailSecuritySummaryBySpfResponseResultSummary0.fromJson(json['summary_0'] as Map<String, dynamic>),
); }

/// Metadata for the results.
final RadarGetEmailSecuritySummaryBySpfResponseResultMeta meta;

final RadarGetEmailSecuritySummaryBySpfResponseResultSummary0 summary0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'summary_0': summary0.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('summary_0'); } 
RadarGetEmailSecuritySummaryBySpfResponseResult copyWith({RadarGetEmailSecuritySummaryBySpfResponseResultMeta? meta, RadarGetEmailSecuritySummaryBySpfResponseResultSummary0? summary0, }) { return RadarGetEmailSecuritySummaryBySpfResponseResult(
  meta: meta ?? this.meta,
  summary0: summary0 ?? this.summary0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailSecuritySummaryBySpfResponseResult &&
          meta == other.meta &&
          summary0 == other.summary0; } 
@override int get hashCode { return Object.hash(meta, summary0); } 
@override String toString() { return 'RadarGetEmailSecuritySummaryBySpfResponseResult(meta: $meta, summary0: $summary0)'; } 
 }
