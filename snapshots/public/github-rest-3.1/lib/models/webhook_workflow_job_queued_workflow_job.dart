// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhook_workflow_job_queued_workflow_job_steps.dart';@immutable final class WebhookWorkflowJobQueuedWorkflowJobStatus {const WebhookWorkflowJobQueuedWorkflowJobStatus._(this.value);

factory WebhookWorkflowJobQueuedWorkflowJobStatus.fromJson(String json) { return switch (json) {
  'queued' => queued,
  'in_progress' => inProgress,
  'completed' => completed,
  'waiting' => waiting,
  _ => WebhookWorkflowJobQueuedWorkflowJobStatus._(json),
}; }

static const WebhookWorkflowJobQueuedWorkflowJobStatus queued = WebhookWorkflowJobQueuedWorkflowJobStatus._('queued');

static const WebhookWorkflowJobQueuedWorkflowJobStatus inProgress = WebhookWorkflowJobQueuedWorkflowJobStatus._('in_progress');

static const WebhookWorkflowJobQueuedWorkflowJobStatus completed = WebhookWorkflowJobQueuedWorkflowJobStatus._('completed');

static const WebhookWorkflowJobQueuedWorkflowJobStatus waiting = WebhookWorkflowJobQueuedWorkflowJobStatus._('waiting');

static const List<WebhookWorkflowJobQueuedWorkflowJobStatus> values = [queued, inProgress, completed, waiting];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookWorkflowJobQueuedWorkflowJobStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookWorkflowJobQueuedWorkflowJobStatus($value)'; } 
 }
