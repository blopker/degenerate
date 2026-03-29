// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhook_workflow_run_in_progress_workflow_run_actor.dart';import 'webhook_workflow_run_in_progress_workflow_run_head_commit.dart';import 'webhook_workflow_run_in_progress_workflow_run_head_repository.dart';import 'webhook_workflow_run_in_progress_workflow_run_pull_requests.dart';import 'webhook_workflow_run_in_progress_workflow_run_referenced_workflows.dart';import 'webhook_workflow_run_in_progress_workflow_run_repository.dart';import 'webhook_workflow_run_in_progress_workflow_run_triggering_actor.dart';final class WebhookWorkflowRunInProgressWorkflowRunConclusion {const WebhookWorkflowRunInProgressWorkflowRunConclusion._(this.value);

factory WebhookWorkflowRunInProgressWorkflowRunConclusion.fromJson(String json) { return switch (json) {
  'action_required' => actionRequired,
  'cancelled' => cancelled,
  'failure' => failure,
  'neutral' => neutral,
  'skipped' => skipped,
  'stale' => stale,
  'success' => success,
  'timed_out' => timedOut,
  'null' => $null,
  _ => WebhookWorkflowRunInProgressWorkflowRunConclusion._(json),
}; }

static const WebhookWorkflowRunInProgressWorkflowRunConclusion actionRequired = WebhookWorkflowRunInProgressWorkflowRunConclusion._('action_required');

static const WebhookWorkflowRunInProgressWorkflowRunConclusion cancelled = WebhookWorkflowRunInProgressWorkflowRunConclusion._('cancelled');

static const WebhookWorkflowRunInProgressWorkflowRunConclusion failure = WebhookWorkflowRunInProgressWorkflowRunConclusion._('failure');

static const WebhookWorkflowRunInProgressWorkflowRunConclusion neutral = WebhookWorkflowRunInProgressWorkflowRunConclusion._('neutral');

static const WebhookWorkflowRunInProgressWorkflowRunConclusion skipped = WebhookWorkflowRunInProgressWorkflowRunConclusion._('skipped');

static const WebhookWorkflowRunInProgressWorkflowRunConclusion stale = WebhookWorkflowRunInProgressWorkflowRunConclusion._('stale');

static const WebhookWorkflowRunInProgressWorkflowRunConclusion success = WebhookWorkflowRunInProgressWorkflowRunConclusion._('success');

static const WebhookWorkflowRunInProgressWorkflowRunConclusion timedOut = WebhookWorkflowRunInProgressWorkflowRunConclusion._('timed_out');

static const WebhookWorkflowRunInProgressWorkflowRunConclusion $null = WebhookWorkflowRunInProgressWorkflowRunConclusion._('null');

static const List<WebhookWorkflowRunInProgressWorkflowRunConclusion> values = [actionRequired, cancelled, failure, neutral, skipped, stale, success, timedOut, $null];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookWorkflowRunInProgressWorkflowRunConclusion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookWorkflowRunInProgressWorkflowRunConclusion($value)'; } 
 }
final class WebhookWorkflowRunInProgressWorkflowRunStatus {const WebhookWorkflowRunInProgressWorkflowRunStatus._(this.value);

factory WebhookWorkflowRunInProgressWorkflowRunStatus.fromJson(String json) { return switch (json) {
  'requested' => requested,
  'in_progress' => inProgress,
  'completed' => completed,
  'queued' => queued,
  'pending' => pending,
  _ => WebhookWorkflowRunInProgressWorkflowRunStatus._(json),
}; }

static const WebhookWorkflowRunInProgressWorkflowRunStatus requested = WebhookWorkflowRunInProgressWorkflowRunStatus._('requested');

static const WebhookWorkflowRunInProgressWorkflowRunStatus inProgress = WebhookWorkflowRunInProgressWorkflowRunStatus._('in_progress');

static const WebhookWorkflowRunInProgressWorkflowRunStatus completed = WebhookWorkflowRunInProgressWorkflowRunStatus._('completed');

static const WebhookWorkflowRunInProgressWorkflowRunStatus queued = WebhookWorkflowRunInProgressWorkflowRunStatus._('queued');

static const WebhookWorkflowRunInProgressWorkflowRunStatus pending = WebhookWorkflowRunInProgressWorkflowRunStatus._('pending');

static const List<WebhookWorkflowRunInProgressWorkflowRunStatus> values = [requested, inProgress, completed, queued, pending];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookWorkflowRunInProgressWorkflowRunStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookWorkflowRunInProgressWorkflowRunStatus($value)'; } 
 }
