// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'repository_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';import 'webhook_workflow_run_in_progress_workflow_run.dart';import 'webhooks_workflow.dart';@immutable final class WebhookWorkflowRunInProgressAction {const WebhookWorkflowRunInProgressAction._(this.value);

factory WebhookWorkflowRunInProgressAction.fromJson(String json) { return switch (json) {
  'in_progress' => inProgress,
  _ => WebhookWorkflowRunInProgressAction._(json),
}; }

static const WebhookWorkflowRunInProgressAction inProgress = WebhookWorkflowRunInProgressAction._('in_progress');

static const List<WebhookWorkflowRunInProgressAction> values = [inProgress];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookWorkflowRunInProgressAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookWorkflowRunInProgressAction($value)'; } 
 }
@immutable final class WebhookWorkflowRunInProgress {const WebhookWorkflowRunInProgress({required this.action, required this.repository, required this.sender, required this.workflow, required this.workflowRun, this.enterprise, this.installation, this.organization, });

factory WebhookWorkflowRunInProgress.fromJson(Map<String, dynamic> json) { return WebhookWorkflowRunInProgress(
  action: WebhookWorkflowRunInProgressAction.fromJson(json['action'] as String),
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  organization: json['organization'] != null ? OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>) : null,
  repository: RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>),
  sender: SimpleUser.fromJson(json['sender'] as Map<String, dynamic>),
  workflow: WebhooksWorkflow.fromJson(json['workflow'] as Map<String, dynamic>),
  workflowRun: WebhookWorkflowRunInProgressWorkflowRun.fromJson(json['workflow_run'] as Map<String, dynamic>),
); }

final WebhookWorkflowRunInProgressAction action;

final EnterpriseWebhooks? enterprise;

final SimpleInstallation? installation;

final OrganizationSimpleWebhooks? organization;

final RepositoryWebhooks repository;

final SimpleUser sender;

final WebhooksWorkflow workflow;

final WebhookWorkflowRunInProgressWorkflowRun workflowRun;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
  if (organization != null) 'organization': organization?.toJson(),
  'repository': repository.toJson(),
  'sender': sender.toJson(),
  'workflow': workflow.toJson(),
  'workflow_run': workflowRun.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('repository') &&
      json.containsKey('sender') &&
      json.containsKey('workflow') &&
      json.containsKey('workflow_run'); } 
WebhookWorkflowRunInProgress copyWith({WebhookWorkflowRunInProgressAction? action, EnterpriseWebhooks Function()? enterprise, SimpleInstallation Function()? installation, OrganizationSimpleWebhooks Function()? organization, RepositoryWebhooks? repository, SimpleUser? sender, WebhooksWorkflow? workflow, WebhookWorkflowRunInProgressWorkflowRun? workflowRun, }) { return WebhookWorkflowRunInProgress(
  action: action ?? this.action,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  installation: installation != null ? installation() : this.installation,
  organization: organization != null ? organization() : this.organization,
  repository: repository ?? this.repository,
  sender: sender ?? this.sender,
  workflow: workflow ?? this.workflow,
  workflowRun: workflowRun ?? this.workflowRun,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookWorkflowRunInProgress &&
          action == other.action &&
          enterprise == other.enterprise &&
          installation == other.installation &&
          organization == other.organization &&
          repository == other.repository &&
          sender == other.sender &&
          workflow == other.workflow &&
          workflowRun == other.workflowRun; } 
@override int get hashCode { return Object.hash(action, enterprise, installation, organization, repository, sender, workflow, workflowRun); } 
@override String toString() { return 'WebhookWorkflowRunInProgress(action: $action, enterprise: $enterprise, installation: $installation, organization: $organization, repository: $repository, sender: $sender, workflow: $workflow, workflowRun: $workflowRun)'; } 
 }
