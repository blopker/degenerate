// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_dns_as112_timeseries_response_result_meta.dart';import 'radar_get_dns_as112_timeseries_response_result_value.dart';final class RadarGetDnsAs112TimeseriesResponseResult {const RadarGetDnsAs112TimeseriesResponseResult({required this.meta, this.additionalProperties = const {}, });

factory RadarGetDnsAs112TimeseriesResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetDnsAs112TimeseriesResponseResult(
  meta: RadarGetDnsAs112TimeseriesResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  additionalProperties: Map.fromEntries(json.entries.where((e) => !const {'meta'}.contains(e.key)).map((e) => MapEntry(e.key, RadarGetDnsAs112TimeseriesResponseResultValue.fromJson(e.value as Map<String, dynamic>)))),
); }

/// Metadata for the results.
final RadarGetDnsAs112TimeseriesResponseResultMeta meta;

final Map<String,RadarGetDnsAs112TimeseriesResponseResultValue> additionalProperties;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  ...additionalProperties.map((k, v) => MapEntry(k, v.toJson())),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta'); } 
RadarGetDnsAs112TimeseriesResponseResult copyWith({RadarGetDnsAs112TimeseriesResponseResultMeta? meta, Map<String, RadarGetDnsAs112TimeseriesResponseResultValue>? additionalProperties, }) { return RadarGetDnsAs112TimeseriesResponseResult(
  meta: meta ?? this.meta,
  additionalProperties: additionalProperties ?? this.additionalProperties,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsAs112TimeseriesResponseResult &&
          meta == other.meta &&
          mapEquals(additionalProperties, other.additionalProperties); } 
@override int get hashCode { return Object.hash(meta, Object.hashAll(additionalProperties.entries)); } 
@override String toString() { return 'RadarGetDnsAs112TimeseriesResponseResult(meta: $meta, additionalProperties: $additionalProperties)'; } 
 }
