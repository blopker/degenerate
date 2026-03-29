// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_dns_summary_by_protocol_response_result_meta.dart';import 'radar_get_dns_summary_by_protocol_response_result_summary0.dart';final class RadarGetDnsSummaryByProtocolResponseResult {const RadarGetDnsSummaryByProtocolResponseResult({required this.meta, required this.summary0, });

factory RadarGetDnsSummaryByProtocolResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetDnsSummaryByProtocolResponseResult(
  meta: RadarGetDnsSummaryByProtocolResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  summary0: RadarGetDnsSummaryByProtocolResponseResultSummary0.fromJson(json['summary_0'] as Map<String, dynamic>),
); }

/// Metadata for the results.
final RadarGetDnsSummaryByProtocolResponseResultMeta meta;

final RadarGetDnsSummaryByProtocolResponseResultSummary0 summary0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'summary_0': summary0.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('summary_0'); } 
RadarGetDnsSummaryByProtocolResponseResult copyWith({RadarGetDnsSummaryByProtocolResponseResultMeta? meta, RadarGetDnsSummaryByProtocolResponseResultSummary0? summary0, }) { return RadarGetDnsSummaryByProtocolResponseResult(
  meta: meta ?? this.meta,
  summary0: summary0 ?? this.summary0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsSummaryByProtocolResponseResult &&
          meta == other.meta &&
          summary0 == other.summary0; } 
@override int get hashCode { return Object.hash(meta, summary0); } 
@override String toString() { return 'RadarGetDnsSummaryByProtocolResponseResult(meta: $meta, summary0: $summary0)'; } 
 }
