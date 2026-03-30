// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'r2_r2_action.dart';final class R2Rule {const R2Rule({required this.actions, this.description, this.prefix, this.suffix, });

factory R2Rule.fromJson(Map<String, dynamic> json) { return R2Rule(
  actions: (json['actions'] as List<dynamic>).map((e) => R2R2Action.fromJson(e as String)).toList(),
  description: json['description'] as String?,
  prefix: json['prefix'] as String?,
  suffix: json['suffix'] as String?,
); }

/// Array of R2 object actions that will trigger notifications.
final List<R2R2Action> actions;

/// A description that can be used to identify the event notification rule after creation.
final String? description;

/// Notifications will be sent only for objects with this prefix.
final String? prefix;

/// Notifications will be sent only for objects with this suffix.
final String? suffix;

Map<String, dynamic> toJson() { return {
  'actions': actions.map((e) => e.toJson()).toList(),
  'description': ?description,
  'prefix': ?prefix,
  'suffix': ?suffix,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('actions'); } 
R2Rule copyWith({List<R2R2Action>? actions, String Function()? description, String Function()? prefix, String Function()? suffix, }) { return R2Rule(
  actions: actions ?? this.actions,
  description: description != null ? description() : this.description,
  prefix: prefix != null ? prefix() : this.prefix,
  suffix: suffix != null ? suffix() : this.suffix,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2Rule &&
          listEquals(actions, other.actions) &&
          description == other.description &&
          prefix == other.prefix &&
          suffix == other.suffix; } 
@override int get hashCode { return Object.hash(Object.hashAll(actions), description, prefix, suffix); } 
@override String toString() { return 'R2Rule(actions: $actions, description: $description, prefix: $prefix, suffix: $suffix)'; } 
 }
