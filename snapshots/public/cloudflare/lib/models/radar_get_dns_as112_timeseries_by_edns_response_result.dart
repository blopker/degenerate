// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_dns_as112_timeseries_by_edns_response_result_meta.dart';import 'radar_get_dns_as112_timeseries_by_edns_response_result_summary0.dart';@immutable final class RadarGetDnsAs112TimeseriesByEdnsResponseResult {const RadarGetDnsAs112TimeseriesByEdnsResponseResult({required this.meta, required this.summary0, });

factory RadarGetDnsAs112TimeseriesByEdnsResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetDnsAs112TimeseriesByEdnsResponseResult(
  meta: RadarGetDnsAs112TimeseriesByEdnsResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  summary0: RadarGetDnsAs112TimeseriesByEdnsResponseResultSummary0.fromJson(json['summary_0'] as Map<String, dynamic>),
); }

/// Metadata for the results.
final RadarGetDnsAs112TimeseriesByEdnsResponseResultMeta meta;

final RadarGetDnsAs112TimeseriesByEdnsResponseResultSummary0 summary0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'summary_0': summary0.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('summary_0'); } 
RadarGetDnsAs112TimeseriesByEdnsResponseResult copyWith({RadarGetDnsAs112TimeseriesByEdnsResponseResultMeta? meta, RadarGetDnsAs112TimeseriesByEdnsResponseResultSummary0? summary0, }) { return RadarGetDnsAs112TimeseriesByEdnsResponseResult(
  meta: meta ?? this.meta,
  summary0: summary0 ?? this.summary0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsAs112TimeseriesByEdnsResponseResult &&
          meta == other.meta &&
          summary0 == other.summary0; } 
@override int get hashCode { return Object.hash(meta, summary0); } 
@override String toString() { return 'RadarGetDnsAs112TimeseriesByEdnsResponseResult(meta: $meta, summary0: $summary0)'; } 
 }
