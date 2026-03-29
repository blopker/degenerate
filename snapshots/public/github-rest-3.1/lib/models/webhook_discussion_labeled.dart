// GENERATED CODE - DO NOT MODIFY BY HAND

import 'discussion.dart';import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'repository_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';import 'webhooks_label.dart';final class WebhookDiscussionLabeledAction {const WebhookDiscussionLabeledAction._(this.value);

factory WebhookDiscussionLabeledAction.fromJson(String json) { return switch (json) {
  'labeled' => labeled,
  _ => WebhookDiscussionLabeledAction._(json),
}; }

static const WebhookDiscussionLabeledAction labeled = WebhookDiscussionLabeledAction._('labeled');

static const List<WebhookDiscussionLabeledAction> values = [labeled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookDiscussionLabeledAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookDiscussionLabeledAction($value)'; } 
 }
final class WebhookDiscussionLabeled {const WebhookDiscussionLabeled({required this.action, required this.discussion, this.enterprise, this.installation, required this.label, this.organization, required this.repository, required this.sender, });

factory WebhookDiscussionLabeled.fromJson(Map<String, dynamic> json) { return WebhookDiscussionLabeled(
  action: WebhookDiscussionLabeledAction.fromJson(json['action'] as String),
  discussion: Discussion.fromJson(json['discussion'] as Map<String, dynamic>),
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  label: WebhooksLabel.fromJson(json['label'] as Map<String, dynamic>),
  organization: json['organization'] != null ? OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>) : null,
  repository: RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>),
  sender: SimpleUser.fromJson(json['sender'] as Map<String, dynamic>),
); }

final WebhookDiscussionLabeledAction action;

final Discussion discussion;

final EnterpriseWebhooks? enterprise;

final SimpleInstallation? installation;

final WebhooksLabel label;

final OrganizationSimpleWebhooks? organization;

final RepositoryWebhooks repository;

final SimpleUser sender;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  'discussion': discussion.toJson(),
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
  'label': label.toJson(),
  if (organization != null) 'organization': organization?.toJson(),
  'repository': repository.toJson(),
  'sender': sender.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('discussion') &&
      json.containsKey('label') &&
      json.containsKey('repository') &&
      json.containsKey('sender'); } 
WebhookDiscussionLabeled copyWith({WebhookDiscussionLabeledAction? action, Discussion? discussion, EnterpriseWebhooks Function()? enterprise, SimpleInstallation Function()? installation, WebhooksLabel? label, OrganizationSimpleWebhooks Function()? organization, RepositoryWebhooks? repository, SimpleUser? sender, }) { return WebhookDiscussionLabeled(
  action: action ?? this.action,
  discussion: discussion ?? this.discussion,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  installation: installation != null ? installation() : this.installation,
  label: label ?? this.label,
  organization: organization != null ? organization() : this.organization,
  repository: repository ?? this.repository,
  sender: sender ?? this.sender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookDiscussionLabeled &&
          action == other.action &&
          discussion == other.discussion &&
          enterprise == other.enterprise &&
          installation == other.installation &&
          label == other.label &&
          organization == other.organization &&
          repository == other.repository &&
          sender == other.sender; } 
@override int get hashCode { return Object.hash(action, discussion, enterprise, installation, label, organization, repository, sender); } 
@override String toString() { return 'WebhookDiscussionLabeled(action: $action, discussion: $discussion, enterprise: $enterprise, installation: $installation, label: $label, organization: $organization, repository: $repository, sender: $sender)'; } 
 }
