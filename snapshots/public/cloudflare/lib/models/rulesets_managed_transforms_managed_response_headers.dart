// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_managed_transform_id.dart';@immutable final class RulesetsManagedTransformsManagedResponseHeaders {const RulesetsManagedTransformsManagedResponseHeaders({required this.enabled, required this.hasConflict, required this.id, this.conflictsWith, });

factory RulesetsManagedTransformsManagedResponseHeaders.fromJson(Map<String, dynamic> json) { return RulesetsManagedTransformsManagedResponseHeaders(
  conflictsWith: (json['conflicts_with'] as List<dynamic>?)?.map((e) => RulesetsManagedTransformId.fromJson(e as String)).toList(),
  enabled: json['enabled'] as bool,
  hasConflict: json['has_conflict'] as bool,
  id: json['id'],
); }

/// The Managed Transforms that this Managed Transform conflicts with.
final List<RulesetsManagedTransformId>? conflictsWith;

/// Whether the Managed Transform is enabled.
final bool enabled;

/// Whether the Managed Transform conflicts with the currently-enabled Managed Transforms.
final bool hasConflict;

final dynamic id;

Map<String, dynamic> toJson() { return {
  if (conflictsWith != null) 'conflicts_with': conflictsWith?.map((e) => e.toJson()).toList(),
  'enabled': enabled,
  'has_conflict': hasConflict,
  'id': ?id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('has_conflict') && json['has_conflict'] is bool &&
      json.containsKey('id'); } 
RulesetsManagedTransformsManagedResponseHeaders copyWith({List<RulesetsManagedTransformId> Function()? conflictsWith, bool? enabled, bool? hasConflict, dynamic Function()? id, }) { return RulesetsManagedTransformsManagedResponseHeaders(
  conflictsWith: conflictsWith != null ? conflictsWith() : this.conflictsWith,
  enabled: enabled ?? this.enabled,
  hasConflict: hasConflict ?? this.hasConflict,
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetsManagedTransformsManagedResponseHeaders &&
          listEquals(conflictsWith, other.conflictsWith) &&
          enabled == other.enabled &&
          hasConflict == other.hasConflict &&
          id == other.id; } 
@override int get hashCode { return Object.hash(Object.hashAll(conflictsWith ?? const []), enabled, hasConflict, id); } 
@override String toString() { return 'RulesetsManagedTransformsManagedResponseHeaders(conflictsWith: $conflictsWith, enabled: $enabled, hasConflict: $hasConflict, id: $id)'; } 
 }
