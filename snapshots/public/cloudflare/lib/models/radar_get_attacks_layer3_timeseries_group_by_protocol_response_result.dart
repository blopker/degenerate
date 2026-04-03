// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_attacks_layer3_timeseries_group_by_protocol_response_result_meta.dart';import 'radar_get_attacks_layer3_timeseries_group_by_protocol_response_result_serie0.dart';@immutable final class RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResult {const RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResult({required this.meta, required this.serie0, });

factory RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResult(
  meta: RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  serie0: RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultSerie0.fromJson(json['serie_0'] as Map<String, dynamic>),
); }

/// Metadata for the results.
final RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMeta meta;

final RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultSerie0 serie0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'serie_0': serie0.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('serie_0'); } 
RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResult copyWith({RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMeta? meta, RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultSerie0? serie0, }) { return RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResult(
  meta: meta ?? this.meta,
  serie0: serie0 ?? this.serie0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResult &&
          meta == other.meta &&
          serie0 == other.serie0; } 
@override int get hashCode { return Object.hash(meta, serie0); } 
@override String toString() { return 'RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResult(meta: $meta, serie0: $serie0)'; } 
 }
