// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'discussion.dart';import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'repository_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';@immutable final class WebhookDiscussionUnlockedAction {const WebhookDiscussionUnlockedAction._(this.value);

factory WebhookDiscussionUnlockedAction.fromJson(String json) { return switch (json) {
  'unlocked' => unlocked,
  _ => WebhookDiscussionUnlockedAction._(json),
}; }

static const WebhookDiscussionUnlockedAction unlocked = WebhookDiscussionUnlockedAction._('unlocked');

static const List<WebhookDiscussionUnlockedAction> values = [unlocked];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookDiscussionUnlockedAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookDiscussionUnlockedAction($value)'; } 
 }
@immutable final class WebhookDiscussionUnlocked {const WebhookDiscussionUnlocked({required this.action, required this.discussion, required this.repository, required this.sender, this.enterprise, this.installation, this.organization, });

factory WebhookDiscussionUnlocked.fromJson(Map<String, dynamic> json) { return WebhookDiscussionUnlocked(
  action: WebhookDiscussionUnlockedAction.fromJson(json['action'] as String),
  discussion: Discussion.fromJson(json['discussion'] as Map<String, dynamic>),
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  organization: json['organization'] != null ? OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>) : null,
  repository: RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>),
  sender: SimpleUser.fromJson(json['sender'] as Map<String, dynamic>),
); }

final WebhookDiscussionUnlockedAction action;

final Discussion discussion;

final EnterpriseWebhooks? enterprise;

final SimpleInstallation? installation;

final OrganizationSimpleWebhooks? organization;

final RepositoryWebhooks repository;

final SimpleUser sender;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
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
WebhookDiscussionUnlocked copyWith({WebhookDiscussionUnlockedAction? action, Discussion? discussion, EnterpriseWebhooks Function()? enterprise, SimpleInstallation Function()? installation, OrganizationSimpleWebhooks Function()? organization, RepositoryWebhooks? repository, SimpleUser? sender, }) { return WebhookDiscussionUnlocked(
  action: action ?? this.action,
  discussion: discussion ?? this.discussion,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  installation: installation != null ? installation() : this.installation,
  organization: organization != null ? organization() : this.organization,
  repository: repository ?? this.repository,
  sender: sender ?? this.sender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookDiscussionUnlocked &&
          action == other.action &&
          discussion == other.discussion &&
          enterprise == other.enterprise &&
          installation == other.installation &&
          organization == other.organization &&
          repository == other.repository &&
          sender == other.sender; } 
@override int get hashCode { return Object.hash(action, discussion, enterprise, installation, organization, repository, sender); } 
@override String toString() { return 'WebhookDiscussionUnlocked(action: $action, discussion: $discussion, enterprise: $enterprise, installation: $installation, organization: $organization, repository: $repository, sender: $sender)'; } 
 }
