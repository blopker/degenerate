// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_bots_timeseries_group_response_result_meta.dart';import 'radar_get_bots_timeseries_group_response_result_serie0.dart';@immutable final class RadarGetBotsTimeseriesGroupResponseResult {const RadarGetBotsTimeseriesGroupResponseResult({required this.meta, required this.serie0, });

factory RadarGetBotsTimeseriesGroupResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetBotsTimeseriesGroupResponseResult(
  meta: RadarGetBotsTimeseriesGroupResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  serie0: RadarGetBotsTimeseriesGroupResponseResultSerie0.fromJson(json['serie_0'] as Map<String, dynamic>),
); }

/// Metadata for the results.
final RadarGetBotsTimeseriesGroupResponseResultMeta meta;

final RadarGetBotsTimeseriesGroupResponseResultSerie0 serie0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'serie_0': serie0.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('serie_0'); } 
RadarGetBotsTimeseriesGroupResponseResult copyWith({RadarGetBotsTimeseriesGroupResponseResultMeta? meta, RadarGetBotsTimeseriesGroupResponseResultSerie0? serie0, }) { return RadarGetBotsTimeseriesGroupResponseResult(
  meta: meta ?? this.meta,
  serie0: serie0 ?? this.serie0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetBotsTimeseriesGroupResponseResult &&
          meta == other.meta &&
          serie0 == other.serie0; } 
@override int get hashCode { return Object.hash(meta, serie0); } 
@override String toString() { return 'RadarGetBotsTimeseriesGroupResponseResult(meta: $meta, serie0: $serie0)'; } 
 }
