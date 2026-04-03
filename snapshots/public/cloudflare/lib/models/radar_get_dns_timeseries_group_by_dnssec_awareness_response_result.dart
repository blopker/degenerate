// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_dns_timeseries_group_by_dnssec_awareness_response_result_meta.dart';import 'radar_get_dns_timeseries_group_by_dnssec_awareness_response_result_serie0.dart';@immutable final class RadarGetDnsTimeseriesGroupByDnssecAwarenessResponseResult {const RadarGetDnsTimeseriesGroupByDnssecAwarenessResponseResult({required this.meta, required this.serie0, });

factory RadarGetDnsTimeseriesGroupByDnssecAwarenessResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetDnsTimeseriesGroupByDnssecAwarenessResponseResult(
  meta: RadarGetDnsTimeseriesGroupByDnssecAwarenessResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  serie0: RadarGetDnsTimeseriesGroupByDnssecAwarenessResponseResultSerie0.fromJson(json['serie_0'] as Map<String, dynamic>),
); }

/// Metadata for the results.
final RadarGetDnsTimeseriesGroupByDnssecAwarenessResponseResultMeta meta;

final RadarGetDnsTimeseriesGroupByDnssecAwarenessResponseResultSerie0 serie0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'serie_0': serie0.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('serie_0'); } 
RadarGetDnsTimeseriesGroupByDnssecAwarenessResponseResult copyWith({RadarGetDnsTimeseriesGroupByDnssecAwarenessResponseResultMeta? meta, RadarGetDnsTimeseriesGroupByDnssecAwarenessResponseResultSerie0? serie0, }) { return RadarGetDnsTimeseriesGroupByDnssecAwarenessResponseResult(
  meta: meta ?? this.meta,
  serie0: serie0 ?? this.serie0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsTimeseriesGroupByDnssecAwarenessResponseResult &&
          meta == other.meta &&
          serie0 == other.serie0; } 
@override int get hashCode { return Object.hash(meta, serie0); } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupByDnssecAwarenessResponseResult(meta: $meta, serie0: $serie0)'; } 
 }
