// GENERATED CODE - DO NOT MODIFY BY HAND

import 'wor_list_workflows_response_result_instances.dart';final class WorListWorkflowsResponseResult {const WorListWorkflowsResponseResult({required this.className, required this.createdOn, required this.id, required this.instances, required this.modifiedOn, required this.name, required this.scriptName, required this.triggeredOn, });

factory WorListWorkflowsResponseResult.fromJson(Map<String, dynamic> json) { return WorListWorkflowsResponseResult(
  className: json['class_name'] as String,
  createdOn: DateTime.parse(json['created_on'] as String),
  id: json['id'] as String,
  instances: WorListWorkflowsResponseResultInstances.fromJson(json['instances'] as Map<String, dynamic>),
  modifiedOn: DateTime.parse(json['modified_on'] as String),
  name: json['name'] as String,
  scriptName: json['script_name'] as String,
  triggeredOn: json['triggered_on'] != null ? DateTime.parse(json['triggered_on'] as String) : null,
); }

final String className;

final DateTime createdOn;

final String id;

final WorListWorkflowsResponseResultInstances instances;

final DateTime modifiedOn;

final String name;

final String scriptName;

final DateTime? triggeredOn;

Map<String, dynamic> toJson() { return {
  'class_name': className,
  'created_on': createdOn.toIso8601String(),
  'id': id,
  'instances': instances.toJson(),
  'modified_on': modifiedOn.toIso8601String(),
  'name': name,
  'script_name': scriptName,
  if (triggeredOn != null) 'triggered_on': triggeredOn?.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('class_name') && json['class_name'] is String &&
      json.containsKey('created_on') && json['created_on'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('instances') &&
      json.containsKey('modified_on') && json['modified_on'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('script_name') && json['script_name'] is String &&
      json.containsKey('triggered_on') && json['triggered_on'] is String; } 
WorListWorkflowsResponseResult copyWith({String? className, DateTime? createdOn, String? id, WorListWorkflowsResponseResultInstances? instances, DateTime? modifiedOn, String? name, String? scriptName, DateTime? Function()? triggeredOn, }) { return WorListWorkflowsResponseResult(
  className: className ?? this.className,
  createdOn: createdOn ?? this.createdOn,
  id: id ?? this.id,
  instances: instances ?? this.instances,
  modifiedOn: modifiedOn ?? this.modifiedOn,
  name: name ?? this.name,
  scriptName: scriptName ?? this.scriptName,
  triggeredOn: triggeredOn != null ? triggeredOn() : this.triggeredOn,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorListWorkflowsResponseResult &&
          className == other.className &&
          createdOn == other.createdOn &&
          id == other.id &&
          instances == other.instances &&
          modifiedOn == other.modifiedOn &&
          name == other.name &&
          scriptName == other.scriptName &&
          triggeredOn == other.triggeredOn; } 
@override int get hashCode { return Object.hash(className, createdOn, id, instances, modifiedOn, name, scriptName, triggeredOn); } 
@override String toString() { return 'WorListWorkflowsResponseResult(className: $className, createdOn: $createdOn, id: $id, instances: $instances, modifiedOn: $modifiedOn, name: $name, scriptName: $scriptName, triggeredOn: $triggeredOn)'; } 
 }
