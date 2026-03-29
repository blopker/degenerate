// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_quality_speed_summary_response_result_meta.dart';import 'radar_get_quality_speed_summary_response_result_summary0.dart';final class RadarGetQualitySpeedSummaryResponseResult {const RadarGetQualitySpeedSummaryResponseResult({required this.meta, required this.summary0, });

factory RadarGetQualitySpeedSummaryResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetQualitySpeedSummaryResponseResult(
  meta: RadarGetQualitySpeedSummaryResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  summary0: RadarGetQualitySpeedSummaryResponseResultSummary0.fromJson(json['summary_0'] as Map<String, dynamic>),
); }

/// Metadata for the results.
final RadarGetQualitySpeedSummaryResponseResultMeta meta;

final RadarGetQualitySpeedSummaryResponseResultSummary0 summary0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'summary_0': summary0.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('summary_0'); } 
RadarGetQualitySpeedSummaryResponseResult copyWith({RadarGetQualitySpeedSummaryResponseResultMeta? meta, RadarGetQualitySpeedSummaryResponseResultSummary0? summary0, }) { return RadarGetQualitySpeedSummaryResponseResult(
  meta: meta ?? this.meta,
  summary0: summary0 ?? this.summary0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetQualitySpeedSummaryResponseResult &&
          meta == other.meta &&
          summary0 == other.summary0; } 
@override int get hashCode { return Object.hash(meta, summary0); } 
@override String toString() { return 'RadarGetQualitySpeedSummaryResponseResult(meta: $meta, summary0: $summary0)'; } 
 }
