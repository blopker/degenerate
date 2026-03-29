// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_attacks_layer3_timeseries_group_by_ip_version_response_result_meta.dart';import 'radar_get_attacks_layer3_timeseries_group_by_ip_version_response_result_serie0.dart';final class RadarGetAttacksLayer3TimeseriesGroupByIpVersionResponseResult {const RadarGetAttacksLayer3TimeseriesGroupByIpVersionResponseResult({required this.meta, required this.serie0, });

factory RadarGetAttacksLayer3TimeseriesGroupByIpVersionResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer3TimeseriesGroupByIpVersionResponseResult(
  meta: RadarGetAttacksLayer3TimeseriesGroupByIpVersionResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  serie0: RadarGetAttacksLayer3TimeseriesGroupByIpVersionResponseResultSerie0.fromJson(json['serie_0'] as Map<String, dynamic>),
); }

/// Metadata for the results.
final RadarGetAttacksLayer3TimeseriesGroupByIpVersionResponseResultMeta meta;

final RadarGetAttacksLayer3TimeseriesGroupByIpVersionResponseResultSerie0 serie0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'serie_0': serie0.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('serie_0'); } 
RadarGetAttacksLayer3TimeseriesGroupByIpVersionResponseResult copyWith({RadarGetAttacksLayer3TimeseriesGroupByIpVersionResponseResultMeta? meta, RadarGetAttacksLayer3TimeseriesGroupByIpVersionResponseResultSerie0? serie0, }) { return RadarGetAttacksLayer3TimeseriesGroupByIpVersionResponseResult(
  meta: meta ?? this.meta,
  serie0: serie0 ?? this.serie0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer3TimeseriesGroupByIpVersionResponseResult &&
          meta == other.meta &&
          serie0 == other.serie0; } 
@override int get hashCode { return Object.hash(meta, serie0); } 
@override String toString() { return 'RadarGetAttacksLayer3TimeseriesGroupByIpVersionResponseResult(meta: $meta, serie0: $serie0)'; } 
 }
