// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_quality_index_summary_response_result_meta.dart';import 'radar_get_quality_index_summary_response_result_summary0.dart';@immutable final class RadarGetQualityIndexSummaryResponseResult {const RadarGetQualityIndexSummaryResponseResult({required this.meta, required this.summary0, });

factory RadarGetQualityIndexSummaryResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetQualityIndexSummaryResponseResult(
  meta: RadarGetQualityIndexSummaryResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  summary0: RadarGetQualityIndexSummaryResponseResultSummary0.fromJson(json['summary_0'] as Map<String, dynamic>),
); }

/// Metadata for the results.
final RadarGetQualityIndexSummaryResponseResultMeta meta;

final RadarGetQualityIndexSummaryResponseResultSummary0 summary0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'summary_0': summary0.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('summary_0'); } 
RadarGetQualityIndexSummaryResponseResult copyWith({RadarGetQualityIndexSummaryResponseResultMeta? meta, RadarGetQualityIndexSummaryResponseResultSummary0? summary0, }) { return RadarGetQualityIndexSummaryResponseResult(
  meta: meta ?? this.meta,
  summary0: summary0 ?? this.summary0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetQualityIndexSummaryResponseResult &&
          meta == other.meta &&
          summary0 == other.summary0; } 
@override int get hashCode { return Object.hash(meta, summary0); } 
@override String toString() { return 'RadarGetQualityIndexSummaryResponseResult(meta: $meta, summary0: $summary0)'; } 
 }
