// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_route.dart';@immutable final class MagicRouteDeletedResponseResult {const MagicRouteDeletedResponseResult({this.deleted, this.deletedRoute, });

factory MagicRouteDeletedResponseResult.fromJson(Map<String, dynamic> json) { return MagicRouteDeletedResponseResult(
  deleted: json['deleted'] as bool?,
  deletedRoute: json['deleted_route'] != null ? MagicRoute.fromJson(json['deleted_route'] as Map<String, dynamic>) : null,
); }

final bool? deleted;

final MagicRoute? deletedRoute;

Map<String, dynamic> toJson() { return {
  'deleted': ?deleted,
  if (deletedRoute != null) 'deleted_route': deletedRoute?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'deleted', 'deleted_route'}.contains(key)); } 
MagicRouteDeletedResponseResult copyWith({bool Function()? deleted, MagicRoute Function()? deletedRoute, }) { return MagicRouteDeletedResponseResult(
  deleted: deleted != null ? deleted() : this.deleted,
  deletedRoute: deletedRoute != null ? deletedRoute() : this.deletedRoute,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicRouteDeletedResponseResult &&
          deleted == other.deleted &&
          deletedRoute == other.deletedRoute; } 
@override int get hashCode { return Object.hash(deleted, deletedRoute); } 
@override String toString() { return 'MagicRouteDeletedResponseResult(deleted: $deleted, deletedRoute: $deletedRoute)'; } 
 }
