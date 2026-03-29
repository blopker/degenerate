// GENERATED CODE - DO NOT MODIFY BY HAND

final class TaskType {const TaskType._(this.value);

factory TaskType.fromJson(String json) { return switch (json) {
  'custom' => custom,
  'thought' => thought,
  _ => TaskType._(json),
}; }

static const TaskType custom = TaskType._('custom');

static const TaskType thought = TaskType._('thought');

static const List<TaskType> values = [custom, thought];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TaskType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TaskType($value)'; } 
 }
