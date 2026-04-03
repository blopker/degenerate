// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_attacks_layer7_timeseries_group_by_ip_version_response_result_meta.dart';import 'radar_get_attacks_layer7_timeseries_group_by_ip_version_response_result_serie0.dart';@immutable final class RadarGetAttacksLayer7TimeseriesGroupByIpVersionResponseResult {const RadarGetAttacksLayer7TimeseriesGroupByIpVersionResponseResult({required this.meta, required this.serie0, });

factory RadarGetAttacksLayer7TimeseriesGroupByIpVersionResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer7TimeseriesGroupByIpVersionResponseResult(
  meta: RadarGetAttacksLayer7TimeseriesGroupByIpVersionResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  serie0: RadarGetAttacksLayer7TimeseriesGroupByIpVersionResponseResultSerie0.fromJson(json['serie_0'] as Map<String, dynamic>),
); }

/// Metadata for the results.
final RadarGetAttacksLayer7TimeseriesGroupByIpVersionResponseResultMeta meta;

final RadarGetAttacksLayer7TimeseriesGroupByIpVersionResponseResultSerie0 serie0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'serie_0': serie0.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('serie_0'); } 
RadarGetAttacksLayer7TimeseriesGroupByIpVersionResponseResult copyWith({RadarGetAttacksLayer7TimeseriesGroupByIpVersionResponseResultMeta? meta, RadarGetAttacksLayer7TimeseriesGroupByIpVersionResponseResultSerie0? serie0, }) { return RadarGetAttacksLayer7TimeseriesGroupByIpVersionResponseResult(
  meta: meta ?? this.meta,
  serie0: serie0 ?? this.serie0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer7TimeseriesGroupByIpVersionResponseResult &&
          meta == other.meta &&
          serie0 == other.serie0; } 
@override int get hashCode { return Object.hash(meta, serie0); } 
@override String toString() { return 'RadarGetAttacksLayer7TimeseriesGroupByIpVersionResponseResult(meta: $meta, serie0: $serie0)'; } 
 }
