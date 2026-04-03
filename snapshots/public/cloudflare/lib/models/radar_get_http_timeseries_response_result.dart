// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_http_timeseries_response_result_meta.dart';import 'radar_get_http_timeseries_response_result_value.dart';@immutable final class RadarGetHttpTimeseriesResponseResult {const RadarGetHttpTimeseriesResponseResult({required this.meta, this.additionalProperties = const {}, });

factory RadarGetHttpTimeseriesResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetHttpTimeseriesResponseResult(
  meta: RadarGetHttpTimeseriesResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  additionalProperties: Map.fromEntries(json.entries.where((e) => !const {'meta'}.contains(e.key)).map((e) => MapEntry(e.key, RadarGetHttpTimeseriesResponseResultValue.fromJson(e.value as Map<String, dynamic>)))),
); }

/// Metadata for the results.
final RadarGetHttpTimeseriesResponseResultMeta meta;

final Map<String,RadarGetHttpTimeseriesResponseResultValue> additionalProperties;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  ...additionalProperties.map((k, v) => MapEntry(k, v.toJson())),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta'); } 
RadarGetHttpTimeseriesResponseResult copyWith({RadarGetHttpTimeseriesResponseResultMeta? meta, Map<String, RadarGetHttpTimeseriesResponseResultValue>? additionalProperties, }) { return RadarGetHttpTimeseriesResponseResult(
  meta: meta ?? this.meta,
  additionalProperties: additionalProperties ?? this.additionalProperties,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTimeseriesResponseResult &&
          meta == other.meta &&
          mapEquals(additionalProperties, other.additionalProperties); } 
@override int get hashCode { return Object.hash(meta, Object.hashAll(additionalProperties.entries)); } 
@override String toString() { return 'RadarGetHttpTimeseriesResponseResult(meta: $meta, additionalProperties: $additionalProperties)'; } 
 }
