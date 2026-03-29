// GENERATED CODE - DO NOT MODIFY BY HAND

import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'repository_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';import 'webhook_project_card_moved_changes.dart';import 'webhook_project_card_moved_project_card.dart';final class WebhookProjectCardMovedAction {const WebhookProjectCardMovedAction._(this.value);

factory WebhookProjectCardMovedAction.fromJson(String json) { return switch (json) {
  'moved' => moved,
  _ => WebhookProjectCardMovedAction._(json),
}; }

static const WebhookProjectCardMovedAction moved = WebhookProjectCardMovedAction._('moved');

static const List<WebhookProjectCardMovedAction> values = [moved];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookProjectCardMovedAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookProjectCardMovedAction($value)'; } 
 }
final class WebhookProjectCardMoved {const WebhookProjectCardMoved({required this.action, this.changes, this.enterprise, this.installation, this.organization, required this.projectCard, this.repository, required this.sender, });

factory WebhookProjectCardMoved.fromJson(Map<String, dynamic> json) { return WebhookProjectCardMoved(
  action: WebhookProjectCardMovedAction.fromJson(json['action'] as String),
  changes: json['changes'] != null ? WebhookProjectCardMovedChanges.fromJson(json['changes'] as Map<String, dynamic>) : null,
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  organization: json['organization'] != null ? OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>) : null,
  projectCard: WebhookProjectCardMovedProjectCard.fromJson(json['project_card'] as Map<String, dynamic>),
  repository: json['repository'] != null ? RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>) : null,
  sender: SimpleUser.fromJson(json['sender'] as Map<String, dynamic>),
); }

final WebhookProjectCardMovedAction action;

final WebhookProjectCardMovedChanges? changes;

final EnterpriseWebhooks? enterprise;

final SimpleInstallation? installation;

final OrganizationSimpleWebhooks? organization;

final WebhookProjectCardMovedProjectCard projectCard;

final RepositoryWebhooks? repository;

final SimpleUser sender;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  if (changes != null) 'changes': changes?.toJson(),
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
  if (organization != null) 'organization': organization?.toJson(),
  'project_card': projectCard.toJson(),
  if (repository != null) 'repository': repository?.toJson(),
  'sender': sender.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('project_card') &&
      json.containsKey('sender'); } 
WebhookProjectCardMoved copyWith({WebhookProjectCardMovedAction? action, WebhookProjectCardMovedChanges Function()? changes, EnterpriseWebhooks Function()? enterprise, SimpleInstallation Function()? installation, OrganizationSimpleWebhooks Function()? organization, WebhookProjectCardMovedProjectCard? projectCard, RepositoryWebhooks Function()? repository, SimpleUser? sender, }) { return WebhookProjectCardMoved(
  action: action ?? this.action,
  changes: changes != null ? changes() : this.changes,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  installation: installation != null ? installation() : this.installation,
  organization: organization != null ? organization() : this.organization,
  projectCard: projectCard ?? this.projectCard,
  repository: repository != null ? repository() : this.repository,
  sender: sender ?? this.sender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookProjectCardMoved &&
          action == other.action &&
          changes == other.changes &&
          enterprise == other.enterprise &&
          installation == other.installation &&
          organization == other.organization &&
          projectCard == other.projectCard &&
          repository == other.repository &&
          sender == other.sender; } 
@override int get hashCode { return Object.hash(action, changes, enterprise, installation, organization, projectCard, repository, sender); } 
@override String toString() { return 'WebhookProjectCardMoved(action: $action, changes: $changes, enterprise: $enterprise, installation: $installation, organization: $organization, projectCard: $projectCard, repository: $repository, sender: $sender)'; } 
 }
