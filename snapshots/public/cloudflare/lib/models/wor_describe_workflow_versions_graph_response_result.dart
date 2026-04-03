// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WorDescribeWorkflowVersionsGraphResponseResult {const WorDescribeWorkflowVersionsGraphResponseResult({required this.className, required this.createdOn, required this.dag, required this.id, required this.modifiedOn, required this.workflowId, });

factory WorDescribeWorkflowVersionsGraphResponseResult.fromJson(Map<String, dynamic> json) { return WorDescribeWorkflowVersionsGraphResponseResult(
  className: json['class_name'] as String,
  createdOn: DateTime.parse(json['created_on'] as String),
  dag: (json['dag'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
  id: json['id'] as String,
  modifiedOn: DateTime.parse(json['modified_on'] as String),
  workflowId: json['workflow_id'] as String,
); }

final String className;

final DateTime createdOn;

final Map<String,dynamic>? dag;

final String id;

final DateTime modifiedOn;

final String workflowId;

Map<String, dynamic> toJson() { return {
  'class_name': className,
  'created_on': createdOn.toIso8601String(),
  'dag': ?dag,
  'id': id,
  'modified_on': modifiedOn.toIso8601String(),
  'workflow_id': workflowId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('class_name') && json['class_name'] is String &&
      json.containsKey('created_on') && json['created_on'] is String &&
      json.containsKey('dag') &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('modified_on') && json['modified_on'] is String &&
      json.containsKey('workflow_id') && json['workflow_id'] is String; } 
WorDescribeWorkflowVersionsGraphResponseResult copyWith({String? className, DateTime? createdOn, Map<String, dynamic>? Function()? dag, String? id, DateTime? modifiedOn, String? workflowId, }) { return WorDescribeWorkflowVersionsGraphResponseResult(
  className: className ?? this.className,
  createdOn: createdOn ?? this.createdOn,
  dag: dag != null ? dag() : this.dag,
  id: id ?? this.id,
  modifiedOn: modifiedOn ?? this.modifiedOn,
  workflowId: workflowId ?? this.workflowId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorDescribeWorkflowVersionsGraphResponseResult &&
          className == other.className &&
          createdOn == other.createdOn &&
          dag == other.dag &&
          id == other.id &&
          modifiedOn == other.modifiedOn &&
          workflowId == other.workflowId; } 
@override int get hashCode { return Object.hash(className, createdOn, dag, id, modifiedOn, workflowId); } 
@override String toString() { return 'WorDescribeWorkflowVersionsGraphResponseResult(className: $className, createdOn: $createdOn, dag: $dag, id: $id, modifiedOn: $modifiedOn, workflowId: $workflowId)'; } 
 }
