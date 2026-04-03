// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RepositoryRuleNonFastForwardType {const RepositoryRuleNonFastForwardType._(this.value);

factory RepositoryRuleNonFastForwardType.fromJson(String json) { return switch (json) {
  'non_fast_forward' => nonFastForward,
  _ => RepositoryRuleNonFastForwardType._(json),
}; }

static const RepositoryRuleNonFastForwardType nonFastForward = RepositoryRuleNonFastForwardType._('non_fast_forward');

static const List<RepositoryRuleNonFastForwardType> values = [nonFastForward];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RepositoryRuleNonFastForwardType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RepositoryRuleNonFastForwardType($value)'; } 
 }
/// Prevent users with push access from force pushing to refs.
@immutable final class RepositoryRuleNonFastForward {const RepositoryRuleNonFastForward({required this.type});

factory RepositoryRuleNonFastForward.fromJson(Map<String, dynamic> json) { return RepositoryRuleNonFastForward(
  type: RepositoryRuleNonFastForwardType.fromJson(json['type'] as String),
); }

final RepositoryRuleNonFastForwardType type;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
RepositoryRuleNonFastForward copyWith({RepositoryRuleNonFastForwardType? type}) { return RepositoryRuleNonFastForward(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RepositoryRuleNonFastForward &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'RepositoryRuleNonFastForward(type: $type)'; } 
 }
