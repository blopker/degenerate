// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_http_timeseries_group_by_http_protocol_response_result_meta.dart';import 'radar_get_http_timeseries_group_by_http_protocol_response_result_serie0.dart';final class RadarGetHttpTimeseriesGroupByHttpProtocolResponseResult {const RadarGetHttpTimeseriesGroupByHttpProtocolResponseResult({required this.meta, required this.serie0, });

factory RadarGetHttpTimeseriesGroupByHttpProtocolResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetHttpTimeseriesGroupByHttpProtocolResponseResult(
  meta: RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  serie0: RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultSerie0.fromJson(json['serie_0'] as Map<String, dynamic>),
); }

/// Metadata for the results.
final RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMeta meta;

final RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultSerie0 serie0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'serie_0': serie0.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('serie_0'); } 
RadarGetHttpTimeseriesGroupByHttpProtocolResponseResult copyWith({RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMeta? meta, RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultSerie0? serie0, }) { return RadarGetHttpTimeseriesGroupByHttpProtocolResponseResult(
  meta: meta ?? this.meta,
  serie0: serie0 ?? this.serie0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTimeseriesGroupByHttpProtocolResponseResult &&
          meta == other.meta &&
          serie0 == other.serie0; } 
@override int get hashCode { return Object.hash(meta, serie0); } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByHttpProtocolResponseResult(meta: $meta, serie0: $serie0)'; } 
 }
