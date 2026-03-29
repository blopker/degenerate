// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_route_delete_id.dart';final class MagicRouteDeleteManyRequest {const MagicRouteDeleteManyRequest({required this.routes});

factory MagicRouteDeleteManyRequest.fromJson(Map<String, dynamic> json) { return MagicRouteDeleteManyRequest(
  routes: (json['routes'] as List<dynamic>).map((e) => MagicRouteDeleteId.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<MagicRouteDeleteId> routes;

Map<String, dynamic> toJson() { return {
  'routes': routes.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('routes'); } 
MagicRouteDeleteManyRequest copyWith({List<MagicRouteDeleteId>? routes}) { return MagicRouteDeleteManyRequest(
  routes: routes ?? this.routes,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicRouteDeleteManyRequest &&
          listEquals(routes, other.routes); } 
@override int get hashCode { return Object.hashAll(routes).hashCode; } 
@override String toString() { return 'MagicRouteDeleteManyRequest(routes: $routes)'; } 
 }
