// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'chatkit_workflow_tracing.dart';/// Workflow metadata and state returned for the session.
@immutable final class ChatkitWorkflow {const ChatkitWorkflow({required this.id, required this.version, required this.stateVariables, required this.tracing, });

factory ChatkitWorkflow.fromJson(Map<String, dynamic> json) { return ChatkitWorkflow(
  id: json['id'] as String,
  version: json['version'] as String?,
  stateVariables: json['state_variables'] as Map<String, dynamic>?,
  tracing: ChatkitWorkflowTracing.fromJson(json['tracing'] as Map<String, dynamic>),
); }

/// Identifier of the workflow backing the session.
final String id;

/// Specific workflow version used for the session. Defaults to null when using the latest deployment.
final String? version;

/// State variable key-value pairs applied when invoking the workflow. Defaults to null when no overrides were provided.
final Map<String,dynamic>? stateVariables;

/// Tracing settings applied to the workflow.
final ChatkitWorkflowTracing tracing;

Map<String, dynamic> toJson() { return {
  'id': id,
  'version': ?version,
  'state_variables': ?stateVariables,
  'tracing': tracing.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('version') && json['version'] is String &&
      json.containsKey('state_variables') &&
      json.containsKey('tracing'); } 
ChatkitWorkflow copyWith({String? id, String? Function()? version, Map<String, dynamic>? Function()? stateVariables, ChatkitWorkflowTracing? tracing, }) { return ChatkitWorkflow(
  id: id ?? this.id,
  version: version != null ? version() : this.version,
  stateVariables: stateVariables != null ? stateVariables() : this.stateVariables,
  tracing: tracing ?? this.tracing,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ChatkitWorkflow &&
          id == other.id &&
          version == other.version &&
          stateVariables == other.stateVariables &&
          tracing == other.tracing; } 
@override int get hashCode { return Object.hash(id, version, stateVariables, tracing); } 
@override String toString() { return 'ChatkitWorkflow(id: $id, version: $version, stateVariables: $stateVariables, tracing: $tracing)'; } 
 }
