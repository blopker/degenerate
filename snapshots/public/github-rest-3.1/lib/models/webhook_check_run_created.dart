// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'check_run_with_simple_check_suite.dart';import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'repository_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';@immutable final class WebhookCheckRunCreatedAction {const WebhookCheckRunCreatedAction._(this.value);

factory WebhookCheckRunCreatedAction.fromJson(String json) { return switch (json) {
  'created' => created,
  _ => WebhookCheckRunCreatedAction._(json),
}; }

static const WebhookCheckRunCreatedAction created = WebhookCheckRunCreatedAction._('created');

static const List<WebhookCheckRunCreatedAction> values = [created];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookCheckRunCreatedAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookCheckRunCreatedAction($value)'; } 
 }
@immutable final class WebhookCheckRunCreated {const WebhookCheckRunCreated({required this.checkRun, required this.repository, required this.sender, this.action, this.installation, this.enterprise, this.organization, });

factory WebhookCheckRunCreated.fromJson(Map<String, dynamic> json) { return WebhookCheckRunCreated(
  action: json['action'] != null ? WebhookCheckRunCreatedAction.fromJson(json['action'] as String) : null,
  checkRun: CheckRunWithSimpleCheckSuite.fromJson(json['check_run'] as Map<String, dynamic>),
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  organization: json['organization'] != null ? OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>) : null,
  repository: RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>),
  sender: SimpleUser.fromJson(json['sender'] as Map<String, dynamic>),
); }

final WebhookCheckRunCreatedAction? action;

final CheckRunWithSimpleCheckSuite checkRun;

final SimpleInstallation? installation;

final EnterpriseWebhooks? enterprise;

final OrganizationSimpleWebhooks? organization;

final RepositoryWebhooks repository;

final SimpleUser sender;

Map<String, dynamic> toJson() { return {
  if (action != null) 'action': action?.toJson(),
  'check_run': checkRun.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  if (organization != null) 'organization': organization?.toJson(),
  'repository': repository.toJson(),
  'sender': sender.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('check_run') &&
      json.containsKey('repository') &&
      json.containsKey('sender'); } 
WebhookCheckRunCreated copyWith({WebhookCheckRunCreatedAction Function()? action, CheckRunWithSimpleCheckSuite? checkRun, SimpleInstallation Function()? installation, EnterpriseWebhooks Function()? enterprise, OrganizationSimpleWebhooks Function()? organization, RepositoryWebhooks? repository, SimpleUser? sender, }) { return WebhookCheckRunCreated(
  action: action != null ? action() : this.action,
  checkRun: checkRun ?? this.checkRun,
  installation: installation != null ? installation() : this.installation,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  organization: organization != null ? organization() : this.organization,
  repository: repository ?? this.repository,
  sender: sender ?? this.sender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookCheckRunCreated &&
          action == other.action &&
          checkRun == other.checkRun &&
          installation == other.installation &&
          enterprise == other.enterprise &&
          organization == other.organization &&
          repository == other.repository &&
          sender == other.sender; } 
@override int get hashCode { return Object.hash(action, checkRun, installation, enterprise, organization, repository, sender); } 
@override String toString() { return 'WebhookCheckRunCreated(action: $action, checkRun: $checkRun, installation: $installation, enterprise: $enterprise, organization: $organization, repository: $repository, sender: $sender)'; } 
 }
