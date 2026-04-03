// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'scoped_resource_selector_requirement.dart';/// A scope selector represents the AND of the selectors represented by the scoped-resource selector requirements.
@immutable final class ScopeSelector {const ScopeSelector({this.matchExpressions});

factory ScopeSelector.fromJson(Map<String, dynamic> json) { return ScopeSelector(
  matchExpressions: (json['matchExpressions'] as List<dynamic>?)?.map((e) => ScopedResourceSelectorRequirement.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// A list of scope selector requirements by scope of the resources.
final List<ScopedResourceSelectorRequirement>? matchExpressions;

Map<String, dynamic> toJson() { return {
  if (matchExpressions != null) 'matchExpressions': matchExpressions?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'matchExpressions'}.contains(key)); } 
ScopeSelector copyWith({List<ScopedResourceSelectorRequirement> Function()? matchExpressions}) { return ScopeSelector(
  matchExpressions: matchExpressions != null ? matchExpressions() : this.matchExpressions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ScopeSelector &&
          listEquals(matchExpressions, other.matchExpressions); } 
@override int get hashCode { return Object.hashAll(matchExpressions ?? const []).hashCode; } 
@override String toString() { return 'ScopeSelector(matchExpressions: $matchExpressions)'; } 
 }
