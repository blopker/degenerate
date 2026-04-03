// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_bgp_timeseries_response_result_meta.dart';import 'radar_get_bgp_timeseries_response_result_serie0.dart';@immutable final class RadarGetBgpTimeseriesResponseResult {const RadarGetBgpTimeseriesResponseResult({required this.meta, required this.serie0, });

factory RadarGetBgpTimeseriesResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetBgpTimeseriesResponseResult(
  meta: RadarGetBgpTimeseriesResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  serie0: RadarGetBgpTimeseriesResponseResultSerie0.fromJson(json['serie_0'] as Map<String, dynamic>),
); }

final RadarGetBgpTimeseriesResponseResultMeta meta;

final RadarGetBgpTimeseriesResponseResultSerie0 serie0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'serie_0': serie0.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('serie_0'); } 
RadarGetBgpTimeseriesResponseResult copyWith({RadarGetBgpTimeseriesResponseResultMeta? meta, RadarGetBgpTimeseriesResponseResultSerie0? serie0, }) { return RadarGetBgpTimeseriesResponseResult(
  meta: meta ?? this.meta,
  serie0: serie0 ?? this.serie0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetBgpTimeseriesResponseResult &&
          meta == other.meta &&
          serie0 == other.serie0; } 
@override int get hashCode { return Object.hash(meta, serie0); } 
@override String toString() { return 'RadarGetBgpTimeseriesResponseResult(meta: $meta, serie0: $serie0)'; } 
 }
