// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_attacks_layer3_timeseries_by_bytes_response_result_meta.dart';import 'radar_get_attacks_layer3_timeseries_by_bytes_response_result_value.dart';@immutable final class RadarGetAttacksLayer3TimeseriesByBytesResponseResult {const RadarGetAttacksLayer3TimeseriesByBytesResponseResult({required this.meta, this.additionalProperties = const {}, });

factory RadarGetAttacksLayer3TimeseriesByBytesResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer3TimeseriesByBytesResponseResult(
  meta: RadarGetAttacksLayer3TimeseriesByBytesResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  additionalProperties: Map.fromEntries(json.entries.where((e) => !const {'meta'}.contains(e.key)).map((e) => MapEntry(e.key, RadarGetAttacksLayer3TimeseriesByBytesResponseResultValue.fromJson(e.value as Map<String, dynamic>)))),
); }

/// Metadata for the results.
final RadarGetAttacksLayer3TimeseriesByBytesResponseResultMeta meta;

final Map<String,RadarGetAttacksLayer3TimeseriesByBytesResponseResultValue> additionalProperties;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  ...additionalProperties.map((k, v) => MapEntry(k, v.toJson())),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta'); } 
RadarGetAttacksLayer3TimeseriesByBytesResponseResult copyWith({RadarGetAttacksLayer3TimeseriesByBytesResponseResultMeta? meta, Map<String, RadarGetAttacksLayer3TimeseriesByBytesResponseResultValue>? additionalProperties, }) { return RadarGetAttacksLayer3TimeseriesByBytesResponseResult(
  meta: meta ?? this.meta,
  additionalProperties: additionalProperties ?? this.additionalProperties,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer3TimeseriesByBytesResponseResult &&
          meta == other.meta &&
          mapEquals(additionalProperties, other.additionalProperties); } 
@override int get hashCode { return Object.hash(meta, Object.hashAll(additionalProperties.entries)); } 
@override String toString() { return 'RadarGetAttacksLayer3TimeseriesByBytesResponseResult(meta: $meta, additionalProperties: $additionalProperties)'; } 
 }
