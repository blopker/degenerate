// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Type of matcher. Default is 'all'.
@immutable final class EmailRuleCatchallMatcherType {const EmailRuleCatchallMatcherType._(this.value);

factory EmailRuleCatchallMatcherType.fromJson(String json) { return switch (json) {
  'all' => all,
  _ => EmailRuleCatchallMatcherType._(json),
}; }

static const EmailRuleCatchallMatcherType all = EmailRuleCatchallMatcherType._('all');

static const List<EmailRuleCatchallMatcherType> values = [all];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EmailRuleCatchallMatcherType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EmailRuleCatchallMatcherType($value)'; } 
 }
/// Matcher for catch-all routing rule.
@immutable final class EmailRuleCatchallMatcher {const EmailRuleCatchallMatcher({required this.type});

factory EmailRuleCatchallMatcher.fromJson(Map<String, dynamic> json) { return EmailRuleCatchallMatcher(
  type: EmailRuleCatchallMatcherType.fromJson(json['type'] as String),
); }

/// Type of matcher. Default is 'all'.
final EmailRuleCatchallMatcherType type;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
EmailRuleCatchallMatcher copyWith({EmailRuleCatchallMatcherType? type}) { return EmailRuleCatchallMatcher(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailRuleCatchallMatcher &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'EmailRuleCatchallMatcher(type: $type)'; } 
 }
