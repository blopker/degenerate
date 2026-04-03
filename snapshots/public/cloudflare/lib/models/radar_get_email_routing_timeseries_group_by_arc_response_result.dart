// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_email_routing_timeseries_group_by_arc_response_result_meta.dart';import 'radar_get_email_routing_timeseries_group_by_arc_response_result_serie0.dart';@immutable final class RadarGetEmailRoutingTimeseriesGroupByArcResponseResult {const RadarGetEmailRoutingTimeseriesGroupByArcResponseResult({required this.meta, required this.serie0, });

factory RadarGetEmailRoutingTimeseriesGroupByArcResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetEmailRoutingTimeseriesGroupByArcResponseResult(
  meta: RadarGetEmailRoutingTimeseriesGroupByArcResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  serie0: RadarGetEmailRoutingTimeseriesGroupByArcResponseResultSerie0.fromJson(json['serie_0'] as Map<String, dynamic>),
); }

/// Metadata for the results.
final RadarGetEmailRoutingTimeseriesGroupByArcResponseResultMeta meta;

final RadarGetEmailRoutingTimeseriesGroupByArcResponseResultSerie0 serie0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'serie_0': serie0.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('serie_0'); } 
RadarGetEmailRoutingTimeseriesGroupByArcResponseResult copyWith({RadarGetEmailRoutingTimeseriesGroupByArcResponseResultMeta? meta, RadarGetEmailRoutingTimeseriesGroupByArcResponseResultSerie0? serie0, }) { return RadarGetEmailRoutingTimeseriesGroupByArcResponseResult(
  meta: meta ?? this.meta,
  serie0: serie0 ?? this.serie0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailRoutingTimeseriesGroupByArcResponseResult &&
          meta == other.meta &&
          serie0 == other.serie0; } 
@override int get hashCode { return Object.hash(meta, serie0); } 
@override String toString() { return 'RadarGetEmailRoutingTimeseriesGroupByArcResponseResult(meta: $meta, serie0: $serie0)'; } 
 }
