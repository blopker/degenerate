// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_ct_timeseries_group_response_result_meta.dart';import 'radar_get_ct_timeseries_group_response_result_serie0.dart';import 'radar_get_ct_timeseries_group_response_result_serie0_variant1.dart';import 'radar_get_ct_timeseries_group_response_result_serie0_variant2.dart';import 'radar_get_ct_timeseries_group_response_result_serie0_variant3.dart';import 'radar_get_ct_timeseries_group_response_result_serie0_variant4.dart';import 'radar_get_ct_timeseries_group_response_result_serie0_variant5.dart';import 'radar_get_ct_timeseries_group_response_result_serie0_variant6.dart';import 'radar_get_ct_timeseries_group_response_result_serie0_variant7.dart';import 'radar_get_ct_timeseries_group_response_result_serie0_variant8.dart';final class RadarGetCtTimeseriesGroupResponseResult {const RadarGetCtTimeseriesGroupResponseResult({required this.meta, required this.serie0, });

factory RadarGetCtTimeseriesGroupResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetCtTimeseriesGroupResponseResult(
  meta: RadarGetCtTimeseriesGroupResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  serie0: OneOf8.parse(json['serie_0'], fromA: (v) => RadarGetCtTimeseriesGroupResponseResultSerie0Variant1.fromJson(v as Map<String, dynamic>), fromB: (v) => RadarGetCtTimeseriesGroupResponseResultSerie0Variant2.fromJson(v as Map<String, dynamic>), fromC: (v) => RadarGetCtTimeseriesGroupResponseResultSerie0Variant3.fromJson(v as Map<String, dynamic>), fromD: (v) => RadarGetCtTimeseriesGroupResponseResultSerie0Variant4.fromJson(v as Map<String, dynamic>), fromE: (v) => RadarGetCtTimeseriesGroupResponseResultSerie0Variant5.fromJson(v as Map<String, dynamic>), fromF: (v) => RadarGetCtTimeseriesGroupResponseResultSerie0Variant6.fromJson(v as Map<String, dynamic>), fromG: (v) => RadarGetCtTimeseriesGroupResponseResultSerie0Variant7.fromJson(v as Map<String, dynamic>), fromH: (v) => RadarGetCtTimeseriesGroupResponseResultSerie0Variant8.fromJson(v as Map<String, dynamic>),),
); }

/// Metadata for the results.
final RadarGetCtTimeseriesGroupResponseResultMeta meta;

final RadarGetCtTimeseriesGroupResponseResultSerie0 serie0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'serie_0': serie0.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('serie_0'); } 
RadarGetCtTimeseriesGroupResponseResult copyWith({RadarGetCtTimeseriesGroupResponseResultMeta? meta, RadarGetCtTimeseriesGroupResponseResultSerie0? serie0, }) { return RadarGetCtTimeseriesGroupResponseResult(
  meta: meta ?? this.meta,
  serie0: serie0 ?? this.serie0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetCtTimeseriesGroupResponseResult &&
          meta == other.meta &&
          serie0 == other.serie0; } 
@override int get hashCode { return Object.hash(meta, serie0); } 
@override String toString() { return 'RadarGetCtTimeseriesGroupResponseResult(meta: $meta, serie0: $serie0)'; } 
 }
