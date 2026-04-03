// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_description.dart';import 'magic_identifier.dart';import 'magic_nexthop.dart';import 'magic_prefix.dart';import 'magic_priority.dart';import 'magic_scope.dart';import 'magic_weight.dart';@immutable final class MagicRouteUpdateSingleRequest {const MagicRouteUpdateSingleRequest({required this.nexthop, required this.prefix, required this.priority, required this.id, this.description, this.scope, this.weight, });

factory MagicRouteUpdateSingleRequest.fromJson(Map<String, dynamic> json) { return MagicRouteUpdateSingleRequest(
  description: json['description'] != null ? MagicDescription.fromJson(json['description'] as String) : null,
  nexthop: MagicNexthop.fromJson(json['nexthop'] as String),
  prefix: MagicPrefix.fromJson(json['prefix'] as String),
  priority: MagicPriority.fromJson(json['priority'] as num),
  scope: json['scope'] != null ? MagicScope.fromJson(json['scope'] as Map<String, dynamic>) : null,
  weight: json['weight'] != null ? MagicWeight.fromJson(json['weight'] as num) : null,
  id: MagicIdentifier.fromJson(json['id'] as String),
); }

/// An optional human provided description of the static route.
final MagicDescription? description;

/// The next-hop IP Address for the static route.
final MagicNexthop nexthop;

/// IP Prefix in Classless Inter-Domain Routing format.
final MagicPrefix prefix;

/// Priority of the static route.
final MagicPriority priority;

final MagicScope? scope;

final MagicWeight? weight;

/// Identifier
final MagicIdentifier id;

Map<String, dynamic> toJson() { return {
  if (description != null) 'description': description?.toJson(),
  'nexthop': nexthop.toJson(),
  'prefix': prefix.toJson(),
  'priority': priority.toJson(),
  if (scope != null) 'scope': scope?.toJson(),
  if (weight != null) 'weight': weight?.toJson(),
  'id': id.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('nexthop') &&
      json.containsKey('prefix') &&
      json.containsKey('priority') &&
      json.containsKey('id'); } 
MagicRouteUpdateSingleRequest copyWith({MagicDescription Function()? description, MagicNexthop? nexthop, MagicPrefix? prefix, MagicPriority? priority, MagicScope Function()? scope, MagicWeight Function()? weight, MagicIdentifier? id, }) { return MagicRouteUpdateSingleRequest(
  description: description != null ? description() : this.description,
  nexthop: nexthop ?? this.nexthop,
  prefix: prefix ?? this.prefix,
  priority: priority ?? this.priority,
  scope: scope != null ? scope() : this.scope,
  weight: weight != null ? weight() : this.weight,
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicRouteUpdateSingleRequest &&
          description == other.description &&
          nexthop == other.nexthop &&
          prefix == other.prefix &&
          priority == other.priority &&
          scope == other.scope &&
          weight == other.weight &&
          id == other.id; } 
@override int get hashCode { return Object.hash(description, nexthop, prefix, priority, scope, weight, id); } 
@override String toString() { return 'MagicRouteUpdateSingleRequest(description: $description, nexthop: $nexthop, prefix: $prefix, priority: $priority, scope: $scope, weight: $weight, id: $id)'; } 
 }
