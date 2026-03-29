// GENERATED CODE - DO NOT MODIFY BY HAND

import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'repository_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';import 'webhooks_issue.dart';import 'webhooks_label.dart';final class WebhookIssuesUnlabeledAction {const WebhookIssuesUnlabeledAction._(this.value);

factory WebhookIssuesUnlabeledAction.fromJson(String json) { return switch (json) {
  'unlabeled' => unlabeled,
  _ => WebhookIssuesUnlabeledAction._(json),
}; }

static const WebhookIssuesUnlabeledAction unlabeled = WebhookIssuesUnlabeledAction._('unlabeled');

static const List<WebhookIssuesUnlabeledAction> values = [unlabeled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookIssuesUnlabeledAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookIssuesUnlabeledAction($value)'; } 
 }
final class WebhookIssuesUnlabeled {const WebhookIssuesUnlabeled({required this.action, this.enterprise, this.installation, required this.issue, this.label, this.organization, required this.repository, required this.sender, });

factory WebhookIssuesUnlabeled.fromJson(Map<String, dynamic> json) { return WebhookIssuesUnlabeled(
  action: WebhookIssuesUnlabeledAction.fromJson(json['action'] as String),
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  issue: WebhooksIssue.fromJson(json['issue'] as Map<String, dynamic>),
  label: json['label'] != null ? WebhooksLabel.fromJson(json['label'] as Map<String, dynamic>) : null,
  organization: json['organization'] != null ? OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>) : null,
  repository: RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>),
  sender: SimpleUser.fromJson(json['sender'] as Map<String, dynamic>),
); }

final WebhookIssuesUnlabeledAction action;

final EnterpriseWebhooks? enterprise;

final SimpleInstallation? installation;

final WebhooksIssue issue;

final WebhooksLabel? label;

final OrganizationSimpleWebhooks? organization;

final RepositoryWebhooks repository;

final SimpleUser sender;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
  'issue': issue.toJson(),
  if (label != null) 'label': label?.toJson(),
  if (organization != null) 'organization': organization?.toJson(),
  'repository': repository.toJson(),
  'sender': sender.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('issue') &&
      json.containsKey('repository') &&
      json.containsKey('sender'); } 
WebhookIssuesUnlabeled copyWith({WebhookIssuesUnlabeledAction? action, EnterpriseWebhooks Function()? enterprise, SimpleInstallation Function()? installation, WebhooksIssue? issue, WebhooksLabel Function()? label, OrganizationSimpleWebhooks Function()? organization, RepositoryWebhooks? repository, SimpleUser? sender, }) { return WebhookIssuesUnlabeled(
  action: action ?? this.action,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  installation: installation != null ? installation() : this.installation,
  issue: issue ?? this.issue,
  label: label != null ? label() : this.label,
  organization: organization != null ? organization() : this.organization,
  repository: repository ?? this.repository,
  sender: sender ?? this.sender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookIssuesUnlabeled &&
          action == other.action &&
          enterprise == other.enterprise &&
          installation == other.installation &&
          issue == other.issue &&
          label == other.label &&
          organization == other.organization &&
          repository == other.repository &&
          sender == other.sender; } 
@override int get hashCode { return Object.hash(action, enterprise, installation, issue, label, organization, repository, sender); } 
@override String toString() { return 'WebhookIssuesUnlabeled(action: $action, enterprise: $enterprise, installation: $installation, issue: $issue, label: $label, organization: $organization, repository: $repository, sender: $sender)'; } 
 }
