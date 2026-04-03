// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_ai_bots_timeseries_response_result_meta.dart';import 'radar_get_ai_bots_timeseries_response_result_value.dart';@immutable final class RadarGetAiBotsTimeseriesResponseResult {const RadarGetAiBotsTimeseriesResponseResult({required this.meta, this.additionalProperties = const {}, });

factory RadarGetAiBotsTimeseriesResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetAiBotsTimeseriesResponseResult(
  meta: RadarGetAiBotsTimeseriesResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  additionalProperties: Map.fromEntries(json.entries.where((e) => !const {'meta'}.contains(e.key)).map((e) => MapEntry(e.key, RadarGetAiBotsTimeseriesResponseResultValue.fromJson(e.value as Map<String, dynamic>)))),
); }

/// Metadata for the results.
final RadarGetAiBotsTimeseriesResponseResultMeta meta;

final Map<String,RadarGetAiBotsTimeseriesResponseResultValue> additionalProperties;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  ...additionalProperties.map((k, v) => MapEntry(k, v.toJson())),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta'); } 
RadarGetAiBotsTimeseriesResponseResult copyWith({RadarGetAiBotsTimeseriesResponseResultMeta? meta, Map<String, RadarGetAiBotsTimeseriesResponseResultValue>? additionalProperties, }) { return RadarGetAiBotsTimeseriesResponseResult(
  meta: meta ?? this.meta,
  additionalProperties: additionalProperties ?? this.additionalProperties,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAiBotsTimeseriesResponseResult &&
          meta == other.meta &&
          mapEquals(additionalProperties, other.additionalProperties); } 
@override int get hashCode { return Object.hash(meta, Object.hashAll(additionalProperties.entries)); } 
@override String toString() { return 'RadarGetAiBotsTimeseriesResponseResult(meta: $meta, additionalProperties: $additionalProperties)'; } 
 }
