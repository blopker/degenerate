// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_http_summary_by_ip_version_response_result_meta.dart';import 'radar_get_http_summary_by_ip_version_response_result_summary0.dart';final class RadarGetHttpSummaryByIpVersionResponseResult {const RadarGetHttpSummaryByIpVersionResponseResult({required this.meta, required this.summary0, });

factory RadarGetHttpSummaryByIpVersionResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetHttpSummaryByIpVersionResponseResult(
  meta: RadarGetHttpSummaryByIpVersionResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  summary0: RadarGetHttpSummaryByIpVersionResponseResultSummary0.fromJson(json['summary_0'] as Map<String, dynamic>),
); }

/// Metadata for the results.
final RadarGetHttpSummaryByIpVersionResponseResultMeta meta;

final RadarGetHttpSummaryByIpVersionResponseResultSummary0 summary0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'summary_0': summary0.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('summary_0'); } 
RadarGetHttpSummaryByIpVersionResponseResult copyWith({RadarGetHttpSummaryByIpVersionResponseResultMeta? meta, RadarGetHttpSummaryByIpVersionResponseResultSummary0? summary0, }) { return RadarGetHttpSummaryByIpVersionResponseResult(
  meta: meta ?? this.meta,
  summary0: summary0 ?? this.summary0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpSummaryByIpVersionResponseResult &&
          meta == other.meta &&
          summary0 == other.summary0; } 
@override int get hashCode { return Object.hash(meta, summary0); } 
@override String toString() { return 'RadarGetHttpSummaryByIpVersionResponseResult(meta: $meta, summary0: $summary0)'; } 
 }
