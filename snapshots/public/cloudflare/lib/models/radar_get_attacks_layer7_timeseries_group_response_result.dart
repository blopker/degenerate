// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_attacks_layer7_timeseries_group_response_result_meta.dart';import 'radar_get_attacks_layer7_timeseries_group_response_result_serie0.dart';final class RadarGetAttacksLayer7TimeseriesGroupResponseResult {const RadarGetAttacksLayer7TimeseriesGroupResponseResult({required this.meta, required this.serie0, });

factory RadarGetAttacksLayer7TimeseriesGroupResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer7TimeseriesGroupResponseResult(
  meta: RadarGetAttacksLayer7TimeseriesGroupResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  serie0: RadarGetAttacksLayer7TimeseriesGroupResponseResultSerie0.fromJson(json['serie_0'] as Map<String, dynamic>),
); }

/// Metadata for the results.
final RadarGetAttacksLayer7TimeseriesGroupResponseResultMeta meta;

final RadarGetAttacksLayer7TimeseriesGroupResponseResultSerie0 serie0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'serie_0': serie0.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('serie_0'); } 
RadarGetAttacksLayer7TimeseriesGroupResponseResult copyWith({RadarGetAttacksLayer7TimeseriesGroupResponseResultMeta? meta, RadarGetAttacksLayer7TimeseriesGroupResponseResultSerie0? serie0, }) { return RadarGetAttacksLayer7TimeseriesGroupResponseResult(
  meta: meta ?? this.meta,
  serie0: serie0 ?? this.serie0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer7TimeseriesGroupResponseResult &&
          meta == other.meta &&
          serie0 == other.serie0; } 
@override int get hashCode { return Object.hash(meta, serie0); } 
@override String toString() { return 'RadarGetAttacksLayer7TimeseriesGroupResponseResult(meta: $meta, serie0: $serie0)'; } 
 }
