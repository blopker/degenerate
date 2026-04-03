// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_dns_timeseries_group_by_query_type_response_result_meta.dart';import 'radar_get_dns_timeseries_group_by_query_type_response_result_serie0.dart';@immutable final class RadarGetDnsTimeseriesGroupByQueryTypeResponseResult {const RadarGetDnsTimeseriesGroupByQueryTypeResponseResult({required this.meta, required this.serie0, });

factory RadarGetDnsTimeseriesGroupByQueryTypeResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetDnsTimeseriesGroupByQueryTypeResponseResult(
  meta: RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  serie0: RadarGetDnsTimeseriesGroupByQueryTypeResponseResultSerie0.fromJson(json['serie_0'] as Map<String, dynamic>),
); }

/// Metadata for the results.
final RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMeta meta;

final RadarGetDnsTimeseriesGroupByQueryTypeResponseResultSerie0 serie0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'serie_0': serie0.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('serie_0'); } 
RadarGetDnsTimeseriesGroupByQueryTypeResponseResult copyWith({RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMeta? meta, RadarGetDnsTimeseriesGroupByQueryTypeResponseResultSerie0? serie0, }) { return RadarGetDnsTimeseriesGroupByQueryTypeResponseResult(
  meta: meta ?? this.meta,
  serie0: serie0 ?? this.serie0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsTimeseriesGroupByQueryTypeResponseResult &&
          meta == other.meta &&
          serie0 == other.serie0; } 
@override int get hashCode { return Object.hash(meta, serie0); } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupByQueryTypeResponseResult(meta: $meta, serie0: $serie0)'; } 
 }
