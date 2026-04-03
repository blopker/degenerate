// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'repository_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';import 'webhook_registry_package_updated_registry_package.dart';@immutable final class WebhookRegistryPackageUpdatedAction {const WebhookRegistryPackageUpdatedAction._(this.value);

factory WebhookRegistryPackageUpdatedAction.fromJson(String json) { return switch (json) {
  'updated' => updated,
  _ => WebhookRegistryPackageUpdatedAction._(json),
}; }

static const WebhookRegistryPackageUpdatedAction updated = WebhookRegistryPackageUpdatedAction._('updated');

static const List<WebhookRegistryPackageUpdatedAction> values = [updated];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookRegistryPackageUpdatedAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookRegistryPackageUpdatedAction($value)'; } 
 }
@immutable final class WebhookRegistryPackageUpdated {const WebhookRegistryPackageUpdated({required this.action, required this.registryPackage, required this.sender, this.enterprise, this.installation, this.organization, this.repository, });

factory WebhookRegistryPackageUpdated.fromJson(Map<String, dynamic> json) { return WebhookRegistryPackageUpdated(
  action: WebhookRegistryPackageUpdatedAction.fromJson(json['action'] as String),
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  organization: json['organization'] != null ? OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>) : null,
  registryPackage: WebhookRegistryPackageUpdatedRegistryPackage.fromJson(json['registry_package'] as Map<String, dynamic>),
  repository: json['repository'] != null ? RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>) : null,
  sender: SimpleUser.fromJson(json['sender'] as Map<String, dynamic>),
); }

final WebhookRegistryPackageUpdatedAction action;

final EnterpriseWebhooks? enterprise;

final SimpleInstallation? installation;

final OrganizationSimpleWebhooks? organization;

final WebhookRegistryPackageUpdatedRegistryPackage registryPackage;

final RepositoryWebhooks? repository;

final SimpleUser sender;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
  if (organization != null) 'organization': organization?.toJson(),
  'registry_package': registryPackage.toJson(),
  if (repository != null) 'repository': repository?.toJson(),
  'sender': sender.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('registry_package') &&
      json.containsKey('sender'); } 
WebhookRegistryPackageUpdated copyWith({WebhookRegistryPackageUpdatedAction? action, EnterpriseWebhooks Function()? enterprise, SimpleInstallation Function()? installation, OrganizationSimpleWebhooks Function()? organization, WebhookRegistryPackageUpdatedRegistryPackage? registryPackage, RepositoryWebhooks Function()? repository, SimpleUser? sender, }) { return WebhookRegistryPackageUpdated(
  action: action ?? this.action,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  installation: installation != null ? installation() : this.installation,
  organization: organization != null ? organization() : this.organization,
  registryPackage: registryPackage ?? this.registryPackage,
  repository: repository != null ? repository() : this.repository,
  sender: sender ?? this.sender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookRegistryPackageUpdated &&
          action == other.action &&
          enterprise == other.enterprise &&
          installation == other.installation &&
          organization == other.organization &&
          registryPackage == other.registryPackage &&
          repository == other.repository &&
          sender == other.sender; } 
@override int get hashCode { return Object.hash(action, enterprise, installation, organization, registryPackage, repository, sender); } 
@override String toString() { return 'WebhookRegistryPackageUpdated(action: $action, enterprise: $enterprise, installation: $installation, organization: $organization, registryPackage: $registryPackage, repository: $repository, sender: $sender)'; } 
 }
