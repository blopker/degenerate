// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_dns_as112_timeseries_group_by_protocol_response_result_meta.dart';import 'radar_get_dns_as112_timeseries_group_by_protocol_response_result_serie0.dart';@immutable final class RadarGetDnsAs112TimeseriesGroupByProtocolResponseResult {const RadarGetDnsAs112TimeseriesGroupByProtocolResponseResult({required this.meta, required this.serie0, });

factory RadarGetDnsAs112TimeseriesGroupByProtocolResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetDnsAs112TimeseriesGroupByProtocolResponseResult(
  meta: RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  serie0: RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultSerie0.fromJson(json['serie_0'] as Map<String, dynamic>),
); }

/// Metadata for the results.
final RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMeta meta;

final RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultSerie0 serie0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'serie_0': serie0.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('serie_0'); } 
RadarGetDnsAs112TimeseriesGroupByProtocolResponseResult copyWith({RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMeta? meta, RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultSerie0? serie0, }) { return RadarGetDnsAs112TimeseriesGroupByProtocolResponseResult(
  meta: meta ?? this.meta,
  serie0: serie0 ?? this.serie0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsAs112TimeseriesGroupByProtocolResponseResult &&
          meta == other.meta &&
          serie0 == other.serie0; } 
@override int get hashCode { return Object.hash(meta, serie0); } 
@override String toString() { return 'RadarGetDnsAs112TimeseriesGroupByProtocolResponseResult(meta: $meta, serie0: $serie0)'; } 
 }
