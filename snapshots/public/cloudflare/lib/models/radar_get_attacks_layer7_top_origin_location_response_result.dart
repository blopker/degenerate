// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_attacks_layer7_top_origin_location_response_result_meta.dart';import 'radar_get_attacks_layer7_top_origin_location_response_result_top0.dart';final class RadarGetAttacksLayer7TopOriginLocationResponseResult {const RadarGetAttacksLayer7TopOriginLocationResponseResult({required this.meta, required this.top0, });

factory RadarGetAttacksLayer7TopOriginLocationResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer7TopOriginLocationResponseResult(
  meta: RadarGetAttacksLayer7TopOriginLocationResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  top0: (json['top_0'] as List<dynamic>).map((e) => RadarGetAttacksLayer7TopOriginLocationResponseResultTop0.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Metadata for the results.
final RadarGetAttacksLayer7TopOriginLocationResponseResultMeta meta;

final List<RadarGetAttacksLayer7TopOriginLocationResponseResultTop0> top0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'top_0': top0.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('top_0'); } 
RadarGetAttacksLayer7TopOriginLocationResponseResult copyWith({RadarGetAttacksLayer7TopOriginLocationResponseResultMeta? meta, List<RadarGetAttacksLayer7TopOriginLocationResponseResultTop0>? top0, }) { return RadarGetAttacksLayer7TopOriginLocationResponseResult(
  meta: meta ?? this.meta,
  top0: top0 ?? this.top0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer7TopOriginLocationResponseResult &&
          meta == other.meta &&
          listEquals(top0, other.top0); } 
@override int get hashCode { return Object.hash(meta, Object.hashAll(top0)); } 
@override String toString() { return 'RadarGetAttacksLayer7TopOriginLocationResponseResult(meta: $meta, top0: $top0)'; } 
 }
