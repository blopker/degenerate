// GENERATED CODE - DO NOT MODIFY BY HAND

import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'repository_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';import 'webhook_pull_request_unlabeled_pull_request.dart';import 'webhooks_label.dart';import 'webhooks_number.dart';final class WebhookPullRequestUnlabeledAction {const WebhookPullRequestUnlabeledAction._(this.value);

factory WebhookPullRequestUnlabeledAction.fromJson(String json) { return switch (json) {
  'unlabeled' => unlabeled,
  _ => WebhookPullRequestUnlabeledAction._(json),
}; }

static const WebhookPullRequestUnlabeledAction unlabeled = WebhookPullRequestUnlabeledAction._('unlabeled');

static const List<WebhookPullRequestUnlabeledAction> values = [unlabeled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookPullRequestUnlabeledAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookPullRequestUnlabeledAction($value)'; } 
 }
final class WebhookPullRequestUnlabeled {const WebhookPullRequestUnlabeled({required this.action, this.enterprise, this.installation, this.label, required this.number, this.organization, required this.pullRequest, required this.repository, required this.sender, });

factory WebhookPullRequestUnlabeled.fromJson(Map<String, dynamic> json) { return WebhookPullRequestUnlabeled(
  action: WebhookPullRequestUnlabeledAction.fromJson(json['action'] as String),
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  label: json['label'] != null ? WebhooksLabel.fromJson(json['label'] as Map<String, dynamic>) : null,
  number: WebhooksNumber.fromJson(json['number'] as num),
  organization: json['organization'] != null ? OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>) : null,
  pullRequest: WebhookPullRequestUnlabeledPullRequest.fromJson(json['pull_request'] as Map<String, dynamic>),
  repository: RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>),
  sender: SimpleUser.fromJson(json['sender'] as Map<String, dynamic>),
); }

final WebhookPullRequestUnlabeledAction action;

final EnterpriseWebhooks? enterprise;

final SimpleInstallation? installation;

final WebhooksLabel? label;

/// The pull request number.
final WebhooksNumber number;

final OrganizationSimpleWebhooks? organization;

final WebhookPullRequestUnlabeledPullRequest pullRequest;

final RepositoryWebhooks repository;

final SimpleUser sender;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
  if (label != null) 'label': label?.toJson(),
  'number': number.toJson(),
  if (organization != null) 'organization': organization?.toJson(),
  'pull_request': pullRequest.toJson(),
  'repository': repository.toJson(),
  'sender': sender.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('number') &&
      json.containsKey('pull_request') &&
      json.containsKey('repository') &&
      json.containsKey('sender'); } 
WebhookPullRequestUnlabeled copyWith({WebhookPullRequestUnlabeledAction? action, EnterpriseWebhooks Function()? enterprise, SimpleInstallation Function()? installation, WebhooksLabel Function()? label, WebhooksNumber? number, OrganizationSimpleWebhooks Function()? organization, WebhookPullRequestUnlabeledPullRequest? pullRequest, RepositoryWebhooks? repository, SimpleUser? sender, }) { return WebhookPullRequestUnlabeled(
  action: action ?? this.action,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  installation: installation != null ? installation() : this.installation,
  label: label != null ? label() : this.label,
  number: number ?? this.number,
  organization: organization != null ? organization() : this.organization,
  pullRequest: pullRequest ?? this.pullRequest,
  repository: repository ?? this.repository,
  sender: sender ?? this.sender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestUnlabeled &&
          action == other.action &&
          enterprise == other.enterprise &&
          installation == other.installation &&
          label == other.label &&
          number == other.number &&
          organization == other.organization &&
          pullRequest == other.pullRequest &&
          repository == other.repository &&
          sender == other.sender; } 
@override int get hashCode { return Object.hash(action, enterprise, installation, label, number, organization, pullRequest, repository, sender); } 
@override String toString() { return 'WebhookPullRequestUnlabeled(action: $action, enterprise: $enterprise, installation: $installation, label: $label, number: $number, organization: $organization, pullRequest: $pullRequest, repository: $repository, sender: $sender)'; } 
 }
