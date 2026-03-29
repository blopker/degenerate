// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_dns_as112_timeseries_group_by_edns_response_result_meta.dart';import 'radar_get_dns_as112_timeseries_group_by_edns_response_result_serie0.dart';final class RadarGetDnsAs112TimeseriesGroupByEdnsResponseResult {const RadarGetDnsAs112TimeseriesGroupByEdnsResponseResult({required this.meta, required this.serie0, });

factory RadarGetDnsAs112TimeseriesGroupByEdnsResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetDnsAs112TimeseriesGroupByEdnsResponseResult(
  meta: RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  serie0: RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultSerie0.fromJson(json['serie_0'] as Map<String, dynamic>),
); }

/// Metadata for the results.
final RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMeta meta;

final RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultSerie0 serie0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'serie_0': serie0.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('serie_0'); } 
RadarGetDnsAs112TimeseriesGroupByEdnsResponseResult copyWith({RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMeta? meta, RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultSerie0? serie0, }) { return RadarGetDnsAs112TimeseriesGroupByEdnsResponseResult(
  meta: meta ?? this.meta,
  serie0: serie0 ?? this.serie0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsAs112TimeseriesGroupByEdnsResponseResult &&
          meta == other.meta &&
          serie0 == other.serie0; } 
@override int get hashCode { return Object.hash(meta, serie0); } 
@override String toString() { return 'RadarGetDnsAs112TimeseriesGroupByEdnsResponseResult(meta: $meta, serie0: $serie0)'; } 
 }
