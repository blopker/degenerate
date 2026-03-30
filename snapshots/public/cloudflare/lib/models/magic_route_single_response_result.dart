// GENERATED CODE - DO NOT MODIFY BY HAND

import 'magic_route.dart';final class MagicRouteSingleResponseResult {const MagicRouteSingleResponseResult({this.route});

factory MagicRouteSingleResponseResult.fromJson(Map<String, dynamic> json) { return MagicRouteSingleResponseResult(
  route: json['route'] != null ? MagicRoute.fromJson(json['route'] as Map<String, dynamic>) : null,
); }

final MagicRoute? route;

Map<String, dynamic> toJson() { return {
  if (route != null) 'route': route?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'route'}.contains(key)); } 
MagicRouteSingleResponseResult copyWith({MagicRoute Function()? route}) { return MagicRouteSingleResponseResult(
  route: route != null ? route() : this.route,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicRouteSingleResponseResult &&
          route == other.route; } 
@override int get hashCode { return route.hashCode; } 
@override String toString() { return 'MagicRouteSingleResponseResult(route: $route)'; } 
 }
