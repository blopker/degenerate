// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'repository_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';import 'webhooks_milestone3.dart';@immutable final class WebhookMilestoneOpenedAction {const WebhookMilestoneOpenedAction._(this.value);

factory WebhookMilestoneOpenedAction.fromJson(String json) { return switch (json) {
  'opened' => opened,
  _ => WebhookMilestoneOpenedAction._(json),
}; }

static const WebhookMilestoneOpenedAction opened = WebhookMilestoneOpenedAction._('opened');

static const List<WebhookMilestoneOpenedAction> values = [opened];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookMilestoneOpenedAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookMilestoneOpenedAction($value)'; } 
 }
@immutable final class WebhookMilestoneOpened {const WebhookMilestoneOpened({required this.action, required this.milestone, required this.repository, required this.sender, this.enterprise, this.installation, this.organization, });

factory WebhookMilestoneOpened.fromJson(Map<String, dynamic> json) { return WebhookMilestoneOpened(
  action: WebhookMilestoneOpenedAction.fromJson(json['action'] as String),
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  milestone: WebhooksMilestone3.fromJson(json['milestone'] as Map<String, dynamic>),
  organization: json['organization'] != null ? OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>) : null,
  repository: RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>),
  sender: SimpleUser.fromJson(json['sender'] as Map<String, dynamic>),
); }

final WebhookMilestoneOpenedAction action;

final EnterpriseWebhooks? enterprise;

final SimpleInstallation? installation;

final WebhooksMilestone3 milestone;

final OrganizationSimpleWebhooks? organization;

final RepositoryWebhooks repository;

final SimpleUser sender;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
  'milestone': milestone.toJson(),
  if (organization != null) 'organization': organization?.toJson(),
  'repository': repository.toJson(),
  'sender': sender.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('milestone') &&
      json.containsKey('repository') &&
      json.containsKey('sender'); } 
WebhookMilestoneOpened copyWith({WebhookMilestoneOpenedAction? action, EnterpriseWebhooks Function()? enterprise, SimpleInstallation Function()? installation, WebhooksMilestone3? milestone, OrganizationSimpleWebhooks Function()? organization, RepositoryWebhooks? repository, SimpleUser? sender, }) { return WebhookMilestoneOpened(
  action: action ?? this.action,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  installation: installation != null ? installation() : this.installation,
  milestone: milestone ?? this.milestone,
  organization: organization != null ? organization() : this.organization,
  repository: repository ?? this.repository,
  sender: sender ?? this.sender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookMilestoneOpened &&
          action == other.action &&
          enterprise == other.enterprise &&
          installation == other.installation &&
          milestone == other.milestone &&
          organization == other.organization &&
          repository == other.repository &&
          sender == other.sender; } 
@override int get hashCode { return Object.hash(action, enterprise, installation, milestone, organization, repository, sender); } 
@override String toString() { return 'WebhookMilestoneOpened(action: $action, enterprise: $enterprise, installation: $installation, milestone: $milestone, organization: $organization, repository: $repository, sender: $sender)'; } 
 }
