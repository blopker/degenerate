// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dependabot_alert.dart';import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'repository_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';final class WebhookDependabotAlertAutoDismissedAction {const WebhookDependabotAlertAutoDismissedAction._(this.value);

factory WebhookDependabotAlertAutoDismissedAction.fromJson(String json) { return switch (json) {
  'auto_dismissed' => autoDismissed,
  _ => WebhookDependabotAlertAutoDismissedAction._(json),
}; }

static const WebhookDependabotAlertAutoDismissedAction autoDismissed = WebhookDependabotAlertAutoDismissedAction._('auto_dismissed');

static const List<WebhookDependabotAlertAutoDismissedAction> values = [autoDismissed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookDependabotAlertAutoDismissedAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookDependabotAlertAutoDismissedAction($value)'; } 
 }
final class WebhookDependabotAlertAutoDismissed {const WebhookDependabotAlertAutoDismissed({required this.action, required this.alert, this.installation, this.organization, this.enterprise, required this.repository, required this.sender, });

factory WebhookDependabotAlertAutoDismissed.fromJson(Map<String, dynamic> json) { return WebhookDependabotAlertAutoDismissed(
  action: WebhookDependabotAlertAutoDismissedAction.fromJson(json['action'] as String),
  alert: DependabotAlert.fromJson(json['alert'] as Map<String, dynamic>),
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  organization: json['organization'] != null ? OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>) : null,
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  repository: RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>),
  sender: SimpleUser.fromJson(json['sender'] as Map<String, dynamic>),
); }

final WebhookDependabotAlertAutoDismissedAction action;

final DependabotAlert alert;

final SimpleInstallation? installation;

final OrganizationSimpleWebhooks? organization;

final EnterpriseWebhooks? enterprise;

final RepositoryWebhooks repository;

final SimpleUser sender;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  'alert': alert.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
  if (organization != null) 'organization': organization?.toJson(),
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  'repository': repository.toJson(),
  'sender': sender.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('alert') &&
      json.containsKey('repository') &&
      json.containsKey('sender'); } 
WebhookDependabotAlertAutoDismissed copyWith({WebhookDependabotAlertAutoDismissedAction? action, DependabotAlert? alert, SimpleInstallation Function()? installation, OrganizationSimpleWebhooks Function()? organization, EnterpriseWebhooks Function()? enterprise, RepositoryWebhooks? repository, SimpleUser? sender, }) { return WebhookDependabotAlertAutoDismissed(
  action: action ?? this.action,
  alert: alert ?? this.alert,
  installation: installation != null ? installation() : this.installation,
  organization: organization != null ? organization() : this.organization,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  repository: repository ?? this.repository,
  sender: sender ?? this.sender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookDependabotAlertAutoDismissed &&
          action == other.action &&
          alert == other.alert &&
          installation == other.installation &&
          organization == other.organization &&
          enterprise == other.enterprise &&
          repository == other.repository &&
          sender == other.sender; } 
@override int get hashCode { return Object.hash(action, alert, installation, organization, enterprise, repository, sender); } 
@override String toString() { return 'WebhookDependabotAlertAutoDismissed(action: $action, alert: $alert, installation: $installation, organization: $organization, enterprise: $enterprise, repository: $repository, sender: $sender)'; } 
 }
