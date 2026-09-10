// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';extension type MagicRouteDeleteIdRequest(dynamic value) {
factory MagicRouteDeleteIdRequest.fromJson(dynamic json) => MagicRouteDeleteIdRequest(json);

dynamic toJson() => value;

}
@immutable final class MagicRouteDeleteManyRequestRequest {const MagicRouteDeleteManyRequestRequest({required this.routes});

factory MagicRouteDeleteManyRequestRequest.fromJson(Map<String, dynamic> json) {return MagicRouteDeleteManyRequestRequest(
  routes: (json['routes'] as List<dynamic>).map((e) => e == null ? null : MagicRouteDeleteIdRequest.fromJson(e as dynamic)).toList(),
);}

final List<MagicRouteDeleteIdRequest?> routes;

Map<String, dynamic> toJson() {return {
  'routes': routes.map((e) => e?.toJson()).toList(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('routes');}
MagicRouteDeleteManyRequestRequest copyWith({List<MagicRouteDeleteIdRequest?>? routes}) {return MagicRouteDeleteManyRequestRequest(
  routes: routes ?? this.routes,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is MagicRouteDeleteManyRequestRequest &&
          listEquals(routes, other.routes);}
@override int get hashCode {return Object.hashAll(routes).hashCode;}
@override String toString() {return 'MagicRouteDeleteManyRequestRequest(routes: $routes)';}
}
