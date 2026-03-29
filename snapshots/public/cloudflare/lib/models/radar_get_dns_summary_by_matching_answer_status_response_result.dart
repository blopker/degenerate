// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_dns_summary_by_matching_answer_status_response_result_meta.dart';import 'radar_get_dns_summary_by_matching_answer_status_response_result_summary0.dart';final class RadarGetDnsSummaryByMatchingAnswerStatusResponseResult {const RadarGetDnsSummaryByMatchingAnswerStatusResponseResult({required this.meta, required this.summary0, });

factory RadarGetDnsSummaryByMatchingAnswerStatusResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetDnsSummaryByMatchingAnswerStatusResponseResult(
  meta: RadarGetDnsSummaryByMatchingAnswerStatusResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  summary0: RadarGetDnsSummaryByMatchingAnswerStatusResponseResultSummary0.fromJson(json['summary_0'] as Map<String, dynamic>),
); }

/// Metadata for the results.
final RadarGetDnsSummaryByMatchingAnswerStatusResponseResultMeta meta;

final RadarGetDnsSummaryByMatchingAnswerStatusResponseResultSummary0 summary0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'summary_0': summary0.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('summary_0'); } 
RadarGetDnsSummaryByMatchingAnswerStatusResponseResult copyWith({RadarGetDnsSummaryByMatchingAnswerStatusResponseResultMeta? meta, RadarGetDnsSummaryByMatchingAnswerStatusResponseResultSummary0? summary0, }) { return RadarGetDnsSummaryByMatchingAnswerStatusResponseResult(
  meta: meta ?? this.meta,
  summary0: summary0 ?? this.summary0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsSummaryByMatchingAnswerStatusResponseResult &&
          meta == other.meta &&
          summary0 == other.summary0; } 
@override int get hashCode { return Object.hash(meta, summary0); } 
@override String toString() { return 'RadarGetDnsSummaryByMatchingAnswerStatusResponseResult(meta: $meta, summary0: $summary0)'; } 
 }