@immutable final class WebhookWorkflowJobQueuedWorkflowJob {const WebhookWorkflowJobQueuedWorkflowJob({required this.checkRunUrl, required this.completedAt, required this.conclusion, required this.createdAt, required this.headSha, required this.htmlUrl, required this.id, required this.labels, required this.name, required this.nodeId, required this.runAttempt, required this.runId, required this.runUrl, required this.runnerGroupId, required this.runnerGroupName, required this.runnerId, required this.runnerName, required this.startedAt, required this.status, required this.headBranch, required this.workflowName, required this.steps, required this.url, });

factory WebhookWorkflowJobQueuedWorkflowJob.fromJson(Map<String, dynamic> json) { return WebhookWorkflowJobQueuedWorkflowJob(
  checkRunUrl: Uri.parse(json['check_run_url'] as String),
  completedAt: json['completed_at'] as String?,
  conclusion: json['conclusion'] as String?,
  createdAt: json['created_at'] as String,
  headSha: json['head_sha'] as String,
  htmlUrl: Uri.parse(json['html_url'] as String),
  id: (json['id'] as num).toInt(),
  labels: (json['labels'] as List<dynamic>).map((e) => e as String).toList(),
  name: json['name'] as String,
  nodeId: json['node_id'] as String,
  runAttempt: (json['run_attempt'] as num).toInt(),
  runId: (json['run_id'] as num).toDouble(),
  runUrl: Uri.parse(json['run_url'] as String),
  runnerGroupId: json['runner_group_id'] != null ? (json['runner_group_id'] as num).toInt() : null,
  runnerGroupName: json['runner_group_name'] as String?,
  runnerId: json['runner_id'] != null ? (json['runner_id'] as num).toInt() : null,
  runnerName: json['runner_name'] as String?,
  startedAt: DateTime.parse(json['started_at'] as String),
  status: WebhookWorkflowJobQueuedWorkflowJobStatus.fromJson(json['status'] as String),
  headBranch: json['head_branch'] as String?,
  workflowName: json['workflow_name'] as String?,
  steps: (json['steps'] as List<dynamic>).map((e) => WebhookWorkflowJobQueuedWorkflowJobSteps.fromJson(e as Map<String, dynamic>)).toList(),
  url: Uri.parse(json['url'] as String),
); }

final Uri checkRunUrl;

final String? completedAt;

final String? conclusion;

/// The time that the job created.
final String createdAt;

final String headSha;

final Uri htmlUrl;

final int id;

final List<String> labels;

final String name;

final String nodeId;

final int runAttempt;

final double runId;

final Uri runUrl;

final int? runnerGroupId;

final String? runnerGroupName;

final int? runnerId;

final String? runnerName;

final DateTime startedAt;

final WebhookWorkflowJobQueuedWorkflowJobStatus status;

/// The name of the current branch.
final String? headBranch;

/// The name of the workflow.
final String? workflowName;

final List<WebhookWorkflowJobQueuedWorkflowJobSteps> steps;

final Uri url;

Map<String, dynamic> toJson() { return {
  'check_run_url': checkRunUrl.toString(),
  'completed_at': ?completedAt,
  'conclusion': ?conclusion,
  'created_at': createdAt,
  'head_sha': headSha,
  'html_url': htmlUrl.toString(),
  'id': id,
  'labels': labels,
  'name': name,
  'node_id': nodeId,
  'run_attempt': runAttempt,
  'run_id': runId,
  'run_url': runUrl.toString(),
  'runner_group_id': ?runnerGroupId,
  'runner_group_name': ?runnerGroupName,
  'runner_id': ?runnerId,
  'runner_name': ?runnerName,
  'started_at': startedAt.toIso8601String(),
  'status': status.toJson(),
  'head_branch': ?headBranch,
  'workflow_name': ?workflowName,
  'steps': steps.map((e) => e.toJson()).toList(),
  'url': url.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('check_run_url') && json['check_run_url'] is String &&
      json.containsKey('completed_at') && json['completed_at'] is String &&
      json.containsKey('conclusion') && json['conclusion'] is String &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('head_sha') && json['head_sha'] is String &&
      json.containsKey('html_url') && json['html_url'] is String &&
      json.containsKey('id') && json['id'] is num &&
      json.containsKey('labels') &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('node_id') && json['node_id'] is String &&
      json.containsKey('run_attempt') && json['run_attempt'] is num &&
      json.containsKey('run_id') && json['run_id'] is num &&
      json.containsKey('run_url') && json['run_url'] is String &&
      json.containsKey('runner_group_id') && json['runner_group_id'] is num &&
      json.containsKey('runner_group_name') && json['runner_group_name'] is String &&
      json.containsKey('runner_id') && json['runner_id'] is num &&
      json.containsKey('runner_name') && json['runner_name'] is String &&
      json.containsKey('started_at') && json['started_at'] is String &&
      json.containsKey('status') &&
      json.containsKey('head_branch') && json['head_branch'] is String &&
      json.containsKey('workflow_name') && json['workflow_name'] is String &&
      json.containsKey('steps') &&
      json.containsKey('url') && json['url'] is String; } 
WebhookWorkflowJobQueuedWorkflowJob copyWith({Uri? checkRunUrl, String? Function()? completedAt, String? Function()? conclusion, String? createdAt, String? headSha, Uri? htmlUrl, int? id, List<String>? labels, String? name, String? nodeId, int? runAttempt, double? runId, Uri? runUrl, int? Function()? runnerGroupId, String? Function()? runnerGroupName, int? Function()? runnerId, String? Function()? runnerName, DateTime? startedAt, WebhookWorkflowJobQueuedWorkflowJobStatus? status, String? Function()? headBranch, String? Function()? workflowName, List<WebhookWorkflowJobQueuedWorkflowJobSteps>? steps, Uri? url, }) { return WebhookWorkflowJobQueuedWorkflowJob(
  checkRunUrl: checkRunUrl ?? this.checkRunUrl,
  completedAt: completedAt != null ? completedAt() : this.completedAt,
  conclusion: conclusion != null ? conclusion() : this.conclusion,
  createdAt: createdAt ?? this.createdAt,
  headSha: headSha ?? this.headSha,
  htmlUrl: htmlUrl ?? this.htmlUrl,
  id: id ?? this.id,
  labels: labels ?? this.labels,
  name: name ?? this.name,
  nodeId: nodeId ?? this.nodeId,
  runAttempt: runAttempt ?? this.runAttempt,
  runId: runId ?? this.runId,
  runUrl: runUrl ?? this.runUrl,
  runnerGroupId: runnerGroupId != null ? runnerGroupId() : this.runnerGroupId,
  runnerGroupName: runnerGroupName != null ? runnerGroupName() : this.runnerGroupName,
  runnerId: runnerId != null ? runnerId() : this.runnerId,
  runnerName: runnerName != null ? runnerName() : this.runnerName,
  startedAt: startedAt ?? this.startedAt,
  status: status ?? this.status,
  headBranch: headBranch != null ? headBranch() : this.headBranch,
  workflowName: workflowName != null ? workflowName() : this.workflowName,
  steps: steps ?? this.steps,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookWorkflowJobQueuedWorkflowJob &&
          checkRunUrl == other.checkRunUrl &&
          completedAt == other.completedAt &&
          conclusion == other.conclusion &&
          createdAt == other.createdAt &&
          headSha == other.headSha &&
          htmlUrl == other.htmlUrl &&
          id == other.id &&
          listEquals(labels, other.labels) &&
          name == other.name &&
          nodeId == other.nodeId &&
          runAttempt == other.runAttempt &&
          runId == other.runId &&
          runUrl == other.runUrl &&
          runnerGroupId == other.runnerGroupId &&
          runnerGroupName == other.runnerGroupName &&
          runnerId == other.runnerId &&
          runnerName == other.runnerName &&
          startedAt == other.startedAt &&
          status == other.status &&
          headBranch == other.headBranch &&
          workflowName == other.workflowName &&
          listEquals(steps, other.steps) &&
          url == other.url; } 
@override int get hashCode { return Object.hashAll([checkRunUrl, completedAt, conclusion, createdAt, headSha, htmlUrl, id, Object.hashAll(labels), name, nodeId, runAttempt, runId, runUrl, runnerGroupId, runnerGroupName, runnerId, runnerName, startedAt, status, headBranch, workflowName, Object.hashAll(steps), url]); } 
@override String toString() { return 'WebhookWorkflowJobQueuedWorkflowJob(checkRunUrl: $checkRunUrl, completedAt: $completedAt, conclusion: $conclusion, createdAt: $createdAt, headSha: $headSha, htmlUrl: $htmlUrl, id: $id, labels: $labels, name: $name, nodeId: $nodeId, runAttempt: $runAttempt, runId: $runId, runUrl: $runUrl, runnerGroupId: $runnerGroupId, runnerGroupName: $runnerGroupName, runnerId: $runnerId, runnerName: $runnerName, startedAt: $startedAt, status: $status, headBranch: $headBranch, workflowName: $workflowName, steps: $steps, url: $url)'; } 
 }
