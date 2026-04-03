// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'discussion.dart';import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'repository_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';import 'webhook_discussion_edited_changes.dart';@immutable final class WebhookDiscussionEditedAction {const WebhookDiscussionEditedAction._(this.value);

factory WebhookDiscussionEditedAction.fromJson(String json) { return switch (json) {
  'edited' => edited,
  _ => WebhookDiscussionEditedAction._(json),
}; }

static const WebhookDiscussionEditedAction edited = WebhookDiscussionEditedAction._('edited');

static const List<WebhookDiscussionEditedAction> values = [edited];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookDiscussionEditedAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookDiscussionEditedAction($value)'; } 
 }
@immutable final class WebhookDiscussionEdited {const WebhookDiscussionEdited({required this.action, required this.discussion, required this.repository, required this.sender, this.changes, this.enterprise, this.installation, this.organization, });

factory WebhookDiscussionEdited.fromJson(Map<String, dynamic> json) { return WebhookDiscussionEdited(
  action: WebhookDiscussionEditedAction.fromJson(json['action'] as String),
  changes: json['changes'] != null ? WebhookDiscussionEditedChanges.fromJson(json['changes'] as Map<String, dynamic>) : null,
  discussion: Discussion.fromJson(json['discussion'] as Map<String, dynamic>),
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  organization: json['organization'] != null ? OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>) : null,
  repository: RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>),
  sender: SimpleUser.fromJson(json['sender'] as Map<String, dynamic>),
); }

final WebhookDiscussionEditedAction action;

final WebhookDiscussionEditedChanges? changes;

final Discussion discussion;

final EnterpriseWebhooks? enterprise;

final SimpleInstallation? installation;

final OrganizationSimpleWebhooks? organization;

final RepositoryWebhooks repository;

final SimpleUser sender;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  if (changes != null) 'changes': changes?.toJson(),
  'discussion': discussion.toJson(),
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
  if (organization != null) 'organization': organization?.toJson(),
  'repository': repository.toJson(),
  'sender': sender.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('discussion') &&
      json.containsKey('repository') &&
      json.containsKey('sender'); } 
WebhookDiscussionEdited copyWith({WebhookDiscussionEditedAction? action, WebhookDiscussionEditedChanges Function()? changes, Discussion? discussion, EnterpriseWebhooks Function()? enterprise, SimpleInstallation Function()? installation, OrganizationSimpleWebhooks Function()? organization, RepositoryWebhooks? repository, SimpleUser? sender, }) { return WebhookDiscussionEdited(
  action: action ?? this.action,
  changes: changes != null ? changes() : this.changes,
  discussion: discussion ?? this.discussion,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  installation: installation != null ? installation() : this.installation,
  organization: organization != null ? organization() : this.organization,
  repository: repository ?? this.repository,
  sender: sender ?? this.sender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookDiscussionEdited &&
          action == other.action &&
          changes == other.changes &&
          discussion == other.discussion &&
          enterprise == other.enterprise &&
          installation == other.installation &&
          organization == other.organization &&
          repository == other.repository &&
          sender == other.sender; } 
@override int get hashCode { return Object.hash(action, changes, discussion, enterprise, installation, organization, repository, sender); } 
@override String toString() { return 'WebhookDiscussionEdited(action: $action, changes: $changes, discussion: $discussion, enterprise: $enterprise, installation: $installation, organization: $organization, repository: $repository, sender: $sender)'; } 
 }
