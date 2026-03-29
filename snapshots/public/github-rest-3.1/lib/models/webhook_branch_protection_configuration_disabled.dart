// GENERATED CODE - DO NOT MODIFY BY HAND

import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'repository_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';final class WebhookBranchProtectionConfigurationDisabledAction {const WebhookBranchProtectionConfigurationDisabledAction._(this.value);

factory WebhookBranchProtectionConfigurationDisabledAction.fromJson(String json) { return switch (json) {
  'disabled' => disabled,
  _ => WebhookBranchProtectionConfigurationDisabledAction._(json),
}; }

static const WebhookBranchProtectionConfigurationDisabledAction disabled = WebhookBranchProtectionConfigurationDisabledAction._('disabled');

static const List<WebhookBranchProtectionConfigurationDisabledAction> values = [disabled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookBranchProtectionConfigurationDisabledAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookBranchProtectionConfigurationDisabledAction($value)'; } 
 }
final class WebhookBranchProtectionConfigurationDisabled {const WebhookBranchProtectionConfigurationDisabled({required this.action, this.enterprise, this.installation, this.organization, required this.repository, required this.sender, });

factory WebhookBranchProtectionConfigurationDisabled.fromJson(Map<String, dynamic> json) { return WebhookBranchProtectionConfigurationDisabled(
  action: WebhookBranchProtectionConfigurationDisabledAction.fromJson(json['action'] as String),
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  organization: json['organization'] != null ? OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>) : null,
  repository: RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>),
  sender: SimpleUser.fromJson(json['sender'] as Map<String, dynamic>),
); }

final WebhookBranchProtectionConfigurationDisabledAction action;

final EnterpriseWebhooks? enterprise;

final SimpleInstallation? installation;

final OrganizationSimpleWebhooks? organization;

final RepositoryWebhooks repository;

final SimpleUser sender;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
  if (organization != null) 'organization': organization?.toJson(),
  'repository': repository.toJson(),
  'sender': sender.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('repository') &&
      json.containsKey('sender'); } 
WebhookBranchProtectionConfigurationDisabled copyWith({WebhookBranchProtectionConfigurationDisabledAction? action, EnterpriseWebhooks Function()? enterprise, SimpleInstallation Function()? installation, OrganizationSimpleWebhooks Function()? organization, RepositoryWebhooks? repository, SimpleUser? sender, }) { return WebhookBranchProtectionConfigurationDisabled(
  action: action ?? this.action,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  installation: installation != null ? installation() : this.installation,
  organization: organization != null ? organization() : this.organization,
  repository: repository ?? this.repository,
  sender: sender ?? this.sender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookBranchProtectionConfigurationDisabled &&
          action == other.action &&
          enterprise == other.enterprise &&
          installation == other.installation &&
          organization == other.organization &&
          repository == other.repository &&
          sender == other.sender; } 
@override int get hashCode { return Object.hash(action, enterprise, installation, organization, repository, sender); } 
@override String toString() { return 'WebhookBranchProtectionConfigurationDisabled(action: $action, enterprise: $enterprise, installation: $installation, organization: $organization, repository: $repository, sender: $sender)'; } 
 }
