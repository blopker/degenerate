// GENERATED CODE - DO NOT MODIFY BY HAND

import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'repository_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';import 'webhooks_label.dart';final class WebhookLabelCreatedAction {const WebhookLabelCreatedAction._(this.value);

factory WebhookLabelCreatedAction.fromJson(String json) { return switch (json) {
  'created' => created,
  _ => WebhookLabelCreatedAction._(json),
}; }

static const WebhookLabelCreatedAction created = WebhookLabelCreatedAction._('created');

static const List<WebhookLabelCreatedAction> values = [created];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookLabelCreatedAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookLabelCreatedAction($value)'; } 
 }
final class WebhookLabelCreated {const WebhookLabelCreated({required this.action, this.enterprise, this.installation, required this.label, this.organization, required this.repository, this.sender, });

factory WebhookLabelCreated.fromJson(Map<String, dynamic> json) { return WebhookLabelCreated(
  action: WebhookLabelCreatedAction.fromJson(json['action'] as String),
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  label: WebhooksLabel.fromJson(json['label'] as Map<String, dynamic>),
  organization: json['organization'] != null ? OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>) : null,
  repository: RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>),
  sender: json['sender'] != null ? SimpleUser.fromJson(json['sender'] as Map<String, dynamic>) : null,
); }

final WebhookLabelCreatedAction action;

final EnterpriseWebhooks? enterprise;

final SimpleInstallation? installation;

final WebhooksLabel label;

final OrganizationSimpleWebhooks? organization;

final RepositoryWebhooks repository;

final SimpleUser? sender;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
  'label': label.toJson(),
  if (organization != null) 'organization': organization?.toJson(),
  'repository': repository.toJson(),
  if (sender != null) 'sender': sender?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('label') &&
      json.containsKey('repository'); } 
WebhookLabelCreated copyWith({WebhookLabelCreatedAction? action, EnterpriseWebhooks Function()? enterprise, SimpleInstallation Function()? installation, WebhooksLabel? label, OrganizationSimpleWebhooks Function()? organization, RepositoryWebhooks? repository, SimpleUser Function()? sender, }) { return WebhookLabelCreated(
  action: action ?? this.action,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  installation: installation != null ? installation() : this.installation,
  label: label ?? this.label,
  organization: organization != null ? organization() : this.organization,
  repository: repository ?? this.repository,
  sender: sender != null ? sender() : this.sender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookLabelCreated &&
          action == other.action &&
          enterprise == other.enterprise &&
          installation == other.installation &&
          label == other.label &&
          organization == other.organization &&
          repository == other.repository &&
          sender == other.sender; } 
@override int get hashCode { return Object.hash(action, enterprise, installation, label, organization, repository, sender); } 
@override String toString() { return 'WebhookLabelCreated(action: $action, enterprise: $enterprise, installation: $installation, label: $label, organization: $organization, repository: $repository, sender: $sender)'; } 
 }
