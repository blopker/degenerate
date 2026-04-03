// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'magic_description.dart';import 'magic_nexthop.dart';import 'magic_prefix.dart';import 'magic_priority.dart';import 'magic_scope.dart';import 'magic_weight.dart';@immutable final class MagicCreateRouteRequest {const MagicCreateRouteRequest({required this.nexthop, required this.prefix, required this.priority, this.description, this.scope, this.weight, });

factory MagicCreateRouteRequest.fromJson(Map<String, dynamic> json) { return MagicCreateRouteRequest(
  description: json['description'] != null ? MagicDescription.fromJson(json['description'] as String) : null,
  nexthop: MagicNexthop.fromJson(json['nexthop'] as String),
  prefix: MagicPrefix.fromJson(json['prefix'] as String),
  priority: MagicPriority.fromJson(json['priority'] as num),
  scope: json['scope'] != null ? MagicScope.fromJson(json['scope'] as Map<String, dynamic>) : null,
  weight: json['weight'] != null ? MagicWeight.fromJson(json['weight'] as num) : null,
); }

final MagicDescription? description;

final MagicNexthop nexthop;

final MagicPrefix prefix;

final MagicPriority priority;

final MagicScope? scope;

final MagicWeight? weight;

Map<String, dynamic> toJson() { return {
  if (description != null) 'description': description?.toJson(),
  'nexthop': nexthop.toJson(),
  'prefix': prefix.toJson(),
  'priority': priority.toJson(),
  if (scope != null) 'scope': scope?.toJson(),
  if (weight != null) 'weight': weight?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('nexthop') &&
      json.containsKey('prefix') &&
      json.containsKey('priority'); } 
MagicCreateRouteRequest copyWith({MagicDescription Function()? description, MagicNexthop? nexthop, MagicPrefix? prefix, MagicPriority? priority, MagicScope Function()? scope, MagicWeight Function()? weight, }) { return MagicCreateRouteRequest(
  description: description != null ? description() : this.description,
  nexthop: nexthop ?? this.nexthop,
  prefix: prefix ?? this.prefix,
  priority: priority ?? this.priority,
  scope: scope != null ? scope() : this.scope,
  weight: weight != null ? weight() : this.weight,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MagicCreateRouteRequest &&
          description == other.description &&
          nexthop == other.nexthop &&
          prefix == other.prefix &&
          priority == other.priority &&
          scope == other.scope &&
          weight == other.weight; } 
@override int get hashCode { return Object.hash(description, nexthop, prefix, priority, scope, weight); } 
@override String toString() { return 'MagicCreateRouteRequest(description: $description, nexthop: $nexthop, prefix: $prefix, priority: $priority, scope: $scope, weight: $weight)'; } 
 }
