// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_route_add_single_request.dart';@immutable final class MagicRouteUpdateManyRequestRequest {const MagicRouteUpdateManyRequestRequest({required this.routes});

factory MagicRouteUpdateManyRequestRequest.fromJson(Map<String, dynamic> json) {return MagicRouteUpdateManyRequestRequest(
  routes: (json['routes'] as List<dynamic>).map((e) => MagicRouteAddSingleRequest.fromJson(e as Map<String, dynamic>)).toList(),
);}

final List<MagicRouteAddSingleRequest> routes;

Map<String, dynamic> toJson() {return {
  'routes': routes.map((e) => e.toJson()).toList(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('routes');}
MagicRouteUpdateManyRequestRequest copyWith({List<MagicRouteAddSingleRequest>? routes}) {return MagicRouteUpdateManyRequestRequest(
  routes: routes ?? this.routes,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is MagicRouteUpdateManyRequestRequest &&
          listEquals(routes, other.routes);}
@override int get hashCode {return Object.hashAll(routes).hashCode;}
@override String toString() {return 'MagicRouteUpdateManyRequestRequest(routes: $routes)';}
}
