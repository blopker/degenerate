// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'repository_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';import 'webhook_pull_request_unassigned_pull_request.dart';import 'webhooks_number.dart';import 'webhooks_user_mannequin.dart';@immutable final class WebhookPullRequestUnassignedAction {const WebhookPullRequestUnassignedAction._(this.value);

factory WebhookPullRequestUnassignedAction.fromJson(String json) { return switch (json) {
  'unassigned' => unassigned,
  _ => WebhookPullRequestUnassignedAction._(json),
}; }

static const WebhookPullRequestUnassignedAction unassigned = WebhookPullRequestUnassignedAction._('unassigned');

static const List<WebhookPullRequestUnassignedAction> values = [unassigned];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookPullRequestUnassignedAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookPullRequestUnassignedAction($value)'; } 
 }
@immutable final class WebhookPullRequestUnassigned {const WebhookPullRequestUnassigned({required this.action, required this.number, required this.pullRequest, required this.repository, this.assignee, this.enterprise, this.installation, this.organization, this.sender, });

factory WebhookPullRequestUnassigned.fromJson(Map<String, dynamic> json) { return WebhookPullRequestUnassigned(
  action: WebhookPullRequestUnassignedAction.fromJson(json['action'] as String),
  assignee: json['assignee'] != null ? WebhooksUserMannequin.fromJson(json['assignee'] as Map<String, dynamic>) : null,
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  number: WebhooksNumber.fromJson(json['number'] as num),
  organization: json['organization'] != null ? OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>) : null,
  pullRequest: WebhookPullRequestUnassignedPullRequest.fromJson(json['pull_request'] as Map<String, dynamic>),
  repository: RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>),
  sender: json['sender'] != null ? SimpleUser.fromJson(json['sender'] as Map<String, dynamic>) : null,
); }

final WebhookPullRequestUnassignedAction action;

final WebhooksUserMannequin? assignee;

final EnterpriseWebhooks? enterprise;

final SimpleInstallation? installation;

/// The pull request number.
final WebhooksNumber number;

final OrganizationSimpleWebhooks? organization;

final WebhookPullRequestUnassignedPullRequest pullRequest;

final RepositoryWebhooks repository;

final SimpleUser? sender;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  if (assignee != null) 'assignee': assignee?.toJson(),
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
  'number': number.toJson(),
  if (organization != null) 'organization': organization?.toJson(),
  'pull_request': pullRequest.toJson(),
  'repository': repository.toJson(),
  if (sender != null) 'sender': sender?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('number') &&
      json.containsKey('pull_request') &&
      json.containsKey('repository'); } 
WebhookPullRequestUnassigned copyWith({WebhookPullRequestUnassignedAction? action, WebhooksUserMannequin Function()? assignee, EnterpriseWebhooks Function()? enterprise, SimpleInstallation Function()? installation, WebhooksNumber? number, OrganizationSimpleWebhooks Function()? organization, WebhookPullRequestUnassignedPullRequest? pullRequest, RepositoryWebhooks? repository, SimpleUser Function()? sender, }) { return WebhookPullRequestUnassigned(
  action: action ?? this.action,
  assignee: assignee != null ? assignee() : this.assignee,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  installation: installation != null ? installation() : this.installation,
  number: number ?? this.number,
  organization: organization != null ? organization() : this.organization,
  pullRequest: pullRequest ?? this.pullRequest,
  repository: repository ?? this.repository,
  sender: sender != null ? sender() : this.sender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestUnassigned &&
          action == other.action &&
          assignee == other.assignee &&
          enterprise == other.enterprise &&
          installation == other.installation &&
          number == other.number &&
          organization == other.organization &&
          pullRequest == other.pullRequest &&
          repository == other.repository &&
          sender == other.sender; } 
@override int get hashCode { return Object.hash(action, assignee, enterprise, installation, number, organization, pullRequest, repository, sender); } 
@override String toString() { return 'WebhookPullRequestUnassigned(action: $action, assignee: $assignee, enterprise: $enterprise, installation: $installation, number: $number, organization: $organization, pullRequest: $pullRequest, repository: $repository, sender: $sender)'; } 
 }
