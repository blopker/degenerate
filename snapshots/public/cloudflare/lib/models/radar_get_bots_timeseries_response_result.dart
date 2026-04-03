// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_bots_timeseries_response_result_meta.dart';import 'radar_get_bots_timeseries_response_result_value.dart';@immutable final class RadarGetBotsTimeseriesResponseResult {const RadarGetBotsTimeseriesResponseResult({required this.meta, this.additionalProperties = const {}, });

factory RadarGetBotsTimeseriesResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetBotsTimeseriesResponseResult(
  meta: RadarGetBotsTimeseriesResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  additionalProperties: Map.fromEntries(json.entries.where((e) => !const {'meta'}.contains(e.key)).map((e) => MapEntry(e.key, RadarGetBotsTimeseriesResponseResultValue.fromJson(e.value as Map<String, dynamic>)))),
); }

/// Metadata for the results.
final RadarGetBotsTimeseriesResponseResultMeta meta;

final Map<String,RadarGetBotsTimeseriesResponseResultValue> additionalProperties;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  ...additionalProperties.map((k, v) => MapEntry(k, v.toJson())),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta'); } 
RadarGetBotsTimeseriesResponseResult copyWith({RadarGetBotsTimeseriesResponseResultMeta? meta, Map<String, RadarGetBotsTimeseriesResponseResultValue>? additionalProperties, }) { return RadarGetBotsTimeseriesResponseResult(
  meta: meta ?? this.meta,
  additionalProperties: additionalProperties ?? this.additionalProperties,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetBotsTimeseriesResponseResult &&
          meta == other.meta &&
          mapEquals(additionalProperties, other.additionalProperties); } 
@override int get hashCode { return Object.hash(meta, Object.hashAll(additionalProperties.entries)); } 
@override String toString() { return 'RadarGetBotsTimeseriesResponseResult(meta: $meta, additionalProperties: $additionalProperties)'; } 
 }
