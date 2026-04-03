// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_http_timeseries_group_by_browser_families_response_result_meta.dart';import 'radar_get_http_timeseries_group_by_browser_families_response_result_serie0.dart';@immutable final class RadarGetHttpTimeseriesGroupByBrowserFamiliesResponseResult {const RadarGetHttpTimeseriesGroupByBrowserFamiliesResponseResult({required this.meta, required this.serie0, });

factory RadarGetHttpTimeseriesGroupByBrowserFamiliesResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetHttpTimeseriesGroupByBrowserFamiliesResponseResult(
  meta: RadarGetHttpTimeseriesGroupByBrowserFamiliesResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  serie0: RadarGetHttpTimeseriesGroupByBrowserFamiliesResponseResultSerie0.fromJson(json['serie_0'] as Map<String, dynamic>),
); }

/// Metadata for the results.
final RadarGetHttpTimeseriesGroupByBrowserFamiliesResponseResultMeta meta;

final RadarGetHttpTimeseriesGroupByBrowserFamiliesResponseResultSerie0 serie0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'serie_0': serie0.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('serie_0'); } 
RadarGetHttpTimeseriesGroupByBrowserFamiliesResponseResult copyWith({RadarGetHttpTimeseriesGroupByBrowserFamiliesResponseResultMeta? meta, RadarGetHttpTimeseriesGroupByBrowserFamiliesResponseResultSerie0? serie0, }) { return RadarGetHttpTimeseriesGroupByBrowserFamiliesResponseResult(
  meta: meta ?? this.meta,
  serie0: serie0 ?? this.serie0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTimeseriesGroupByBrowserFamiliesResponseResult &&
          meta == other.meta &&
          serie0 == other.serie0; } 
@override int get hashCode { return Object.hash(meta, serie0); } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByBrowserFamiliesResponseResult(meta: $meta, serie0: $serie0)'; } 
 }
