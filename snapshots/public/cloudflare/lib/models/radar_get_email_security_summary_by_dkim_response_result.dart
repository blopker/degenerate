// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_email_security_summary_by_dkim_response_result_meta.dart';import 'radar_get_email_security_summary_by_dkim_response_result_summary0.dart';@immutable final class RadarGetEmailSecuritySummaryByDkimResponseResult {const RadarGetEmailSecuritySummaryByDkimResponseResult({required this.meta, required this.summary0, });

factory RadarGetEmailSecuritySummaryByDkimResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetEmailSecuritySummaryByDkimResponseResult(
  meta: RadarGetEmailSecuritySummaryByDkimResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  summary0: RadarGetEmailSecuritySummaryByDkimResponseResultSummary0.fromJson(json['summary_0'] as Map<String, dynamic>),
); }

/// Metadata for the results.
final RadarGetEmailSecuritySummaryByDkimResponseResultMeta meta;

final RadarGetEmailSecuritySummaryByDkimResponseResultSummary0 summary0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'summary_0': summary0.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('summary_0'); } 
RadarGetEmailSecuritySummaryByDkimResponseResult copyWith({RadarGetEmailSecuritySummaryByDkimResponseResultMeta? meta, RadarGetEmailSecuritySummaryByDkimResponseResultSummary0? summary0, }) { return RadarGetEmailSecuritySummaryByDkimResponseResult(
  meta: meta ?? this.meta,
  summary0: summary0 ?? this.summary0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailSecuritySummaryByDkimResponseResult &&
          meta == other.meta &&
          summary0 == other.summary0; } 
@override int get hashCode { return Object.hash(meta, summary0); } 
@override String toString() { return 'RadarGetEmailSecuritySummaryByDkimResponseResult(meta: $meta, summary0: $summary0)'; } 
 }
