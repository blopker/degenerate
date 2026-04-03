// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class R2LockRuleDateConditionType {const R2LockRuleDateConditionType._(this.value);

factory R2LockRuleDateConditionType.fromJson(String json) { return switch (json) {
  'Date' => date,
  _ => R2LockRuleDateConditionType._(json),
}; }

static const R2LockRuleDateConditionType date = R2LockRuleDateConditionType._('Date');

static const List<R2LockRuleDateConditionType> values = [date];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is R2LockRuleDateConditionType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'R2LockRuleDateConditionType($value)'; } 
 }
/// Condition to apply a lock rule to an object until a specific date.
@immutable final class R2LockRuleDateCondition {const R2LockRuleDateCondition({required this.date, required this.type, });

factory R2LockRuleDateCondition.fromJson(Map<String, dynamic> json) { return R2LockRuleDateCondition(
  date: DateTime.parse(json['date'] as String),
  type: R2LockRuleDateConditionType.fromJson(json['type'] as String),
); }

final DateTime date;

final R2LockRuleDateConditionType type;

Map<String, dynamic> toJson() { return {
  'date': date.toIso8601String(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('date') && json['date'] is String &&
      json.containsKey('type'); } 
R2LockRuleDateCondition copyWith({DateTime? date, R2LockRuleDateConditionType? type, }) { return R2LockRuleDateCondition(
  date: date ?? this.date,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2LockRuleDateCondition &&
          date == other.date &&
          type == other.type; } 
@override int get hashCode { return Object.hash(date, type); } 
@override String toString() { return 'R2LockRuleDateCondition(date: $date, type: $type)'; } 
 }
