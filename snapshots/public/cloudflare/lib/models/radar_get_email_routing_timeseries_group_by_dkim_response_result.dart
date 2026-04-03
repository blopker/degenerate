// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_email_routing_timeseries_group_by_dkim_response_result_meta.dart';import 'radar_get_email_routing_timeseries_group_by_dkim_response_result_serie0.dart';@immutable final class RadarGetEmailRoutingTimeseriesGroupByDkimResponseResult {const RadarGetEmailRoutingTimeseriesGroupByDkimResponseResult({required this.meta, required this.serie0, });

factory RadarGetEmailRoutingTimeseriesGroupByDkimResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetEmailRoutingTimeseriesGroupByDkimResponseResult(
  meta: RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  serie0: RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultSerie0.fromJson(json['serie_0'] as Map<String, dynamic>),
); }

/// Metadata for the results.
final RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMeta meta;

final RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultSerie0 serie0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'serie_0': serie0.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('serie_0'); } 
RadarGetEmailRoutingTimeseriesGroupByDkimResponseResult copyWith({RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMeta? meta, RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultSerie0? serie0, }) { return RadarGetEmailRoutingTimeseriesGroupByDkimResponseResult(
  meta: meta ?? this.meta,
  serie0: serie0 ?? this.serie0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailRoutingTimeseriesGroupByDkimResponseResult &&
          meta == other.meta &&
          serie0 == other.serie0; } 
@override int get hashCode { return Object.hash(meta, serie0); } 
@override String toString() { return 'RadarGetEmailRoutingTimeseriesGroupByDkimResponseResult(meta: $meta, serie0: $serie0)'; } 
 }
