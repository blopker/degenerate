// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_route_update_single_request.dart';final class MagicRouteUpdateManyRequest {const MagicRouteUpdateManyRequest({required this.routes});

factory MagicRouteUpdateManyRequest.fromJson(Map<String, dynamic> json) { return MagicRouteUpdateManyRequest(
  routes: (json['routes'] as List<dynamic>).map((e) => MagicRouteUpdateSingleRequest.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<MagicRouteUpdateSingleRequest> routes;

Map<String, dynamic> toJson() { return {
  'routes': routes.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('routes'); } 
MagicRouteUpdateManyRequest copyWith({List<MagicRouteUpdateSingleRequest>? routes}) { return MagicRouteUpdateManyRequest(
  routes: routes ?? this.routes,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicRouteUpdateManyRequest &&
          listEquals(routes, other.routes); } 
@override int get hashCode { return Object.hashAll(routes).hashCode; } 
@override String toString() { return 'MagicRouteUpdateManyRequest(routes: $routes)'; } 
 }
