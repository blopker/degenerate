// GENERATED CODE - DO NOT MODIFY BY HAND

import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'repository_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';import 'webhooks_milestone.dart';final class WebhookMilestoneClosedAction {const WebhookMilestoneClosedAction._(this.value);

factory WebhookMilestoneClosedAction.fromJson(String json) { return switch (json) {
  'closed' => closed,
  _ => WebhookMilestoneClosedAction._(json),
}; }

static const WebhookMilestoneClosedAction closed = WebhookMilestoneClosedAction._('closed');

static const List<WebhookMilestoneClosedAction> values = [closed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookMilestoneClosedAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookMilestoneClosedAction($value)'; } 
 }
final class WebhookMilestoneClosed {const WebhookMilestoneClosed({required this.action, this.enterprise, this.installation, required this.milestone, this.organization, required this.repository, required this.sender, });

factory WebhookMilestoneClosed.fromJson(Map<String, dynamic> json) { return WebhookMilestoneClosed(
  action: WebhookMilestoneClosedAction.fromJson(json['action'] as String),
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  milestone: WebhooksMilestone.fromJson(json['milestone'] as Map<String, dynamic>),
  organization: json['organization'] != null ? OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>) : null,
  repository: RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>),
  sender: SimpleUser.fromJson(json['sender'] as Map<String, dynamic>),
); }

final WebhookMilestoneClosedAction action;

final EnterpriseWebhooks? enterprise;

final SimpleInstallation? installation;

final WebhooksMilestone milestone;

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
WebhookMilestoneClosed copyWith({WebhookMilestoneClosedAction? action, EnterpriseWebhooks Function()? enterprise, SimpleInstallation Function()? installation, WebhooksMilestone? milestone, OrganizationSimpleWebhooks Function()? organization, RepositoryWebhooks? repository, SimpleUser? sender, }) { return WebhookMilestoneClosed(
  action: action ?? this.action,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  installation: installation != null ? installation() : this.installation,
  milestone: milestone ?? this.milestone,
  organization: organization != null ? organization() : this.organization,
  repository: repository ?? this.repository,
  sender: sender ?? this.sender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookMilestoneClosed &&
          action == other.action &&
          enterprise == other.enterprise &&
          installation == other.installation &&
          milestone == other.milestone &&
          organization == other.organization &&
          repository == other.repository &&
          sender == other.sender; } 
@override int get hashCode { return Object.hash(action, enterprise, installation, milestone, organization, repository, sender); } 
@override String toString() { return 'WebhookMilestoneClosed(action: $action, enterprise: $enterprise, installation: $installation, milestone: $milestone, organization: $organization, repository: $repository, sender: $sender)'; } 
 }
