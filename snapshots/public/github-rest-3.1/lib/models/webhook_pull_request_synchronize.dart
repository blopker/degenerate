// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'repository_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';import 'webhook_pull_request_synchronize_pull_request.dart';import 'webhooks_number.dart';@immutable final class WebhookPullRequestSynchronizeAction {const WebhookPullRequestSynchronizeAction._(this.value);

factory WebhookPullRequestSynchronizeAction.fromJson(String json) { return switch (json) {
  'synchronize' => synchronize,
  _ => WebhookPullRequestSynchronizeAction._(json),
}; }

static const WebhookPullRequestSynchronizeAction synchronize = WebhookPullRequestSynchronizeAction._('synchronize');

static const List<WebhookPullRequestSynchronizeAction> values = [synchronize];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookPullRequestSynchronizeAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookPullRequestSynchronizeAction($value)'; } 
 }
@immutable final class WebhookPullRequestSynchronize {const WebhookPullRequestSynchronize({required this.action, required this.after, required this.before, required this.number, required this.pullRequest, required this.repository, required this.sender, this.enterprise, this.installation, this.organization, });

factory WebhookPullRequestSynchronize.fromJson(Map<String, dynamic> json) { return WebhookPullRequestSynchronize(
  action: WebhookPullRequestSynchronizeAction.fromJson(json['action'] as String),
  after: json['after'] as String,
  before: json['before'] as String,
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  number: WebhooksNumber.fromJson(json['number'] as num),
  organization: json['organization'] != null ? OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>) : null,
  pullRequest: WebhookPullRequestSynchronizePullRequest.fromJson(json['pull_request'] as Map<String, dynamic>),
  repository: RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>),
  sender: SimpleUser.fromJson(json['sender'] as Map<String, dynamic>),
); }

final WebhookPullRequestSynchronizeAction action;

final String after;

final String before;

final EnterpriseWebhooks? enterprise;

final SimpleInstallation? installation;

/// The pull request number.
final WebhooksNumber number;

final OrganizationSimpleWebhooks? organization;

final WebhookPullRequestSynchronizePullRequest pullRequest;

final RepositoryWebhooks repository;

final SimpleUser sender;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  'after': after,
  'before': before,
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
  'number': number.toJson(),
  if (organization != null) 'organization': organization?.toJson(),
  'pull_request': pullRequest.toJson(),
  'repository': repository.toJson(),
  'sender': sender.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('after') && json['after'] is String &&
      json.containsKey('before') && json['before'] is String &&
      json.containsKey('number') &&
      json.containsKey('pull_request') &&
      json.containsKey('repository') &&
      json.containsKey('sender'); } 
WebhookPullRequestSynchronize copyWith({WebhookPullRequestSynchronizeAction? action, String? after, String? before, EnterpriseWebhooks Function()? enterprise, SimpleInstallation Function()? installation, WebhooksNumber? number, OrganizationSimpleWebhooks Function()? organization, WebhookPullRequestSynchronizePullRequest? pullRequest, RepositoryWebhooks? repository, SimpleUser? sender, }) { return WebhookPullRequestSynchronize(
  action: action ?? this.action,
  after: after ?? this.after,
  before: before ?? this.before,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  installation: installation != null ? installation() : this.installation,
  number: number ?? this.number,
  organization: organization != null ? organization() : this.organization,
  pullRequest: pullRequest ?? this.pullRequest,
  repository: repository ?? this.repository,
  sender: sender ?? this.sender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestSynchronize &&
          action == other.action &&
          after == other.after &&
          before == other.before &&
          enterprise == other.enterprise &&
          installation == other.installation &&
          number == other.number &&
          organization == other.organization &&
          pullRequest == other.pullRequest &&
          repository == other.repository &&
          sender == other.sender; } 
@override int get hashCode { return Object.hash(action, after, before, enterprise, installation, number, organization, pullRequest, repository, sender); } 
@override String toString() { return 'WebhookPullRequestSynchronize(action: $action, after: $after, before: $before, enterprise: $enterprise, installation: $installation, number: $number, organization: $organization, pullRequest: $pullRequest, repository: $repository, sender: $sender)'; } 
 }
