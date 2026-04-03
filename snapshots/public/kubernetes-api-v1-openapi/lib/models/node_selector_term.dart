// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'node_selector_requirement.dart';/// A null or empty node selector term matches no objects. The requirements of them are ANDed. The TopologySelectorTerm type implements a subset of the NodeSelectorTerm.
@immutable final class NodeSelectorTerm {const NodeSelectorTerm({this.matchExpressions, this.matchFields, });

factory NodeSelectorTerm.fromJson(Map<String, dynamic> json) { return NodeSelectorTerm(
  matchExpressions: (json['matchExpressions'] as List<dynamic>?)?.map((e) => NodeSelectorRequirement.fromJson(e as Map<String, dynamic>)).toList(),
  matchFields: (json['matchFields'] as List<dynamic>?)?.map((e) => NodeSelectorRequirement.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// A list of node selector requirements by node's labels.
final List<NodeSelectorRequirement>? matchExpressions;

/// A list of node selector requirements by node's fields.
final List<NodeSelectorRequirement>? matchFields;

Map<String, dynamic> toJson() { return {
  if (matchExpressions != null) 'matchExpressions': matchExpressions?.map((e) => e.toJson()).toList(),
  if (matchFields != null) 'matchFields': matchFields?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'matchExpressions', 'matchFields'}.contains(key)); } 
NodeSelectorTerm copyWith({List<NodeSelectorRequirement> Function()? matchExpressions, List<NodeSelectorRequirement> Function()? matchFields, }) { return NodeSelectorTerm(
  matchExpressions: matchExpressions != null ? matchExpressions() : this.matchExpressions,
  matchFields: matchFields != null ? matchFields() : this.matchFields,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is NodeSelectorTerm &&
          listEquals(matchExpressions, other.matchExpressions) &&
          listEquals(matchFields, other.matchFields); } 
@override int get hashCode { return Object.hash(Object.hashAll(matchExpressions ?? const []), Object.hashAll(matchFields ?? const [])); } 
@override String toString() { return 'NodeSelectorTerm(matchExpressions: $matchExpressions, matchFields: $matchFields)'; } 
 }
