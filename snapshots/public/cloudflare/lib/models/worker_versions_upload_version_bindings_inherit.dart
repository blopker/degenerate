// GENERATED CODE - DO NOT MODIFY BY HAND

final class WorkerVersionsUploadVersionBindingsInherit {const WorkerVersionsUploadVersionBindingsInherit._(this.value);

factory WorkerVersionsUploadVersionBindingsInherit.fromJson(String json) { return switch (json) {
  'strict' => strict,
  _ => WorkerVersionsUploadVersionBindingsInherit._(json),
}; }

static const WorkerVersionsUploadVersionBindingsInherit strict = WorkerVersionsUploadVersionBindingsInherit._('strict');

static const List<WorkerVersionsUploadVersionBindingsInherit> values = [strict];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkerVersionsUploadVersionBindingsInherit && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkerVersionsUploadVersionBindingsInherit($value)'; } 
 }
