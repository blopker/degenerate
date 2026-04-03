// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'deployment.dart';import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'repository_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';import 'webhook_workflow_job_in_progress_workflow_job.dart';@immutable final class WebhookWorkflowJobInProgressAction {const WebhookWorkflowJobInProgressAction._(this.value);

factory WebhookWorkflowJobInProgressAction.fromJson(String json) { return switch (json) {
  'in_progress' => inProgress,
  _ => WebhookWorkflowJobInProgressAction._(json),
}; }

static const WebhookWorkflowJobInProgressAction inProgress = WebhookWorkflowJobInProgressAction._('in_progress');

static const List<WebhookWorkflowJobInProgressAction> values = [inProgress];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookWorkflowJobInProgressAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookWorkflowJobInProgressAction($value)'; } 
 }
@immutable final class WebhookWorkflowJobInProgress {const WebhookWorkflowJobInProgress({required this.action, required this.repository, required this.sender, required this.workflowJob, this.enterprise, this.installation, this.organization, this.deployment, });

factory WebhookWorkflowJobInProgress.fromJson(Map<String, dynamic> json) { return WebhookWorkflowJobInProgress(
  action: WebhookWorkflowJobInProgressAction.fromJson(json['action'] as String),
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  organization: json['organization'] != null ? OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>) : null,
  repository: RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>),
  sender: SimpleUser.fromJson(json['sender'] as Map<String, dynamic>),
  workflowJob: WebhookWorkflowJobInProgressWorkflowJob.fromJson(json['workflow_job'] as Map<String, dynamic>),
  deployment: json['deployment'] != null ? Deployment.fromJson(json['deployment'] as Map<String, dynamic>) : null,
); }

final WebhookWorkflowJobInProgressAction action;

final EnterpriseWebhooks? enterprise;

final SimpleInstallation? installation;

final OrganizationSimpleWebhooks? organization;

final RepositoryWebhooks repository;

final SimpleUser sender;

/// The workflow job. Many `workflow_job` keys, such as `head_sha`, `conclusion`, and `started_at` are the same as those in a [`check_run`](#check_run) object.
final WebhookWorkflowJobInProgressWorkflowJob workflowJob;

final Deployment? deployment;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
  if (organization != null) 'organization': organization?.toJson(),
  'repository': repository.toJson(),
  'sender': sender.toJson(),
  'workflow_job': workflowJob.toJson(),
  if (deployment != null) 'deployment': deployment?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('repository') &&
      json.containsKey('sender') &&
      json.containsKey('workflow_job'); } 
WebhookWorkflowJobInProgress copyWith({WebhookWorkflowJobInProgressAction? action, EnterpriseWebhooks Function()? enterprise, SimpleInstallation Function()? installation, OrganizationSimpleWebhooks Function()? organization, RepositoryWebhooks? repository, SimpleUser? sender, WebhookWorkflowJobInProgressWorkflowJob? workflowJob, Deployment Function()? deployment, }) { return WebhookWorkflowJobInProgress(
  action: action ?? this.action,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  installation: installation != null ? installation() : this.installation,
  organization: organization != null ? organization() : this.organization,
  repository: repository ?? this.repository,
  sender: sender ?? this.sender,
  workflowJob: workflowJob ?? this.workflowJob,
  deployment: deployment != null ? deployment() : this.deployment,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookWorkflowJobInProgress &&
          action == other.action &&
          enterprise == other.enterprise &&
          installation == other.installation &&
          organization == other.organization &&
          repository == other.repository &&
          sender == other.sender &&
          workflowJob == other.workflowJob &&
          deployment == other.deployment; } 
@override int get hashCode { return Object.hash(action, enterprise, installation, organization, repository, sender, workflowJob, deployment); } 
@override String toString() { return 'WebhookWorkflowJobInProgress(action: $action, enterprise: $enterprise, installation: $installation, organization: $organization, repository: $repository, sender: $sender, workflowJob: $workflowJob, deployment: $deployment)'; } 
 }
