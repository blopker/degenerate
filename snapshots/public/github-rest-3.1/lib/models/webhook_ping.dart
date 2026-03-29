// GENERATED CODE - DO NOT MODIFY BY HAND

import 'organization_simple_webhooks.dart';import 'repository_webhooks.dart';import 'simple_user.dart';import 'webhook_ping_hook.dart';final class WebhookPing {const WebhookPing({this.hook, this.hookId, this.organization, this.repository, this.sender, this.zen, });

factory WebhookPing.fromJson(Map<String, dynamic> json) { return WebhookPing(
  hook: json['hook'] != null ? WebhookPingHook.fromJson(json['hook'] as Map<String, dynamic>) : null,
  hookId: json['hook_id'] != null ? (json['hook_id'] as num).toInt() : null,
  organization: json['organization'] != null ? OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>) : null,
  repository: json['repository'] != null ? RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>) : null,
  sender: json['sender'] != null ? SimpleUser.fromJson(json['sender'] as Map<String, dynamic>) : null,
  zen: json['zen'] as String?,
); }

/// The webhook that is being pinged
final WebhookPingHook? hook;

/// The ID of the webhook that triggered the ping.
final int? hookId;

final OrganizationSimpleWebhooks? organization;

final RepositoryWebhooks? repository;

final SimpleUser? sender;

/// Random string of GitHub zen.
final String? zen;

Map<String, dynamic> toJson() { return {
  if (hook != null) 'hook': hook?.toJson(),
  'hook_id': ?hookId,
  if (organization != null) 'organization': organization?.toJson(),
  if (repository != null) 'repository': repository?.toJson(),
  if (sender != null) 'sender': sender?.toJson(),
  'zen': ?zen,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'hook', 'hook_id', 'organization', 'repository', 'sender', 'zen'}.contains(key)); } 
WebhookPing copyWith({WebhookPingHook Function()? hook, int Function()? hookId, OrganizationSimpleWebhooks Function()? organization, RepositoryWebhooks Function()? repository, SimpleUser Function()? sender, String Function()? zen, }) { return WebhookPing(
  hook: hook != null ? hook() : this.hook,
  hookId: hookId != null ? hookId() : this.hookId,
  organization: organization != null ? organization() : this.organization,
  repository: repository != null ? repository() : this.repository,
  sender: sender != null ? sender() : this.sender,
  zen: zen != null ? zen() : this.zen,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPing &&
          hook == other.hook &&
          hookId == other.hookId &&
          organization == other.organization &&
          repository == other.repository &&
          sender == other.sender &&
          zen == other.zen; } 
@override int get hashCode { return Object.hash(hook, hookId, organization, repository, sender, zen); } 
@override String toString() { return 'WebhookPing(hook: $hook, hookId: $hookId, organization: $organization, repository: $repository, sender: $sender, zen: $zen)'; } 
 }
