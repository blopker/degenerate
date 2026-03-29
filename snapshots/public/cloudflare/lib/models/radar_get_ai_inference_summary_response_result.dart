// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_ai_inference_summary_response_result_meta.dart';final class RadarGetAiInferenceSummaryResponseResult {const RadarGetAiInferenceSummaryResponseResult({required this.meta, required this.summary0, });

factory RadarGetAiInferenceSummaryResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetAiInferenceSummaryResponseResult(
  meta: RadarGetAiInferenceSummaryResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  summary0: (json['summary_0'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)),
); }

/// Metadata for the results.
final RadarGetAiInferenceSummaryResponseResultMeta meta;

final Map<String,String> summary0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'summary_0': summary0,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('summary_0'); } 
RadarGetAiInferenceSummaryResponseResult copyWith({RadarGetAiInferenceSummaryResponseResultMeta? meta, Map<String,String>? summary0, }) { return RadarGetAiInferenceSummaryResponseResult(
  meta: meta ?? this.meta,
  summary0: summary0 ?? this.summary0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAiInferenceSummaryResponseResult &&
          meta == other.meta &&
          summary0 == other.summary0; } 
@override int get hashCode { return Object.hash(meta, summary0); } 
@override String toString() { return 'RadarGetAiInferenceSummaryResponseResult(meta: $meta, summary0: $summary0)'; } 
 }
