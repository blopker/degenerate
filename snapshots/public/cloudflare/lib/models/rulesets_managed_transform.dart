// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The human-readable identifier of the Managed Transform.
extension type const RulesetsManagedTransformId(String value) {
factory RulesetsManagedTransformId.fromJson(String json) => RulesetsManagedTransformId(json);

String toJson() => value;

}
/// A Managed Transform object.
@immutable final class RulesetsManagedTransform {const RulesetsManagedTransform({required this.enabled, required this.hasConflict, required this.id, this.conflictsWith, });

factory RulesetsManagedTransform.fromJson(Map<String, dynamic> json) { return RulesetsManagedTransform(
  conflictsWith: (json['conflicts_with'] as List<dynamic>?)?.map((e) => RulesetsManagedTransformId.fromJson(e as String)).toList(),
  enabled: json['enabled'] as bool,
  hasConflict: json['has_conflict'] as bool,
  id: RulesetsManagedTransformId.fromJson(json['id'] as String),
); }

/// The Managed Transforms that this Managed Transform conflicts with.
final List<RulesetsManagedTransformId>? conflictsWith;

/// Whether the Managed Transform is enabled.
final bool enabled;

/// Whether the Managed Transform conflicts with the currently-enabled Managed Transforms.
final bool hasConflict;

final RulesetsManagedTransformId id;

Map<String, dynamic> toJson() { return {
  if (conflictsWith != null) 'conflicts_with': conflictsWith?.map((e) => e.toJson()).toList(),
  'enabled': enabled,
  'has_conflict': hasConflict,
  'id': id.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('has_conflict') && json['has_conflict'] is bool &&
      json.containsKey('id'); } 
RulesetsManagedTransform copyWith({List<RulesetsManagedTransformId> Function()? conflictsWith, bool? enabled, bool? hasConflict, RulesetsManagedTransformId? id, }) { return RulesetsManagedTransform(
  conflictsWith: conflictsWith != null ? conflictsWith() : this.conflictsWith,
  enabled: enabled ?? this.enabled,
  hasConflict: hasConflict ?? this.hasConflict,
  id: id ?? this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetsManagedTransform &&
          listEquals(conflictsWith, other.conflictsWith) &&
          enabled == other.enabled &&
          hasConflict == other.hasConflict &&
          id == other.id; } 
@override int get hashCode { return Object.hash(Object.hashAll(conflictsWith ?? const []), enabled, hasConflict, id); } 
@override String toString() { return 'RulesetsManagedTransform(conflictsWith: $conflictsWith, enabled: $enabled, hasConflict: $hasConflict, id: $id)'; } 
 }
