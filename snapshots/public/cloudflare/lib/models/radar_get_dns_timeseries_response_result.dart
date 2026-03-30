// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_dns_timeseries_response_result_meta.dart';import 'radar_get_dns_timeseries_response_result_value.dart';final class RadarGetDnsTimeseriesResponseResult {const RadarGetDnsTimeseriesResponseResult({required this.meta, this.additionalProperties = const {}, });

factory RadarGetDnsTimeseriesResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetDnsTimeseriesResponseResult(
  meta: RadarGetDnsTimeseriesResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  additionalProperties: Map.fromEntries(json.entries.where((e) => !const {'meta'}.contains(e.key)).map((e) => MapEntry(e.key, RadarGetDnsTimeseriesResponseResultValue.fromJson(e.value as Map<String, dynamic>)))),
); }

/// Metadata for the results.
final RadarGetDnsTimeseriesResponseResultMeta meta;

final Map<String,RadarGetDnsTimeseriesResponseResultValue> additionalProperties;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  ...additionalProperties.map((k, v) => MapEntry(k, v.toJson())),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta'); } 
RadarGetDnsTimeseriesResponseResult copyWith({RadarGetDnsTimeseriesResponseResultMeta? meta, Map<String, RadarGetDnsTimeseriesResponseResultValue>? additionalProperties, }) { return RadarGetDnsTimeseriesResponseResult(
  meta: meta ?? this.meta,
  additionalProperties: additionalProperties ?? this.additionalProperties,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsTimeseriesResponseResult &&
          meta == other.meta &&
          mapEquals(additionalProperties, other.additionalProperties); } 
@override int get hashCode { return Object.hash(meta, Object.hashAll(additionalProperties.entries)); } 
@override String toString() { return 'RadarGetDnsTimeseriesResponseResult(meta: $meta, additionalProperties: $additionalProperties)'; } 
 }
