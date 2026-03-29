// GENERATED CODE - DO NOT MODIFY BY HAND

import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'repository_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';import 'webhook_code_scanning_alert_reopened_by_user_alert.dart';import 'webhooks_code_scanning_commit_oid.dart';import 'webhooks_code_scanning_ref.dart';final class WebhookCodeScanningAlertReopenedByUserAction {const WebhookCodeScanningAlertReopenedByUserAction._(this.value);

factory WebhookCodeScanningAlertReopenedByUserAction.fromJson(String json) { return switch (json) {
  'reopened_by_user' => reopenedByUser,
  _ => WebhookCodeScanningAlertReopenedByUserAction._(json),
}; }

static const WebhookCodeScanningAlertReopenedByUserAction reopenedByUser = WebhookCodeScanningAlertReopenedByUserAction._('reopened_by_user');

static const List<WebhookCodeScanningAlertReopenedByUserAction> values = [reopenedByUser];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookCodeScanningAlertReopenedByUserAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookCodeScanningAlertReopenedByUserAction($value)'; } 
 }
final class WebhookCodeScanningAlertReopenedByUser {const WebhookCodeScanningAlertReopenedByUser({required this.action, required this.alert, required this.commitOid, this.enterprise, this.installation, this.organization, required this.ref, required this.repository, required this.sender, });

factory WebhookCodeScanningAlertReopenedByUser.fromJson(Map<String, dynamic> json) { return WebhookCodeScanningAlertReopenedByUser(
  action: WebhookCodeScanningAlertReopenedByUserAction.fromJson(json['action'] as String),
  alert: WebhookCodeScanningAlertReopenedByUserAlert.fromJson(json['alert'] as Map<String, dynamic>),
  commitOid: WebhooksCodeScanningCommitOid.fromJson(json['commit_oid'] as String),
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  organization: json['organization'] != null ? OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>) : null,
  ref: WebhooksCodeScanningRef.fromJson(json['ref'] as String),
  repository: RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>),
  sender: SimpleUser.fromJson(json['sender'] as Map<String, dynamic>),
); }

final WebhookCodeScanningAlertReopenedByUserAction action;

/// The code scanning alert involved in the event.
final WebhookCodeScanningAlertReopenedByUserAlert alert;

/// The commit SHA of the code scanning alert. When the action is `reopened_by_user` or `closed_by_user`, the event was triggered by the `sender` and this value will be empty.
final WebhooksCodeScanningCommitOid commitOid;

final EnterpriseWebhooks? enterprise;

final SimpleInstallation? installation;

final OrganizationSimpleWebhooks? organization;

/// The Git reference of the code scanning alert. When the action is `reopened_by_user` or `closed_by_user`, the event was triggered by the `sender` and this value will be empty.
final WebhooksCodeScanningRef ref;

final RepositoryWebhooks repository;

final SimpleUser sender;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  'alert': alert.toJson(),
  'commit_oid': commitOid.toJson(),
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
  if (organization != null) 'organization': organization?.toJson(),
  'ref': ref.toJson(),
  'repository': repository.toJson(),
  'sender': sender.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('alert') &&
      json.containsKey('commit_oid') &&
      json.containsKey('ref') &&
      json.containsKey('repository') &&
      json.containsKey('sender'); } 
WebhookCodeScanningAlertReopenedByUser copyWith({WebhookCodeScanningAlertReopenedByUserAction? action, WebhookCodeScanningAlertReopenedByUserAlert? alert, WebhooksCodeScanningCommitOid? commitOid, EnterpriseWebhooks Function()? enterprise, SimpleInstallation Function()? installation, OrganizationSimpleWebhooks Function()? organization, WebhooksCodeScanningRef? ref, RepositoryWebhooks? repository, SimpleUser? sender, }) { return WebhookCodeScanningAlertReopenedByUser(
  action: action ?? this.action,
  alert: alert ?? this.alert,
  commitOid: commitOid ?? this.commitOid,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  installation: installation != null ? installation() : this.installation,
  organization: organization != null ? organization() : this.organization,
  ref: ref ?? this.ref,
  repository: repository ?? this.repository,
  sender: sender ?? this.sender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookCodeScanningAlertReopenedByUser &&
          action == other.action &&
          alert == other.alert &&
          commitOid == other.commitOid &&
          enterprise == other.enterprise &&
          installation == other.installation &&
          organization == other.organization &&
          ref == other.ref &&
          repository == other.repository &&
          sender == other.sender; } 
@override int get hashCode { return Object.hash(action, alert, commitOid, enterprise, installation, organization, ref, repository, sender); } 
@override String toString() { return 'WebhookCodeScanningAlertReopenedByUser(action: $action, alert: $alert, commitOid: $commitOid, enterprise: $enterprise, installation: $installation, organization: $organization, ref: $ref, repository: $repository, sender: $sender)'; } 
 }
