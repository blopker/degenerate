// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_bgp_routes_realtime_response_result_meta.dart';import 'radar_get_bgp_routes_realtime_response_result_routes.dart';final class RadarGetBgpRoutesRealtimeResponseResult {const RadarGetBgpRoutesRealtimeResponseResult({required this.meta, required this.routes, });

factory RadarGetBgpRoutesRealtimeResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetBgpRoutesRealtimeResponseResult(
  meta: RadarGetBgpRoutesRealtimeResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  routes: (json['routes'] as List<dynamic>).map((e) => RadarGetBgpRoutesRealtimeResponseResultRoutes.fromJson(e as Map<String, dynamic>)).toList(),
); }

final RadarGetBgpRoutesRealtimeResponseResultMeta meta;

final List<RadarGetBgpRoutesRealtimeResponseResultRoutes> routes;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'routes': routes.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('routes'); } 
RadarGetBgpRoutesRealtimeResponseResult copyWith({RadarGetBgpRoutesRealtimeResponseResultMeta? meta, List<RadarGetBgpRoutesRealtimeResponseResultRoutes>? routes, }) { return RadarGetBgpRoutesRealtimeResponseResult(
  meta: meta ?? this.meta,
  routes: routes ?? this.routes,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetBgpRoutesRealtimeResponseResult &&
          meta == other.meta &&
          listEquals(routes, other.routes); } 
@override int get hashCode { return Object.hash(meta, Object.hashAll(routes)); } 
@override String toString() { return 'RadarGetBgpRoutesRealtimeResponseResult(meta: $meta, routes: $routes)'; } 
 }
