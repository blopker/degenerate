// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'repository_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';import 'webhook_code_scanning_alert_appeared_in_branch_alert.dart';import 'webhooks_code_scanning_commit_oid.dart';import 'webhooks_code_scanning_ref.dart';@immutable final class WebhookCodeScanningAlertAppearedInBranchAction {const WebhookCodeScanningAlertAppearedInBranchAction._(this.value);

factory WebhookCodeScanningAlertAppearedInBranchAction.fromJson(String json) { return switch (json) {
  'appeared_in_branch' => appearedInBranch,
  _ => WebhookCodeScanningAlertAppearedInBranchAction._(json),
}; }

static const WebhookCodeScanningAlertAppearedInBranchAction appearedInBranch = WebhookCodeScanningAlertAppearedInBranchAction._('appeared_in_branch');

static const List<WebhookCodeScanningAlertAppearedInBranchAction> values = [appearedInBranch];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookCodeScanningAlertAppearedInBranchAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookCodeScanningAlertAppearedInBranchAction($value)'; } 
 }
@immutable final class WebhookCodeScanningAlertAppearedInBranch {const WebhookCodeScanningAlertAppearedInBranch({required this.action, required this.alert, required this.commitOid, required this.ref, required this.repository, required this.sender, this.enterprise, this.installation, this.organization, });

factory WebhookCodeScanningAlertAppearedInBranch.fromJson(Map<String, dynamic> json) { return WebhookCodeScanningAlertAppearedInBranch(
  action: WebhookCodeScanningAlertAppearedInBranchAction.fromJson(json['action'] as String),
  alert: WebhookCodeScanningAlertAppearedInBranchAlert.fromJson(json['alert'] as Map<String, dynamic>),
  commitOid: WebhooksCodeScanningCommitOid.fromJson(json['commit_oid'] as String),
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  organization: json['organization'] != null ? OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>) : null,
  ref: WebhooksCodeScanningRef.fromJson(json['ref'] as String),
  repository: RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>),
  sender: SimpleUser.fromJson(json['sender'] as Map<String, dynamic>),
); }

final WebhookCodeScanningAlertAppearedInBranchAction action;

/// The code scanning alert involved in the event.
final WebhookCodeScanningAlertAppearedInBranchAlert alert;

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
WebhookCodeScanningAlertAppearedInBranch copyWith({WebhookCodeScanningAlertAppearedInBranchAction? action, WebhookCodeScanningAlertAppearedInBranchAlert? alert, WebhooksCodeScanningCommitOid? commitOid, EnterpriseWebhooks Function()? enterprise, SimpleInstallation Function()? installation, OrganizationSimpleWebhooks Function()? organization, WebhooksCodeScanningRef? ref, RepositoryWebhooks? repository, SimpleUser? sender, }) { return WebhookCodeScanningAlertAppearedInBranch(
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
      other is WebhookCodeScanningAlertAppearedInBranch &&
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
@override String toString() { return 'WebhookCodeScanningAlertAppearedInBranch(action: $action, alert: $alert, commitOid: $commitOid, enterprise: $enterprise, installation: $installation, organization: $organization, ref: $ref, repository: $repository, sender: $sender)'; } 
 }
