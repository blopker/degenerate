// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_origins_timeseries_response_result_meta.dart';import 'radar_get_origins_timeseries_response_result_value.dart';final class RadarGetOriginsTimeseriesResponseResult {const RadarGetOriginsTimeseriesResponseResult({required this.meta, this.additionalProperties = const {}, });

factory RadarGetOriginsTimeseriesResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetOriginsTimeseriesResponseResult(
  meta: RadarGetOriginsTimeseriesResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  additionalProperties: Map.fromEntries(json.entries.where((e) => !const {'meta'}.contains(e.key)).map((e) => MapEntry(e.key, RadarGetOriginsTimeseriesResponseResultValue.fromJson(e.value as Map<String, dynamic>)))),
); }

/// Metadata for the results.
final RadarGetOriginsTimeseriesResponseResultMeta meta;

final Map<String,RadarGetOriginsTimeseriesResponseResultValue> additionalProperties;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  ...additionalProperties.map((k, v) => MapEntry(k, v.toJson())),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta'); } 
RadarGetOriginsTimeseriesResponseResult copyWith({RadarGetOriginsTimeseriesResponseResultMeta? meta, Map<String, RadarGetOriginsTimeseriesResponseResultValue>? additionalProperties, }) { return RadarGetOriginsTimeseriesResponseResult(
  meta: meta ?? this.meta,
  additionalProperties: additionalProperties ?? this.additionalProperties,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetOriginsTimeseriesResponseResult &&
          meta == other.meta &&
          mapEquals(additionalProperties, other.additionalProperties); } 
@override int get hashCode { return Object.hash(meta, Object.hashAll(additionalProperties.entries)); } 
@override String toString() { return 'RadarGetOriginsTimeseriesResponseResult(meta: $meta, additionalProperties: $additionalProperties)'; } 
 }
