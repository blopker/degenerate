// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'label_selector_requirement.dart';/// A label selector is a label query over a set of resources. The result of matchLabels and matchExpressions are ANDed. An empty label selector matches all objects. A null label selector matches no objects.
final class LabelSelector {const LabelSelector({this.matchExpressions, this.matchLabels, });

factory LabelSelector.fromJson(Map<String, dynamic> json) { return LabelSelector(
  matchExpressions: (json['matchExpressions'] as List<dynamic>?)?.map((e) => LabelSelectorRequirement.fromJson(e as Map<String, dynamic>)).toList(),
  matchLabels: (json['matchLabels'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
); }

/// matchExpressions is a list of label selector requirements. The requirements are ANDed.
final List<LabelSelectorRequirement>? matchExpressions;

/// matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is equivalent to an element of matchExpressions, whose key field is "key", the operator is "In", and the values array contains only "value". The requirements are ANDed.
final Map<String,String>? matchLabels;

Map<String, dynamic> toJson() { return {
  if (matchExpressions != null) 'matchExpressions': matchExpressions?.map((e) => e.toJson()).toList(),
  'matchLabels': ?matchLabels,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
LabelSelector copyWith({List<LabelSelectorRequirement> Function()? matchExpressions, Map<String, String> Function()? matchLabels, }) { return LabelSelector(
  matchExpressions: matchExpressions != null ? matchExpressions() : this.matchExpressions,
  matchLabels: matchLabels != null ? matchLabels() : this.matchLabels,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is LabelSelector &&
          listEquals(matchExpressions, other.matchExpressions) &&
          matchLabels == other.matchLabels; } 
@override int get hashCode { return Object.hash(Object.hashAll(matchExpressions ?? const []), matchLabels); } 
@override String toString() { return 'LabelSelector(matchExpressions: $matchExpressions, matchLabels: $matchLabels)'; } 
 }
