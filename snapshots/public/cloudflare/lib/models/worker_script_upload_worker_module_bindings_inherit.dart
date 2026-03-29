// GENERATED CODE - DO NOT MODIFY BY HAND

final class WorkerScriptUploadWorkerModuleBindingsInherit {const WorkerScriptUploadWorkerModuleBindingsInherit._(this.value);

factory WorkerScriptUploadWorkerModuleBindingsInherit.fromJson(String json) { return switch (json) {
  'strict' => strict,
  _ => WorkerScriptUploadWorkerModuleBindingsInherit._(json),
}; }

static const WorkerScriptUploadWorkerModuleBindingsInherit strict = WorkerScriptUploadWorkerModuleBindingsInherit._('strict');

static const List<WorkerScriptUploadWorkerModuleBindingsInherit> values = [strict];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkerScriptUploadWorkerModuleBindingsInherit && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkerScriptUploadWorkerModuleBindingsInherit($value)'; } 
 }
