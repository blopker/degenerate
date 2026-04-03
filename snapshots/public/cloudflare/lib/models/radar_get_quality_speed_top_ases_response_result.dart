// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_quality_speed_top_ases_response_result_meta.dart';import 'radar_get_quality_speed_top_ases_response_result_top0.dart';@immutable final class RadarGetQualitySpeedTopAsesResponseResult {const RadarGetQualitySpeedTopAsesResponseResult({required this.meta, required this.top0, });

factory RadarGetQualitySpeedTopAsesResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetQualitySpeedTopAsesResponseResult(
  meta: RadarGetQualitySpeedTopAsesResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  top0: (json['top_0'] as List<dynamic>).map((e) => RadarGetQualitySpeedTopAsesResponseResultTop0.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Metadata for the results.
final RadarGetQualitySpeedTopAsesResponseResultMeta meta;

final List<RadarGetQualitySpeedTopAsesResponseResultTop0> top0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'top_0': top0.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('top_0'); } 
RadarGetQualitySpeedTopAsesResponseResult copyWith({RadarGetQualitySpeedTopAsesResponseResultMeta? meta, List<RadarGetQualitySpeedTopAsesResponseResultTop0>? top0, }) { return RadarGetQualitySpeedTopAsesResponseResult(
  meta: meta ?? this.meta,
  top0: top0 ?? this.top0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetQualitySpeedTopAsesResponseResult &&
          meta == other.meta &&
          listEquals(top0, other.top0); } 
@override int get hashCode { return Object.hash(meta, Object.hashAll(top0)); } 
@override String toString() { return 'RadarGetQualitySpeedTopAsesResponseResult(meta: $meta, top0: $top0)'; } 
 }
