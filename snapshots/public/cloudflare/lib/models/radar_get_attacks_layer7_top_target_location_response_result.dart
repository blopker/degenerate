// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_attacks_layer7_top_target_location_response_result_meta.dart';import 'radar_get_attacks_layer7_top_target_location_response_result_top0.dart';@immutable final class RadarGetAttacksLayer7TopTargetLocationResponseResult {const RadarGetAttacksLayer7TopTargetLocationResponseResult({required this.meta, required this.top0, });

factory RadarGetAttacksLayer7TopTargetLocationResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer7TopTargetLocationResponseResult(
  meta: RadarGetAttacksLayer7TopTargetLocationResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  top0: (json['top_0'] as List<dynamic>).map((e) => RadarGetAttacksLayer7TopTargetLocationResponseResultTop0.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Metadata for the results.
final RadarGetAttacksLayer7TopTargetLocationResponseResultMeta meta;

final List<RadarGetAttacksLayer7TopTargetLocationResponseResultTop0> top0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'top_0': top0.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('top_0'); } 
RadarGetAttacksLayer7TopTargetLocationResponseResult copyWith({RadarGetAttacksLayer7TopTargetLocationResponseResultMeta? meta, List<RadarGetAttacksLayer7TopTargetLocationResponseResultTop0>? top0, }) { return RadarGetAttacksLayer7TopTargetLocationResponseResult(
  meta: meta ?? this.meta,
  top0: top0 ?? this.top0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer7TopTargetLocationResponseResult &&
          meta == other.meta &&
          listEquals(top0, other.top0); } 
@override int get hashCode { return Object.hash(meta, Object.hashAll(top0)); } 
@override String toString() { return 'RadarGetAttacksLayer7TopTargetLocationResponseResult(meta: $meta, top0: $top0)'; } 
 }
