// GENERATED CODE - DO NOT MODIFY BY HAND

import 'magic_route.dart';final class MagicRouteModifiedResponseResult {const MagicRouteModifiedResponseResult({this.modified, this.modifiedRoute, });

factory MagicRouteModifiedResponseResult.fromJson(Map<String, dynamic> json) { return MagicRouteModifiedResponseResult(
  modified: json['modified'] as bool?,
  modifiedRoute: json['modified_route'] != null ? MagicRoute.fromJson(json['modified_route'] as Map<String, dynamic>) : null,
); }

final bool? modified;

final MagicRoute? modifiedRoute;

Map<String, dynamic> toJson() { return {
  'modified': ?modified,
  if (modifiedRoute != null) 'modified_route': modifiedRoute?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'modified', 'modified_route'}.contains(key)); } 
MagicRouteModifiedResponseResult copyWith({bool Function()? modified, MagicRoute Function()? modifiedRoute, }) { return MagicRouteModifiedResponseResult(
  modified: modified != null ? modified() : this.modified,
  modifiedRoute: modifiedRoute != null ? modifiedRoute() : this.modifiedRoute,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicRouteModifiedResponseResult &&
          modified == other.modified &&
          modifiedRoute == other.modifiedRoute; } 
@override int get hashCode { return Object.hash(modified, modifiedRoute); } 
@override String toString() { return 'MagicRouteModifiedResponseResult(modified: $modified, modifiedRoute: $modifiedRoute)'; } 
 }
