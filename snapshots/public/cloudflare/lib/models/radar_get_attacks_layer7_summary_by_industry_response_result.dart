// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_attacks_layer7_summary_by_industry_response_result_meta.dart';final class RadarGetAttacksLayer7SummaryByIndustryResponseResult {const RadarGetAttacksLayer7SummaryByIndustryResponseResult({required this.meta, required this.summary0, });

factory RadarGetAttacksLayer7SummaryByIndustryResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer7SummaryByIndustryResponseResult(
  meta: RadarGetAttacksLayer7SummaryByIndustryResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  summary0: (json['summary_0'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)),
); }

/// Metadata for the results.
final RadarGetAttacksLayer7SummaryByIndustryResponseResultMeta meta;

final Map<String,String> summary0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'summary_0': summary0,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('summary_0'); } 
RadarGetAttacksLayer7SummaryByIndustryResponseResult copyWith({RadarGetAttacksLayer7SummaryByIndustryResponseResultMeta? meta, Map<String,String>? summary0, }) { return RadarGetAttacksLayer7SummaryByIndustryResponseResult(
  meta: meta ?? this.meta,
  summary0: summary0 ?? this.summary0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer7SummaryByIndustryResponseResult &&
          meta == other.meta &&
          summary0 == other.summary0; } 
@override int get hashCode { return Object.hash(meta, summary0); } 
@override String toString() { return 'RadarGetAttacksLayer7SummaryByIndustryResponseResult(meta: $meta, summary0: $summary0)'; } 
 }
