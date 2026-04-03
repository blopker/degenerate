// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'r2_r2_action.dart';@immutable final class R2QueuesConfigRules {const R2QueuesConfigRules({required this.actions, this.description, this.prefix, this.suffix, this.createdAt, this.ruleId, });

factory R2QueuesConfigRules.fromJson(Map<String, dynamic> json) { return R2QueuesConfigRules(
  actions: (json['actions'] as List<dynamic>).map((e) => R2R2Action.fromJson(e as String)).toList(),
  description: json['description'] as String?,
  prefix: json['prefix'] as String?,
  suffix: json['suffix'] as String?,
  createdAt: json['createdAt'] as String?,
  ruleId: json['ruleId'] as String?,
); }

/// Array of R2 object actions that will trigger notifications.
final List<R2R2Action> actions;

/// A description that can be used to identify the event notification rule after creation.
final String? description;

/// Notifications will be sent only for objects with this prefix.
final String? prefix;

/// Notifications will be sent only for objects with this suffix.
final String? suffix;

/// Timestamp when the rule was created.
final String? createdAt;

/// Rule ID.
final String? ruleId;

Map<String, dynamic> toJson() { return {
  'actions': actions.map((e) => e.toJson()).toList(),
  'description': ?description,
  'prefix': ?prefix,
  'suffix': ?suffix,
  'createdAt': ?createdAt,
  'ruleId': ?ruleId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('actions'); } 
R2QueuesConfigRules copyWith({List<R2R2Action>? actions, String Function()? description, String Function()? prefix, String Function()? suffix, String Function()? createdAt, String Function()? ruleId, }) { return R2QueuesConfigRules(
  actions: actions ?? this.actions,
  description: description != null ? description() : this.description,
  prefix: prefix != null ? prefix() : this.prefix,
  suffix: suffix != null ? suffix() : this.suffix,
  createdAt: createdAt != null ? createdAt() : this.createdAt,
  ruleId: ruleId != null ? ruleId() : this.ruleId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2QueuesConfigRules &&
          listEquals(actions, other.actions) &&
          description == other.description &&
          prefix == other.prefix &&
          suffix == other.suffix &&
          createdAt == other.createdAt &&
          ruleId == other.ruleId; } 
@override int get hashCode { return Object.hash(Object.hashAll(actions), description, prefix, suffix, createdAt, ruleId); } 
@override String toString() { return 'R2QueuesConfigRules(actions: $actions, description: $description, prefix: $prefix, suffix: $suffix, createdAt: $createdAt, ruleId: $ruleId)'; } 
 }
