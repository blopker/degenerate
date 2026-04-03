// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rum_rule_identifier.dart';import 'rum_timestamp.dart';@immutable final class RumRule {const RumRule({this.created, this.host, this.id, this.inclusive, this.isPaused, this.paths, this.priority, });

factory RumRule.fromJson(Map<String, dynamic> json) { return RumRule(
  created: json['created'] != null ? RumTimestamp.fromJson(json['created'] as String) : null,
  host: json['host'] as String?,
  id: json['id'] != null ? RumRuleIdentifier.fromJson(json['id'] as String) : null,
  inclusive: json['inclusive'] as bool?,
  isPaused: json['is_paused'] as bool?,
  paths: (json['paths'] as List<dynamic>?)?.map((e) => e as String).toList(),
  priority: json['priority'] != null ? (json['priority'] as num).toDouble() : null,
); }

final RumTimestamp? created;

/// The hostname the rule will be applied to.
final String? host;

final RumRuleIdentifier? id;

/// Whether the rule includes or excludes traffic from being measured.
final bool? inclusive;

/// Whether the rule is paused or not.
final bool? isPaused;

/// The paths the rule will be applied to.
final List<String>? paths;

final double? priority;

Map<String, dynamic> toJson() { return {
  if (created != null) 'created': created?.toJson(),
  'host': ?host,
  if (id != null) 'id': id?.toJson(),
  'inclusive': ?inclusive,
  'is_paused': ?isPaused,
  'paths': ?paths,
  'priority': ?priority,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'created', 'host', 'id', 'inclusive', 'is_paused', 'paths', 'priority'}.contains(key)); } 
RumRule copyWith({RumTimestamp Function()? created, String Function()? host, RumRuleIdentifier Function()? id, bool Function()? inclusive, bool Function()? isPaused, List<String> Function()? paths, double Function()? priority, }) { return RumRule(
  created: created != null ? created() : this.created,
  host: host != null ? host() : this.host,
  id: id != null ? id() : this.id,
  inclusive: inclusive != null ? inclusive() : this.inclusive,
  isPaused: isPaused != null ? isPaused() : this.isPaused,
  paths: paths != null ? paths() : this.paths,
  priority: priority != null ? priority() : this.priority,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RumRule &&
          created == other.created &&
          host == other.host &&
          id == other.id &&
          inclusive == other.inclusive &&
          isPaused == other.isPaused &&
          listEquals(paths, other.paths) &&
          priority == other.priority; } 
@override int get hashCode { return Object.hash(created, host, id, inclusive, isPaused, Object.hashAll(paths ?? const []), priority); } 
@override String toString() { return 'RumRule(created: $created, host: $host, id: $id, inclusive: $inclusive, isPaused: $isPaused, paths: $paths, priority: $priority)'; } 
 }
