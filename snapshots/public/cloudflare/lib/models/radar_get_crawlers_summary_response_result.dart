// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_crawlers_summary_response_result_meta.dart';final class RadarGetCrawlersSummaryResponseResult {const RadarGetCrawlersSummaryResponseResult({required this.meta, required this.summary0, });

factory RadarGetCrawlersSummaryResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetCrawlersSummaryResponseResult(
  meta: RadarGetCrawlersSummaryResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  summary0: (json['summary_0'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)),
); }

/// Metadata for the results.
final RadarGetCrawlersSummaryResponseResultMeta meta;

final Map<String,String> summary0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'summary_0': summary0,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('summary_0'); } 
RadarGetCrawlersSummaryResponseResult copyWith({RadarGetCrawlersSummaryResponseResultMeta? meta, Map<String,String>? summary0, }) { return RadarGetCrawlersSummaryResponseResult(
  meta: meta ?? this.meta,
  summary0: summary0 ?? this.summary0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetCrawlersSummaryResponseResult &&
          meta == other.meta &&
          summary0 == other.summary0; } 
@override int get hashCode { return Object.hash(meta, summary0); } 
@override String toString() { return 'RadarGetCrawlersSummaryResponseResult(meta: $meta, summary0: $summary0)'; } 
 }
