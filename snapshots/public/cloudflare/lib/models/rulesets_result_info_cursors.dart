// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'rulesets_cursor.dart';/// The set of cursors.
@immutable final class RulesetsResultInfoCursors {const RulesetsResultInfoCursors({required this.after});

factory RulesetsResultInfoCursors.fromJson(Map<String, dynamic> json) { return RulesetsResultInfoCursors(
  after: RulesetsCursor.fromJson(json['after'] as String),
); }

/// The cursor to use for the next page.
final RulesetsCursor after;

Map<String, dynamic> toJson() { return {
  'after': after.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('after'); } 
RulesetsResultInfoCursors copyWith({RulesetsCursor? after}) { return RulesetsResultInfoCursors(
  after: after ?? this.after,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RulesetsResultInfoCursors &&
          after == other.after; } 
@override int get hashCode { return after.hashCode; } 
@override String toString() { return 'RulesetsResultInfoCursors(after: $after)'; } 
 }
