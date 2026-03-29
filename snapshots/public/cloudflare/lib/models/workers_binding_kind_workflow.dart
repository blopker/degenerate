// GENERATED CODE - DO NOT MODIFY BY HAND

import 'workers_binding_name.dart';final class WorkersBindingKindWorkflow {const WorkersBindingKindWorkflow({this.className, required this.name, this.scriptName, required this.type, required this.workflowName, });

factory WorkersBindingKindWorkflow.fromJson(Map<String, dynamic> json) { return WorkersBindingKindWorkflow(
  className: json['class_name'] as String?,
  name: WorkersBindingName.fromJson(json['name'] as String),
  scriptName: json['script_name'] as String?,
  type: json['type'] as String,
  workflowName: json['workflow_name'] as String,
); }

/// Class name of the Workflow. Should only be provided if the Workflow belongs to this script.
final String? className;

final WorkersBindingName name;

/// Script name that contains the Workflow. If not provided, defaults to this script name.
final String? scriptName;

/// The kind of resource that the binding provides.
final String type;

/// Name of the Workflow to bind to.
final String workflowName;

Map<String, dynamic> toJson() { return {
  'class_name': ?className,
  'name': name.toJson(),
  'script_name': ?scriptName,
  'type': type,
  'workflow_name': workflowName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') &&
      json.containsKey('type') && json['type'] is String &&
      json.containsKey('workflow_name') && json['workflow_name'] is String; } 
WorkersBindingKindWorkflow copyWith({String Function()? className, WorkersBindingName? name, String Function()? scriptName, String? type, String? workflowName, }) { return WorkersBindingKindWorkflow(
  className: className != null ? className() : this.className,
  name: name ?? this.name,
  scriptName: scriptName != null ? scriptName() : this.scriptName,
  type: type ?? this.type,
  workflowName: workflowName ?? this.workflowName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersBindingKindWorkflow &&
          className == other.className &&
          name == other.name &&
          scriptName == other.scriptName &&
          type == other.type &&
          workflowName == other.workflowName; } 
@override int get hashCode { return Object.hash(className, name, scriptName, type, workflowName); } 
@override String toString() { return 'WorkersBindingKindWorkflow(className: $className, name: $name, scriptName: $scriptName, type: $type, workflowName: $workflowName)'; } 
 }
