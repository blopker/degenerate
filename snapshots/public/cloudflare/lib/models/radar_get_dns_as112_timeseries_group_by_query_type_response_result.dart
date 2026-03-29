// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_dns_as112_timeseries_group_by_query_type_response_result_meta.dart';import 'radar_get_dns_as112_timeseries_group_by_query_type_response_result_serie0.dart';final class RadarGetDnsAs112TimeseriesGroupByQueryTypeResponseResult {const RadarGetDnsAs112TimeseriesGroupByQueryTypeResponseResult({required this.meta, required this.serie0, });

factory RadarGetDnsAs112TimeseriesGroupByQueryTypeResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetDnsAs112TimeseriesGroupByQueryTypeResponseResult(
  meta: RadarGetDnsAs112TimeseriesGroupByQueryTypeResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  serie0: RadarGetDnsAs112TimeseriesGroupByQueryTypeResponseResultSerie0.fromJson(json['serie_0'] as Map<String, dynamic>),
); }

/// Metadata for the results.
final RadarGetDnsAs112TimeseriesGroupByQueryTypeResponseResultMeta meta;

final RadarGetDnsAs112TimeseriesGroupByQueryTypeResponseResultSerie0 serie0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'serie_0': serie0.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('serie_0'); } 
RadarGetDnsAs112TimeseriesGroupByQueryTypeResponseResult copyWith({RadarGetDnsAs112TimeseriesGroupByQueryTypeResponseResultMeta? meta, RadarGetDnsAs112TimeseriesGroupByQueryTypeResponseResultSerie0? serie0, }) { return RadarGetDnsAs112TimeseriesGroupByQueryTypeResponseResult(
  meta: meta ?? this.meta,
  serie0: serie0 ?? this.serie0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsAs112TimeseriesGroupByQueryTypeResponseResult &&
          meta == other.meta &&
          serie0 == other.serie0; } 
@override int get hashCode { return Object.hash(meta, serie0); } 
@override String toString() { return 'RadarGetDnsAs112TimeseriesGroupByQueryTypeResponseResult(meta: $meta, serie0: $serie0)'; } 
 }
