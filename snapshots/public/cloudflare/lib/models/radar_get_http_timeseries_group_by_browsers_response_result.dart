// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_http_timeseries_group_by_browsers_response_result_meta.dart';import 'radar_get_http_timeseries_group_by_browsers_response_result_serie0.dart';@immutable final class RadarGetHttpTimeseriesGroupByBrowsersResponseResult {const RadarGetHttpTimeseriesGroupByBrowsersResponseResult({required this.meta, required this.serie0, });

factory RadarGetHttpTimeseriesGroupByBrowsersResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetHttpTimeseriesGroupByBrowsersResponseResult(
  meta: RadarGetHttpTimeseriesGroupByBrowsersResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  serie0: RadarGetHttpTimeseriesGroupByBrowsersResponseResultSerie0.fromJson(json['serie_0'] as Map<String, dynamic>),
); }

/// Metadata for the results.
final RadarGetHttpTimeseriesGroupByBrowsersResponseResultMeta meta;

final RadarGetHttpTimeseriesGroupByBrowsersResponseResultSerie0 serie0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'serie_0': serie0.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('serie_0'); } 
RadarGetHttpTimeseriesGroupByBrowsersResponseResult copyWith({RadarGetHttpTimeseriesGroupByBrowsersResponseResultMeta? meta, RadarGetHttpTimeseriesGroupByBrowsersResponseResultSerie0? serie0, }) { return RadarGetHttpTimeseriesGroupByBrowsersResponseResult(
  meta: meta ?? this.meta,
  serie0: serie0 ?? this.serie0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTimeseriesGroupByBrowsersResponseResult &&
          meta == other.meta &&
          serie0 == other.serie0; } 
@override int get hashCode { return Object.hash(meta, serie0); } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByBrowsersResponseResult(meta: $meta, serie0: $serie0)'; } 
 }
