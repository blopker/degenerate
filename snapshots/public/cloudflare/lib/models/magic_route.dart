// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_description.dart';import 'magic_identifier.dart';import 'magic_nexthop.dart';import 'magic_prefix.dart';import 'magic_priority.dart';import 'magic_scope.dart';import 'magic_weight.dart';/// When the route was created.
extension type MagicCreatedOn(DateTime value) {
factory MagicCreatedOn.fromJson(String json) => MagicCreatedOn(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
/// When the route was last modified.
extension type MagicModifiedOn(DateTime value) {
factory MagicModifiedOn.fromJson(String json) => MagicModifiedOn(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
@immutable final class MagicRoute {const MagicRoute({required this.id, required this.nexthop, required this.prefix, required this.priority, this.createdOn, this.description, this.modifiedOn, this.scope, this.weight, });

factory MagicRoute.fromJson(Map<String, dynamic> json) { return MagicRoute(
  createdOn: json['created_on'] != null ? MagicCreatedOn.fromJson(json['created_on'] as String) : null,
  description: json['description'] != null ? MagicDescription.fromJson(json['description'] as String) : null,
  id: MagicIdentifier.fromJson(json['id'] as String),
  modifiedOn: json['modified_on'] != null ? MagicModifiedOn.fromJson(json['modified_on'] as String) : null,
  nexthop: MagicNexthop.fromJson(json['nexthop'] as String),
  prefix: MagicPrefix.fromJson(json['prefix'] as String),
  priority: MagicPriority.fromJson(json['priority'] as num),
  scope: json['scope'] != null ? MagicScope.fromJson(json['scope'] as Map<String, dynamic>) : null,
  weight: json['weight'] != null ? MagicWeight.fromJson(json['weight'] as num) : null,
); }

/// When the route was created.
final MagicCreatedOn? createdOn;

/// An optional human provided description of the static route.
final MagicDescription? description;

/// Identifier
final MagicIdentifier id;

/// When the route was last modified.
final MagicModifiedOn? modifiedOn;

/// The next-hop IP Address for the static route.
final MagicNexthop nexthop;

/// IP Prefix in Classless Inter-Domain Routing format.
final MagicPrefix prefix;

/// Priority of the static route.
final MagicPriority priority;

final MagicScope? scope;

final MagicWeight? weight;

Map<String, dynamic> toJson() { return {
  if (createdOn != null) 'created_on': createdOn?.toJson(),
  if (description != null) 'description': description?.toJson(),
  'id': id.toJson(),
  if (modifiedOn != null) 'modified_on': modifiedOn?.toJson(),
  'nexthop': nexthop.toJson(),
  'prefix': prefix.toJson(),
  'priority': priority.toJson(),
  if (scope != null) 'scope': scope?.toJson(),
  if (weight != null) 'weight': weight?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') &&
      json.containsKey('nexthop') &&
      json.containsKey('prefix') &&
      json.containsKey('priority'); } 
MagicRoute copyWith({MagicCreatedOn Function()? createdOn, MagicDescription Function()? description, MagicIdentifier? id, MagicModifiedOn Function()? modifiedOn, MagicNexthop? nexthop, MagicPrefix? prefix, MagicPriority? priority, MagicScope Function()? scope, MagicWeight Function()? weight, }) { return MagicRoute(
  createdOn: createdOn != null ? createdOn() : this.createdOn,
  description: description != null ? description() : this.description,
  id: id ?? this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
  nexthop: nexthop ?? this.nexthop,
  prefix: prefix ?? this.prefix,
  priority: priority ?? this.priority,
  scope: scope != null ? scope() : this.scope,
  weight: weight != null ? weight() : this.weight,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicRoute &&
          createdOn == other.createdOn &&
          description == other.description &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          nexthop == other.nexthop &&
          prefix == other.prefix &&
          priority == other.priority &&
          scope == other.scope &&
          weight == other.weight; } 
@override int get hashCode { return Object.hash(createdOn, description, id, modifiedOn, nexthop, prefix, priority, scope, weight); } 
@override String toString() { return 'MagicRoute(createdOn: $createdOn, description: $description, id: $id, modifiedOn: $modifiedOn, nexthop: $nexthop, prefix: $prefix, priority: $priority, scope: $scope, weight: $weight)'; } 
 }
