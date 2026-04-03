// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WorkflowRunUsageBillableMacosJobRuns {const WorkflowRunUsageBillableMacosJobRuns({required this.jobId, required this.durationMs, });

factory WorkflowRunUsageBillableMacosJobRuns.fromJson(Map<String, dynamic> json) { return WorkflowRunUsageBillableMacosJobRuns(
  jobId: (json['job_id'] as num).toInt(),
  durationMs: (json['duration_ms'] as num).toInt(),
); }

final int jobId;

final int durationMs;

Map<String, dynamic> toJson() { return {
  'job_id': jobId,
  'duration_ms': durationMs,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('job_id') && json['job_id'] is num &&
      json.containsKey('duration_ms') && json['duration_ms'] is num; } 
WorkflowRunUsageBillableMacosJobRuns copyWith({int? jobId, int? durationMs, }) { return WorkflowRunUsageBillableMacosJobRuns(
  jobId: jobId ?? this.jobId,
  durationMs: durationMs ?? this.durationMs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkflowRunUsageBillableMacosJobRuns &&
          jobId == other.jobId &&
          durationMs == other.durationMs; } 
@override int get hashCode { return Object.hash(jobId, durationMs); } 
@override String toString() { return 'WorkflowRunUsageBillableMacosJobRuns(jobId: $jobId, durationMs: $durationMs)'; } 
 }
