// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_dns_as112_timeseries_by_query_type_response_result_meta.dart';final class RadarGetDnsAs112TimeseriesByQueryTypeResponseResult {const RadarGetDnsAs112TimeseriesByQueryTypeResponseResult({required this.meta, required this.summary0, });

factory RadarGetDnsAs112TimeseriesByQueryTypeResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetDnsAs112TimeseriesByQueryTypeResponseResult(
  meta: RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  summary0: (json['summary_0'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)),
); }

/// Metadata for the results.
final RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMeta meta;

final Map<String,String> summary0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'summary_0': summary0,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('summary_0'); } 
RadarGetDnsAs112TimeseriesByQueryTypeResponseResult copyWith({RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMeta? meta, Map<String,String>? summary0, }) { return RadarGetDnsAs112TimeseriesByQueryTypeResponseResult(
  meta: meta ?? this.meta,
  summary0: summary0 ?? this.summary0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsAs112TimeseriesByQueryTypeResponseResult &&
          meta == other.meta &&
          summary0 == other.summary0; } 
@override int get hashCode { return Object.hash(meta, summary0); } 
@override String toString() { return 'RadarGetDnsAs112TimeseriesByQueryTypeResponseResult(meta: $meta, summary0: $summary0)'; } 
 }
