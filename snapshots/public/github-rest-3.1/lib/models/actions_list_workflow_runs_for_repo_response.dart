// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workflow_run.dart';@immutable final class ActionsListWorkflowRunsForRepoResponse {const ActionsListWorkflowRunsForRepoResponse({required this.totalCount, required this.workflowRuns, });

factory ActionsListWorkflowRunsForRepoResponse.fromJson(Map<String, dynamic> json) { return ActionsListWorkflowRunsForRepoResponse(
  totalCount: (json['total_count'] as num).toInt(),
  workflowRuns: (json['workflow_runs'] as List<dynamic>).map((e) => WorkflowRun.fromJson(e as Map<String, dynamic>)).toList(),
); }

final int totalCount;

final List<WorkflowRun> workflowRuns;

Map<String, dynamic> toJson() { return {
  'total_count': totalCount,
  'workflow_runs': workflowRuns.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('total_count') && json['total_count'] is num &&
      json.containsKey('workflow_runs'); } 
ActionsListWorkflowRunsForRepoResponse copyWith({int? totalCount, List<WorkflowRun>? workflowRuns, }) { return ActionsListWorkflowRunsForRepoResponse(
  totalCount: totalCount ?? this.totalCount,
  workflowRuns: workflowRuns ?? this.workflowRuns,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsListWorkflowRunsForRepoResponse &&
          totalCount == other.totalCount &&
          listEquals(workflowRuns, other.workflowRuns); } 
@override int get hashCode { return Object.hash(totalCount, Object.hashAll(workflowRuns)); } 
@override String toString() { return 'ActionsListWorkflowRunsForRepoResponse(totalCount: $totalCount, workflowRuns: $workflowRuns)'; } 
 }
