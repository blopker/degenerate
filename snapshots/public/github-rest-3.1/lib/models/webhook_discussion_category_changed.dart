// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'discussion.dart';import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'repository_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';import 'webhook_discussion_category_changed_changes.dart';@immutable final class WebhookDiscussionCategoryChangedAction {const WebhookDiscussionCategoryChangedAction._(this.value);

factory WebhookDiscussionCategoryChangedAction.fromJson(String json) { return switch (json) {
  'category_changed' => categoryChanged,
  _ => WebhookDiscussionCategoryChangedAction._(json),
}; }

static const WebhookDiscussionCategoryChangedAction categoryChanged = WebhookDiscussionCategoryChangedAction._('category_changed');

static const List<WebhookDiscussionCategoryChangedAction> values = [categoryChanged];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookDiscussionCategoryChangedAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookDiscussionCategoryChangedAction($value)'; } 
 }
@immutable final class WebhookDiscussionCategoryChanged {const WebhookDiscussionCategoryChanged({required this.action, required this.changes, required this.discussion, required this.repository, required this.sender, this.enterprise, this.installation, this.organization, });

factory WebhookDiscussionCategoryChanged.fromJson(Map<String, dynamic> json) { return WebhookDiscussionCategoryChanged(
  action: WebhookDiscussionCategoryChangedAction.fromJson(json['action'] as String),
  changes: WebhookDiscussionCategoryChangedChanges.fromJson(json['changes'] as Map<String, dynamic>),
  discussion: Discussion.fromJson(json['discussion'] as Map<String, dynamic>),
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  organization: json['organization'] != null ? OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>) : null,
  repository: RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>),
  sender: SimpleUser.fromJson(json['sender'] as Map<String, dynamic>),
); }

final WebhookDiscussionCategoryChangedAction action;

final WebhookDiscussionCategoryChangedChanges changes;

final Discussion discussion;

final EnterpriseWebhooks? enterprise;

final SimpleInstallation? installation;

final OrganizationSimpleWebhooks? organization;

final RepositoryWebhooks repository;

final SimpleUser sender;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  'changes': changes.toJson(),
  'discussion': discussion.toJson(),
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
  if (organization != null) 'organization': organization?.toJson(),
  'repository': repository.toJson(),
  'sender': sender.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('changes') &&
      json.containsKey('discussion') &&
      json.containsKey('repository') &&
      json.containsKey('sender'); } 
WebhookDiscussionCategoryChanged copyWith({WebhookDiscussionCategoryChangedAction? action, WebhookDiscussionCategoryChangedChanges? changes, Discussion? discussion, EnterpriseWebhooks Function()? enterprise, SimpleInstallation Function()? installation, OrganizationSimpleWebhooks Function()? organization, RepositoryWebhooks? repository, SimpleUser? sender, }) { return WebhookDiscussionCategoryChanged(
  action: action ?? this.action,
  changes: changes ?? this.changes,
  discussion: discussion ?? this.discussion,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  installation: installation != null ? installation() : this.installation,
  organization: organization != null ? organization() : this.organization,
  repository: repository ?? this.repository,
  sender: sender ?? this.sender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookDiscussionCategoryChanged &&
          action == other.action &&
          changes == other.changes &&
          discussion == other.discussion &&
          enterprise == other.enterprise &&
          installation == other.installation &&
          organization == other.organization &&
          repository == other.repository &&
          sender == other.sender; } 
@override int get hashCode { return Object.hash(action, changes, discussion, enterprise, installation, organization, repository, sender); } 
@override String toString() { return 'WebhookDiscussionCategoryChanged(action: $action, changes: $changes, discussion: $discussion, enterprise: $enterprise, installation: $installation, organization: $organization, repository: $repository, sender: $sender)'; } 
 }
