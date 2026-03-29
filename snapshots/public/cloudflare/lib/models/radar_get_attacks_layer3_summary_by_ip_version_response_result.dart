// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_attacks_layer3_summary_by_ip_version_response_result_meta.dart';import 'radar_get_attacks_layer3_summary_by_ip_version_response_result_summary0.dart';final class RadarGetAttacksLayer3SummaryByIpVersionResponseResult {const RadarGetAttacksLayer3SummaryByIpVersionResponseResult({required this.meta, required this.summary0, });

factory RadarGetAttacksLayer3SummaryByIpVersionResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer3SummaryByIpVersionResponseResult(
  meta: RadarGetAttacksLayer3SummaryByIpVersionResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  summary0: RadarGetAttacksLayer3SummaryByIpVersionResponseResultSummary0.fromJson(json['summary_0'] as Map<String, dynamic>),
); }

/// Metadata for the results.
final RadarGetAttacksLayer3SummaryByIpVersionResponseResultMeta meta;

final RadarGetAttacksLayer3SummaryByIpVersionResponseResultSummary0 summary0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'summary_0': summary0.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('summary_0'); } 
RadarGetAttacksLayer3SummaryByIpVersionResponseResult copyWith({RadarGetAttacksLayer3SummaryByIpVersionResponseResultMeta? meta, RadarGetAttacksLayer3SummaryByIpVersionResponseResultSummary0? summary0, }) { return RadarGetAttacksLayer3SummaryByIpVersionResponseResult(
  meta: meta ?? this.meta,
  summary0: summary0 ?? this.summary0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer3SummaryByIpVersionResponseResult &&
          meta == other.meta &&
          summary0 == other.summary0; } 
@override int get hashCode { return Object.hash(meta, summary0); } 
@override String toString() { return 'RadarGetAttacksLayer3SummaryByIpVersionResponseResult(meta: $meta, summary0: $summary0)'; } 
 }
