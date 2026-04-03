// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_bgp_top_ases_response_result_meta.dart';import 'radar_get_bgp_top_ases_response_result_top0.dart';@immutable final class RadarGetBgpTopAsesResponseResult {const RadarGetBgpTopAsesResponseResult({required this.meta, required this.top0, });

factory RadarGetBgpTopAsesResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetBgpTopAsesResponseResult(
  meta: RadarGetBgpTopAsesResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  top0: (json['top_0'] as List<dynamic>).map((e) => RadarGetBgpTopAsesResponseResultTop0.fromJson(e as Map<String, dynamic>)).toList(),
); }

final RadarGetBgpTopAsesResponseResultMeta meta;

final List<RadarGetBgpTopAsesResponseResultTop0> top0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'top_0': top0.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('top_0'); } 
RadarGetBgpTopAsesResponseResult copyWith({RadarGetBgpTopAsesResponseResultMeta? meta, List<RadarGetBgpTopAsesResponseResultTop0>? top0, }) { return RadarGetBgpTopAsesResponseResult(
  meta: meta ?? this.meta,
  top0: top0 ?? this.top0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetBgpTopAsesResponseResult &&
          meta == other.meta &&
          listEquals(top0, other.top0); } 
@override int get hashCode { return Object.hash(meta, Object.hashAll(top0)); } 
@override String toString() { return 'RadarGetBgpTopAsesResponseResult(meta: $meta, top0: $top0)'; } 
 }
