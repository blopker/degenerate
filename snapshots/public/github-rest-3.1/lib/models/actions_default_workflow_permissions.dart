// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The default workflow permissions granted to the GITHUB_TOKEN when running workflows.
@immutable final class ActionsDefaultWorkflowPermissions {const ActionsDefaultWorkflowPermissions._(this.value);

factory ActionsDefaultWorkflowPermissions.fromJson(String json) { return switch (json) {
  'read' => read,
  'write' => write,
  _ => ActionsDefaultWorkflowPermissions._(json),
}; }

static const ActionsDefaultWorkflowPermissions read = ActionsDefaultWorkflowPermissions._('read');

static const ActionsDefaultWorkflowPermissions write = ActionsDefaultWorkflowPermissions._('write');

static const List<ActionsDefaultWorkflowPermissions> values = [read, write];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ActionsDefaultWorkflowPermissions && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ActionsDefaultWorkflowPermissions($value)'; } 
 }
