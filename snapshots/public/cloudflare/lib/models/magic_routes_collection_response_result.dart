// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_route.dart';final class MagicRoutesCollectionResponseResult {const MagicRoutesCollectionResponseResult({this.routes});

factory MagicRoutesCollectionResponseResult.fromJson(Map<String, dynamic> json) { return MagicRoutesCollectionResponseResult(
  routes: (json['routes'] as List<dynamic>?)?.map((e) => MagicRoute.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<MagicRoute>? routes;

Map<String, dynamic> toJson() { return {
  if (routes != null) 'routes': routes?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'routes'}.contains(key)); } 
MagicRoutesCollectionResponseResult copyWith({List<MagicRoute> Function()? routes}) { return MagicRoutesCollectionResponseResult(
  routes: routes != null ? routes() : this.routes,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicRoutesCollectionResponseResult &&
          listEquals(routes, other.routes); } 
@override int get hashCode { return Object.hashAll(routes ?? const []).hashCode; } 
@override String toString() { return 'MagicRoutesCollectionResponseResult(routes: $routes)'; } 
 }
