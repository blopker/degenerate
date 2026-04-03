// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workflow_run_usage_billable_ubuntu_job_runs.dart';@immutable final class WorkflowRunUsageBillableUbuntu {const WorkflowRunUsageBillableUbuntu({required this.totalMs, required this.jobs, this.jobRuns, });

factory WorkflowRunUsageBillableUbuntu.fromJson(Map<String, dynamic> json) { return WorkflowRunUsageBillableUbuntu(
  totalMs: (json['total_ms'] as num).toInt(),
  jobs: (json['jobs'] as num).toInt(),
  jobRuns: (json['job_runs'] as List<dynamic>?)?.map((e) => WorkflowRunUsageBillableUbuntuJobRuns.fromJson(e as Map<String, dynamic>)).toList(),
); }

final int totalMs;

final int jobs;

final List<WorkflowRunUsageBillableUbuntuJobRuns>? jobRuns;

Map<String, dynamic> toJson() { return {
  'total_ms': totalMs,
  'jobs': jobs,
  if (jobRuns != null) 'job_runs': jobRuns?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('total_ms') && json['total_ms'] is num &&
      json.containsKey('jobs') && json['jobs'] is num; } 
WorkflowRunUsageBillableUbuntu copyWith({int? totalMs, int? jobs, List<WorkflowRunUsageBillableUbuntuJobRuns> Function()? jobRuns, }) { return WorkflowRunUsageBillableUbuntu(
  totalMs: totalMs ?? this.totalMs,
  jobs: jobs ?? this.jobs,
  jobRuns: jobRuns != null ? jobRuns() : this.jobRuns,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkflowRunUsageBillableUbuntu &&
          totalMs == other.totalMs &&
          jobs == other.jobs &&
          listEquals(jobRuns, other.jobRuns); } 
@override int get hashCode { return Object.hash(totalMs, jobs, Object.hashAll(jobRuns ?? const [])); } 
@override String toString() { return 'WorkflowRunUsageBillableUbuntu(totalMs: $totalMs, jobs: $jobs, jobRuns: $jobRuns)'; } 
 }
