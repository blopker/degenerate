// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_attacks_layer3_top_target_locations_response_result_meta.dart';import 'radar_get_attacks_layer3_top_target_locations_response_result_top0.dart';@immutable final class RadarGetAttacksLayer3TopTargetLocationsResponseResult {const RadarGetAttacksLayer3TopTargetLocationsResponseResult({required this.meta, required this.top0, });

factory RadarGetAttacksLayer3TopTargetLocationsResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer3TopTargetLocationsResponseResult(
  meta: RadarGetAttacksLayer3TopTargetLocationsResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  top0: (json['top_0'] as List<dynamic>).map((e) => RadarGetAttacksLayer3TopTargetLocationsResponseResultTop0.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Metadata for the results.
final RadarGetAttacksLayer3TopTargetLocationsResponseResultMeta meta;

final List<RadarGetAttacksLayer3TopTargetLocationsResponseResultTop0> top0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'top_0': top0.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('top_0'); } 
RadarGetAttacksLayer3TopTargetLocationsResponseResult copyWith({RadarGetAttacksLayer3TopTargetLocationsResponseResultMeta? meta, List<RadarGetAttacksLayer3TopTargetLocationsResponseResultTop0>? top0, }) { return RadarGetAttacksLayer3TopTargetLocationsResponseResult(
  meta: meta ?? this.meta,
  top0: top0 ?? this.top0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer3TopTargetLocationsResponseResult &&
          meta == other.meta &&
          listEquals(top0, other.top0); } 
@override int get hashCode { return Object.hash(meta, Object.hashAll(top0)); } 
@override String toString() { return 'RadarGetAttacksLayer3TopTargetLocationsResponseResult(meta: $meta, top0: $top0)'; } 
 }
