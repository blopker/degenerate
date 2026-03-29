// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_email_routing_timeseries_group_by_ip_version_response_result_meta.dart';import 'radar_get_email_routing_timeseries_group_by_ip_version_response_result_serie0.dart';final class RadarGetEmailRoutingTimeseriesGroupByIpVersionResponseResult {const RadarGetEmailRoutingTimeseriesGroupByIpVersionResponseResult({required this.meta, required this.serie0, });

factory RadarGetEmailRoutingTimeseriesGroupByIpVersionResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetEmailRoutingTimeseriesGroupByIpVersionResponseResult(
  meta: RadarGetEmailRoutingTimeseriesGroupByIpVersionResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  serie0: RadarGetEmailRoutingTimeseriesGroupByIpVersionResponseResultSerie0.fromJson(json['serie_0'] as Map<String, dynamic>),
); }

/// Metadata for the results.
final RadarGetEmailRoutingTimeseriesGroupByIpVersionResponseResultMeta meta;

final RadarGetEmailRoutingTimeseriesGroupByIpVersionResponseResultSerie0 serie0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'serie_0': serie0.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('serie_0'); } 
RadarGetEmailRoutingTimeseriesGroupByIpVersionResponseResult copyWith({RadarGetEmailRoutingTimeseriesGroupByIpVersionResponseResultMeta? meta, RadarGetEmailRoutingTimeseriesGroupByIpVersionResponseResultSerie0? serie0, }) { return RadarGetEmailRoutingTimeseriesGroupByIpVersionResponseResult(
  meta: meta ?? this.meta,
  serie0: serie0 ?? this.serie0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailRoutingTimeseriesGroupByIpVersionResponseResult &&
          meta == other.meta &&
          serie0 == other.serie0; } 
@override int get hashCode { return Object.hash(meta, serie0); } 
@override String toString() { return 'RadarGetEmailRoutingTimeseriesGroupByIpVersionResponseResult(meta: $meta, serie0: $serie0)'; } 
 }
