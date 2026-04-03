// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_http_top_ases_by_browser_family_response_result_meta.dart';import 'radar_get_http_top_ases_by_browser_family_response_result_top0.dart';@immutable final class RadarGetHttpTopAsesByBrowserFamilyResponseResult {const RadarGetHttpTopAsesByBrowserFamilyResponseResult({required this.meta, required this.top0, });

factory RadarGetHttpTopAsesByBrowserFamilyResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetHttpTopAsesByBrowserFamilyResponseResult(
  meta: RadarGetHttpTopAsesByBrowserFamilyResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  top0: (json['top_0'] as List<dynamic>).map((e) => RadarGetHttpTopAsesByBrowserFamilyResponseResultTop0.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Metadata for the results.
final RadarGetHttpTopAsesByBrowserFamilyResponseResultMeta meta;

final List<RadarGetHttpTopAsesByBrowserFamilyResponseResultTop0> top0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'top_0': top0.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('top_0'); } 
RadarGetHttpTopAsesByBrowserFamilyResponseResult copyWith({RadarGetHttpTopAsesByBrowserFamilyResponseResultMeta? meta, List<RadarGetHttpTopAsesByBrowserFamilyResponseResultTop0>? top0, }) { return RadarGetHttpTopAsesByBrowserFamilyResponseResult(
  meta: meta ?? this.meta,
  top0: top0 ?? this.top0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTopAsesByBrowserFamilyResponseResult &&
          meta == other.meta &&
          listEquals(top0, other.top0); } 
@override int get hashCode { return Object.hash(meta, Object.hashAll(top0)); } 
@override String toString() { return 'RadarGetHttpTopAsesByBrowserFamilyResponseResult(meta: $meta, top0: $top0)'; } 
 }
