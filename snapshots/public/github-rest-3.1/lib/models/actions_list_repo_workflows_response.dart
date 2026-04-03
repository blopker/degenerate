// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workflow.dart';@immutable final class ActionsListRepoWorkflowsResponse {const ActionsListRepoWorkflowsResponse({required this.totalCount, required this.workflows, });

factory ActionsListRepoWorkflowsResponse.fromJson(Map<String, dynamic> json) { return ActionsListRepoWorkflowsResponse(
  totalCount: (json['total_count'] as num).toInt(),
  workflows: (json['workflows'] as List<dynamic>).map((e) => Workflow.fromJson(e as Map<String, dynamic>)).toList(),
); }

final int totalCount;

final List<Workflow> workflows;

Map<String, dynamic> toJson() { return {
  'total_count': totalCount,
  'workflows': workflows.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('total_count') && json['total_count'] is num &&
      json.containsKey('workflows'); } 
ActionsListRepoWorkflowsResponse copyWith({int? totalCount, List<Workflow>? workflows, }) { return ActionsListRepoWorkflowsResponse(
  totalCount: totalCount ?? this.totalCount,
  workflows: workflows ?? this.workflows,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsListRepoWorkflowsResponse &&
          totalCount == other.totalCount &&
          listEquals(workflows, other.workflows); } 
@override int get hashCode { return Object.hash(totalCount, Object.hashAll(workflows)); } 
@override String toString() { return 'ActionsListRepoWorkflowsResponse(totalCount: $totalCount, workflows: $workflows)'; } 
 }
