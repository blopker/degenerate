// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_ct_timeseries_response_result_meta.dart';import 'radar_get_ct_timeseries_response_result_value.dart';final class RadarGetCtTimeseriesResponseResult {const RadarGetCtTimeseriesResponseResult({required this.meta, this.additionalProperties = const {}, });

factory RadarGetCtTimeseriesResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetCtTimeseriesResponseResult(
  meta: RadarGetCtTimeseriesResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  additionalProperties: Map.fromEntries(json.entries.where((e) => !const {'meta'}.contains(e.key)).map((e) => MapEntry(e.key, RadarGetCtTimeseriesResponseResultValue.fromJson(e.value as Map<String, dynamic>)))),
); }

/// Metadata for the results.
final RadarGetCtTimeseriesResponseResultMeta meta;

final Map<String,RadarGetCtTimeseriesResponseResultValue> additionalProperties;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  ...additionalProperties.map((k, v) => MapEntry(k, v.toJson())),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta'); } 
RadarGetCtTimeseriesResponseResult copyWith({RadarGetCtTimeseriesResponseResultMeta? meta, Map<String, RadarGetCtTimeseriesResponseResultValue>? additionalProperties, }) { return RadarGetCtTimeseriesResponseResult(
  meta: meta ?? this.meta,
  additionalProperties: additionalProperties ?? this.additionalProperties,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetCtTimeseriesResponseResult &&
          meta == other.meta &&
          mapEquals(additionalProperties, other.additionalProperties); } 
@override int get hashCode { return Object.hash(meta, Object.hashAll(additionalProperties.entries)); } 
@override String toString() { return 'RadarGetCtTimeseriesResponseResult(meta: $meta, additionalProperties: $additionalProperties)'; } 
 }
