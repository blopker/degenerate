// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_ai_bots_summary_response_result_meta.dart';final class RadarGetAiBotsSummaryResponseResult {const RadarGetAiBotsSummaryResponseResult({required this.meta, required this.summary0, });

factory RadarGetAiBotsSummaryResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetAiBotsSummaryResponseResult(
  meta: RadarGetAiBotsSummaryResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  summary0: (json['summary_0'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)),
); }

/// Metadata for the results.
final RadarGetAiBotsSummaryResponseResultMeta meta;

final Map<String,String> summary0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'summary_0': summary0,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('summary_0'); } 
RadarGetAiBotsSummaryResponseResult copyWith({RadarGetAiBotsSummaryResponseResultMeta? meta, Map<String,String>? summary0, }) { return RadarGetAiBotsSummaryResponseResult(
  meta: meta ?? this.meta,
  summary0: summary0 ?? this.summary0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAiBotsSummaryResponseResult &&
          meta == other.meta &&
          summary0 == other.summary0; } 
@override int get hashCode { return Object.hash(meta, summary0); } 
@override String toString() { return 'RadarGetAiBotsSummaryResponseResult(meta: $meta, summary0: $summary0)'; } 
 }