final class WebhookWorkflowRunInProgressWorkflowRun {const WebhookWorkflowRunInProgressWorkflowRun({required this.actor, required this.artifactsUrl, required this.cancelUrl, required this.checkSuiteId, required this.checkSuiteNodeId, required this.checkSuiteUrl, required this.conclusion, required this.createdAt, required this.event, required this.headBranch, required this.headCommit, required this.headRepository, required this.headSha, required this.htmlUrl, required this.id, required this.jobsUrl, required this.logsUrl, required this.name, required this.nodeId, required this.path, required this.previousAttemptUrl, required this.pullRequests, this.referencedWorkflows, required this.repository, required this.rerunUrl, required this.runAttempt, required this.runNumber, required this.runStartedAt, required this.status, required this.triggeringActor, required this.updatedAt, required this.url, required this.workflowId, required this.workflowUrl, });

factory WebhookWorkflowRunInProgressWorkflowRun.fromJson(Map<String, dynamic> json) { return WebhookWorkflowRunInProgressWorkflowRun(
  actor: json['actor'] != null ? WebhookWorkflowRunInProgressWorkflowRunActor.fromJson(json['actor'] as Map<String, dynamic>) : null,
  artifactsUrl: Uri.parse(json['artifacts_url'] as String),
  cancelUrl: Uri.parse(json['cancel_url'] as String),
  checkSuiteId: (json['check_suite_id'] as num).toInt(),
  checkSuiteNodeId: json['check_suite_node_id'] as String,
  checkSuiteUrl: Uri.parse(json['check_suite_url'] as String),
  conclusion: json['conclusion'] != null ? WebhookWorkflowRunInProgressWorkflowRunConclusion.fromJson(json['conclusion'] as String) : null,
  createdAt: DateTime.parse(json['created_at'] as String),
  event: json['event'] as String,
  headBranch: json['head_branch'] as String?,
  headCommit: WebhookWorkflowRunInProgressWorkflowRunHeadCommit.fromJson(json['head_commit'] as Map<String, dynamic>),
  headRepository: WebhookWorkflowRunInProgressWorkflowRunHeadRepository.fromJson(json['head_repository'] as Map<String, dynamic>),
  headSha: json['head_sha'] as String,
  htmlUrl: Uri.parse(json['html_url'] as String),
  id: (json['id'] as num).toInt(),
  jobsUrl: Uri.parse(json['jobs_url'] as String),
  logsUrl: Uri.parse(json['logs_url'] as String),
  name: json['name'] as String?,
  nodeId: json['node_id'] as String,
  path: json['path'] as String,
  previousAttemptUrl: json['previous_attempt_url'] != null ? Uri.parse(json['previous_attempt_url'] as String) : null,
  pullRequests: (json['pull_requests'] as List<dynamic>).map((e) => WebhookWorkflowRunInProgressWorkflowRunPullRequests.fromJson(e as Map<String, dynamic>)).toList(),
  referencedWorkflows: (json['referenced_workflows'] as List<dynamic>?)?.map((e) => WebhookWorkflowRunInProgressWorkflowRunReferencedWorkflows.fromJson(e as Map<String, dynamic>)).toList(),
  repository: WebhookWorkflowRunInProgressWorkflowRunRepository.fromJson(json['repository'] as Map<String, dynamic>),
  rerunUrl: Uri.parse(json['rerun_url'] as String),
  runAttempt: (json['run_attempt'] as num).toInt(),
  runNumber: (json['run_number'] as num).toInt(),
  runStartedAt: DateTime.parse(json['run_started_at'] as String),
  status: WebhookWorkflowRunInProgressWorkflowRunStatus.fromJson(json['status'] as String),
  triggeringActor: json['triggering_actor'] != null ? WebhookWorkflowRunInProgressWorkflowRunTriggeringActor.fromJson(json['triggering_actor'] as Map<String, dynamic>) : null,
  updatedAt: DateTime.parse(json['updated_at'] as String),
  url: Uri.parse(json['url'] as String),
  workflowId: (json['workflow_id'] as num).toInt(),
  workflowUrl: Uri.parse(json['workflow_url'] as String),
); }

final WebhookWorkflowRunInProgressWorkflowRunActor? actor;

final Uri artifactsUrl;

final Uri cancelUrl;

final int checkSuiteId;

final String checkSuiteNodeId;

final Uri checkSuiteUrl;

final WebhookWorkflowRunInProgressWorkflowRunConclusion? conclusion;

final DateTime createdAt;

final String event;

final String? headBranch;

final WebhookWorkflowRunInProgressWorkflowRunHeadCommit headCommit;

final WebhookWorkflowRunInProgressWorkflowRunHeadRepository headRepository;

final String headSha;

final Uri htmlUrl;

final int id;

final Uri jobsUrl;

final Uri logsUrl;

final String? name;

final String nodeId;

final String path;

final Uri? previousAttemptUrl;

final List<WebhookWorkflowRunInProgressWorkflowRunPullRequests?> pullRequests;

final List<WebhookWorkflowRunInProgressWorkflowRunReferencedWorkflows>? referencedWorkflows;

final WebhookWorkflowRunInProgressWorkflowRunRepository repository;

final Uri rerunUrl;

final int runAttempt;

final int runNumber;

final DateTime runStartedAt;

final WebhookWorkflowRunInProgressWorkflowRunStatus status;

final WebhookWorkflowRunInProgressWorkflowRunTriggeringActor? triggeringActor;

final DateTime updatedAt;

final Uri url;

final int workflowId;

final Uri workflowUrl;

Map<String, dynamic> toJson() { return {
  if (actor != null) 'actor': actor?.toJson(),
  'artifacts_url': artifactsUrl.toString(),
  'cancel_url': cancelUrl.toString(),
  'check_suite_id': checkSuiteId,
  'check_suite_node_id': checkSuiteNodeId,
  'check_suite_url': checkSuiteUrl.toString(),
  if (conclusion != null) 'conclusion': conclusion?.toJson(),
  'created_at': createdAt.toIso8601String(),
  'event': event,
  'head_branch': ?headBranch,
  'head_commit': headCommit.toJson(),
  'head_repository': headRepository.toJson(),
  'head_sha': headSha,
  'html_url': htmlUrl.toString(),
  'id': id,
  'jobs_url': jobsUrl.toString(),
  'logs_url': logsUrl.toString(),
  'name': ?name,
  'node_id': nodeId,
  'path': path,
  if (previousAttemptUrl != null) 'previous_attempt_url': previousAttemptUrl?.toString(),
  'pull_requests': pullRequests.map((e) => e?.toJson()).toList(),
  if (referencedWorkflows != null) 'referenced_workflows': referencedWorkflows?.map((e) => e.toJson()).toList(),
  'repository': repository.toJson(),
  'rerun_url': rerunUrl.toString(),
  'run_attempt': runAttempt,
  'run_number': runNumber,
  'run_started_at': runStartedAt.toIso8601String(),
  'status': status.toJson(),
  if (triggeringActor != null) 'triggering_actor': triggeringActor?.toJson(),
  'updated_at': updatedAt.toIso8601String(),
  'url': url.toString(),
  'workflow_id': workflowId,
  'workflow_url': workflowUrl.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('actor') &&
      json.containsKey('artifacts_url') && json['artifacts_url'] is String &&
      json.containsKey('cancel_url') && json['cancel_url'] is String &&
      json.containsKey('check_suite_id') && json['check_suite_id'] is num &&
      json.containsKey('check_suite_node_id') && json['check_suite_node_id'] is String &&
      json.containsKey('check_suite_url') && json['check_suite_url'] is String &&
      json.containsKey('conclusion') &&
      json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('event') && json['event'] is String &&
      json.containsKey('head_branch') && json['head_branch'] is String &&
      json.containsKey('head_commit') &&
      json.containsKey('head_repository') &&
      json.containsKey('head_sha') && json['head_sha'] is String &&
      json.containsKey('html_url') && json['html_url'] is String &&
      json.containsKey('id') && json['id'] is num &&
      json.containsKey('jobs_url') && json['jobs_url'] is String &&
      json.containsKey('logs_url') && json['logs_url'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('node_id') && json['node_id'] is String &&
      json.containsKey('path') && json['path'] is String &&
      json.containsKey('previous_attempt_url') && json['previous_attempt_url'] is String &&
      json.containsKey('pull_requests') &&
      json.containsKey('repository') &&
      json.containsKey('rerun_url') && json['rerun_url'] is String &&
      json.containsKey('run_attempt') && json['run_attempt'] is num &&
      json.containsKey('run_number') && json['run_number'] is num &&
      json.containsKey('run_started_at') && json['run_started_at'] is String &&
      json.containsKey('status') &&
      json.containsKey('triggering_actor') &&
      json.containsKey('updated_at') && json['updated_at'] is String &&
      json.containsKey('url') && json['url'] is String &&
      json.containsKey('workflow_id') && json['workflow_id'] is num &&
      json.containsKey('workflow_url') && json['workflow_url'] is String; } 
WebhookWorkflowRunInProgressWorkflowRun copyWith({WebhookWorkflowRunInProgressWorkflowRunActor? Function()? actor, Uri? artifactsUrl, Uri? cancelUrl, int? checkSuiteId, String? checkSuiteNodeId, Uri? checkSuiteUrl, WebhookWorkflowRunInProgressWorkflowRunConclusion? Function()? conclusion, DateTime? createdAt, String? event, String? Function()? headBranch, WebhookWorkflowRunInProgressWorkflowRunHeadCommit? headCommit, WebhookWorkflowRunInProgressWorkflowRunHeadRepository? headRepository, String? headSha, Uri? htmlUrl, int? id, Uri? jobsUrl, Uri? logsUrl, String? Function()? name, String? nodeId, String? path, Uri? Function()? previousAttemptUrl, List<WebhookWorkflowRunInProgressWorkflowRunPullRequests?>? pullRequests, List<WebhookWorkflowRunInProgressWorkflowRunReferencedWorkflows>? Function()? referencedWorkflows, WebhookWorkflowRunInProgressWorkflowRunRepository? repository, Uri? rerunUrl, int? runAttempt, int? runNumber, DateTime? runStartedAt, WebhookWorkflowRunInProgressWorkflowRunStatus? status, WebhookWorkflowRunInProgressWorkflowRunTriggeringActor? Function()? triggeringActor, DateTime? updatedAt, Uri? url, int? workflowId, Uri? workflowUrl, }) { return WebhookWorkflowRunInProgressWorkflowRun(
  actor: actor != null ? actor() : this.actor,
  artifactsUrl: artifactsUrl ?? this.artifactsUrl,
  cancelUrl: cancelUrl ?? this.cancelUrl,
  checkSuiteId: checkSuiteId ?? this.checkSuiteId,
  checkSuiteNodeId: checkSuiteNodeId ?? this.checkSuiteNodeId,
  checkSuiteUrl: checkSuiteUrl ?? this.checkSuiteUrl,
  conclusion: conclusion != null ? conclusion() : this.conclusion,
  createdAt: createdAt ?? this.createdAt,
  event: event ?? this.event,
  headBranch: headBranch != null ? headBranch() : this.headBranch,
  headCommit: headCommit ?? this.headCommit,
  headRepository: headRepository ?? this.headRepository,
  headSha: headSha ?? this.headSha,
  htmlUrl: htmlUrl ?? this.htmlUrl,
  id: id ?? this.id,
  jobsUrl: jobsUrl ?? this.jobsUrl,
  logsUrl: logsUrl ?? this.logsUrl,
  name: name != null ? name() : this.name,
  nodeId: nodeId ?? this.nodeId,
  path: path ?? this.path,
  previousAttemptUrl: previousAttemptUrl != null ? previousAttemptUrl() : this.previousAttemptUrl,
  pullRequests: pullRequests ?? this.pullRequests,
  referencedWorkflows: referencedWorkflows != null ? referencedWorkflows() : this.referencedWorkflows,
  repository: repository ?? this.repository,
  rerunUrl: rerunUrl ?? this.rerunUrl,
  runAttempt: runAttempt ?? this.runAttempt,
  runNumber: runNumber ?? this.runNumber,
  runStartedAt: runStartedAt ?? this.runStartedAt,
  status: status ?? this.status,
  triggeringActor: triggeringActor != null ? triggeringActor() : this.triggeringActor,
  updatedAt: updatedAt ?? this.updatedAt,
  url: url ?? this.url,
  workflowId: workflowId ?? this.workflowId,
  workflowUrl: workflowUrl ?? this.workflowUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookWorkflowRunInProgressWorkflowRun &&
          actor == other.actor &&
          artifactsUrl == other.artifactsUrl &&
          cancelUrl == other.cancelUrl &&
          checkSuiteId == other.checkSuiteId &&
          checkSuiteNodeId == other.checkSuiteNodeId &&
          checkSuiteUrl == other.checkSuiteUrl &&
          conclusion == other.conclusion &&
          createdAt == other.createdAt &&
          event == other.event &&
          headBranch == other.headBranch &&
          headCommit == other.headCommit &&
          headRepository == other.headRepository &&
          headSha == other.headSha &&
          htmlUrl == other.htmlUrl &&
          id == other.id &&
          jobsUrl == other.jobsUrl &&
          logsUrl == other.logsUrl &&
          name == other.name &&
          nodeId == other.nodeId &&
          path == other.path &&
          previousAttemptUrl == other.previousAttemptUrl &&
          listEquals(pullRequests, other.pullRequests) &&
          listEquals(referencedWorkflows, other.referencedWorkflows) &&
          repository == other.repository &&
          rerunUrl == other.rerunUrl &&
          runAttempt == other.runAttempt &&
          runNumber == other.runNumber &&
          runStartedAt == other.runStartedAt &&
          status == other.status &&
          triggeringActor == other.triggeringActor &&
          updatedAt == other.updatedAt &&
          url == other.url &&
          workflowId == other.workflowId &&
          workflowUrl == other.workflowUrl; } 
@override int get hashCode { return Object.hashAll([actor, artifactsUrl, cancelUrl, checkSuiteId, checkSuiteNodeId, checkSuiteUrl, conclusion, createdAt, event, headBranch, headCommit, headRepository, headSha, htmlUrl, id, jobsUrl, logsUrl, name, nodeId, path, previousAttemptUrl, Object.hashAll(pullRequests), Object.hashAll(referencedWorkflows ?? const []), repository, rerunUrl, runAttempt, runNumber, runStartedAt, status, triggeringActor, updatedAt, url, workflowId, workflowUrl]); } 
@override String toString() { return 'WebhookWorkflowRunInProgressWorkflowRun(actor: $actor, artifactsUrl: $artifactsUrl, cancelUrl: $cancelUrl, checkSuiteId: $checkSuiteId, checkSuiteNodeId: $checkSuiteNodeId, checkSuiteUrl: $checkSuiteUrl, conclusion: $conclusion, createdAt: $createdAt, event: $event, headBranch: $headBranch, headCommit: $headCommit, headRepository: $headRepository, headSha: $headSha, htmlUrl: $htmlUrl, id: $id, jobsUrl: $jobsUrl, logsUrl: $logsUrl, name: $name, nodeId: $nodeId, path: $path, previousAttemptUrl: $previousAttemptUrl, pullRequests: $pullRequests, referencedWorkflows: $referencedWorkflows, repository: $repository, rerunUrl: $rerunUrl, runAttempt: $runAttempt, runNumber: $runNumber, runStartedAt: $runStartedAt, status: $status, triggeringActor: $triggeringActor, updatedAt: $updatedAt, url: $url, workflowId: $workflowId, workflowUrl: $workflowUrl)'; } 
 }
