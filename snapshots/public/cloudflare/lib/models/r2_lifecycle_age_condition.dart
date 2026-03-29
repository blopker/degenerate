// GENERATED CODE - DO NOT MODIFY BY HAND

final class R2LifecycleAgeConditionType {const R2LifecycleAgeConditionType._(this.value);

factory R2LifecycleAgeConditionType.fromJson(String json) { return switch (json) {
  'Age' => age,
  _ => R2LifecycleAgeConditionType._(json),
}; }

static const R2LifecycleAgeConditionType age = R2LifecycleAgeConditionType._('Age');

static const List<R2LifecycleAgeConditionType> values = [age];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is R2LifecycleAgeConditionType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'R2LifecycleAgeConditionType($value)'; } 
 }
/// Condition for lifecycle transitions to apply after an object reaches an age in seconds.
final class R2LifecycleAgeCondition {const R2LifecycleAgeCondition({required this.maxAge, required this.type, });

factory R2LifecycleAgeCondition.fromJson(Map<String, dynamic> json) { return R2LifecycleAgeCondition(
  maxAge: (json['maxAge'] as num).toInt(),
  type: R2LifecycleAgeConditionType.fromJson(json['type'] as String),
); }

final int maxAge;

final R2LifecycleAgeConditionType type;

Map<String, dynamic> toJson() { return {
  'maxAge': maxAge,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('maxAge') && json['maxAge'] is num &&
      json.containsKey('type'); } 
R2LifecycleAgeCondition copyWith({int? maxAge, R2LifecycleAgeConditionType? type, }) { return R2LifecycleAgeCondition(
  maxAge: maxAge ?? this.maxAge,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is R2LifecycleAgeCondition &&
          maxAge == other.maxAge &&
          type == other.type; } 
@override int get hashCode { return Object.hash(maxAge, type); } 
@override String toString() { return 'R2LifecycleAgeCondition(maxAge: $maxAge, type: $type)'; } 
 }
