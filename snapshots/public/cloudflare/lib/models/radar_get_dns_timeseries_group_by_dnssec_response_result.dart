// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_dns_timeseries_group_by_dnssec_response_result_meta.dart';import 'radar_get_dns_timeseries_group_by_dnssec_response_result_serie0.dart';final class RadarGetDnsTimeseriesGroupByDnssecResponseResult {const RadarGetDnsTimeseriesGroupByDnssecResponseResult({required this.meta, required this.serie0, });

factory RadarGetDnsTimeseriesGroupByDnssecResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetDnsTimeseriesGroupByDnssecResponseResult(
  meta: RadarGetDnsTimeseriesGroupByDnssecResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  serie0: RadarGetDnsTimeseriesGroupByDnssecResponseResultSerie0.fromJson(json['serie_0'] as Map<String, dynamic>),
); }

/// Metadata for the results.
final RadarGetDnsTimeseriesGroupByDnssecResponseResultMeta meta;

final RadarGetDnsTimeseriesGroupByDnssecResponseResultSerie0 serie0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'serie_0': serie0.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('serie_0'); } 
RadarGetDnsTimeseriesGroupByDnssecResponseResult copyWith({RadarGetDnsTimeseriesGroupByDnssecResponseResultMeta? meta, RadarGetDnsTimeseriesGroupByDnssecResponseResultSerie0? serie0, }) { return RadarGetDnsTimeseriesGroupByDnssecResponseResult(
  meta: meta ?? this.meta,
  serie0: serie0 ?? this.serie0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsTimeseriesGroupByDnssecResponseResult &&
          meta == other.meta &&
          serie0 == other.serie0; } 
@override int get hashCode { return Object.hash(meta, serie0); } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupByDnssecResponseResult(meta: $meta, serie0: $serie0)'; } 
 }
