// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Property to sort results by. Results are sorted in ascending order.
@immutable final class WorkerScriptSearchWorkersOrderBy {const WorkerScriptSearchWorkersOrderBy._(this.value);

factory WorkerScriptSearchWorkersOrderBy.fromJson(String json) { return switch (json) {
  'created_on' => createdOn,
  'modified_on' => modifiedOn,
  'name' => $name,
  _ => WorkerScriptSearchWorkersOrderBy._(json),
}; }

static const WorkerScriptSearchWorkersOrderBy createdOn = WorkerScriptSearchWorkersOrderBy._('created_on');

static const WorkerScriptSearchWorkersOrderBy modifiedOn = WorkerScriptSearchWorkersOrderBy._('modified_on');

static const WorkerScriptSearchWorkersOrderBy $name = WorkerScriptSearchWorkersOrderBy._('name');

static const List<WorkerScriptSearchWorkersOrderBy> values = [createdOn, modifiedOn, $name];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkerScriptSearchWorkersOrderBy && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkerScriptSearchWorkersOrderBy($value)'; } 
 }
