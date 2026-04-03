// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_dns_summary_by_dnssec_response_result_meta.dart';import 'radar_get_dns_summary_by_dnssec_response_result_summary0.dart';@immutable final class RadarGetDnsSummaryByDnssecResponseResult {const RadarGetDnsSummaryByDnssecResponseResult({required this.meta, required this.summary0, });

factory RadarGetDnsSummaryByDnssecResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetDnsSummaryByDnssecResponseResult(
  meta: RadarGetDnsSummaryByDnssecResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  summary0: RadarGetDnsSummaryByDnssecResponseResultSummary0.fromJson(json['summary_0'] as Map<String, dynamic>),
); }

/// Metadata for the results.
final RadarGetDnsSummaryByDnssecResponseResultMeta meta;

final RadarGetDnsSummaryByDnssecResponseResultSummary0 summary0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'summary_0': summary0.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('summary_0'); } 
RadarGetDnsSummaryByDnssecResponseResult copyWith({RadarGetDnsSummaryByDnssecResponseResultMeta? meta, RadarGetDnsSummaryByDnssecResponseResultSummary0? summary0, }) { return RadarGetDnsSummaryByDnssecResponseResult(
  meta: meta ?? this.meta,
  summary0: summary0 ?? this.summary0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsSummaryByDnssecResponseResult &&
          meta == other.meta &&
          summary0 == other.summary0; } 
@override int get hashCode { return Object.hash(meta, summary0); } 
@override String toString() { return 'RadarGetDnsSummaryByDnssecResponseResult(meta: $meta, summary0: $summary0)'; } 
 }
