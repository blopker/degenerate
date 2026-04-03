// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'enterprise_webhooks.dart';import 'milestone.dart';import 'organization_simple_webhooks.dart';import 'repository_webhooks.dart';import 'simple_user.dart';import 'webhooks_number.dart';import 'webhooks_pull_request5.dart';@immutable final class WebhookPullRequestDemilestonedAction {const WebhookPullRequestDemilestonedAction._(this.value);

factory WebhookPullRequestDemilestonedAction.fromJson(String json) { return switch (json) {
  'demilestoned' => demilestoned,
  _ => WebhookPullRequestDemilestonedAction._(json),
}; }

static const WebhookPullRequestDemilestonedAction demilestoned = WebhookPullRequestDemilestonedAction._('demilestoned');

static const List<WebhookPullRequestDemilestonedAction> values = [demilestoned];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookPullRequestDemilestonedAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookPullRequestDemilestonedAction($value)'; } 
 }
@immutable final class WebhookPullRequestDemilestoned {const WebhookPullRequestDemilestoned({required this.action, required this.number, required this.pullRequest, required this.repository, this.enterprise, this.milestone, this.organization, this.sender, });

factory WebhookPullRequestDemilestoned.fromJson(Map<String, dynamic> json) { return WebhookPullRequestDemilestoned(
  action: WebhookPullRequestDemilestonedAction.fromJson(json['action'] as String),
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  milestone: json['milestone'] != null ? Milestone.fromJson(json['milestone'] as Map<String, dynamic>) : null,
  number: WebhooksNumber.fromJson(json['number'] as num),
  organization: json['organization'] != null ? OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>) : null,
  pullRequest: WebhooksPullRequest5.fromJson(json['pull_request'] as Map<String, dynamic>),
  repository: RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>),
  sender: json['sender'] != null ? SimpleUser.fromJson(json['sender'] as Map<String, dynamic>) : null,
); }

final WebhookPullRequestDemilestonedAction action;

final EnterpriseWebhooks? enterprise;

final Milestone? milestone;

/// The pull request number.
final WebhooksNumber number;

final OrganizationSimpleWebhooks? organization;

final WebhooksPullRequest5 pullRequest;

final RepositoryWebhooks repository;

final SimpleUser? sender;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  if (milestone != null) 'milestone': milestone?.toJson(),
  'number': number.toJson(),
  if (organization != null) 'organization': organization?.toJson(),
  'pull_request': pullRequest.toJson(),
  'repository': repository.toJson(),
  if (sender != null) 'sender': sender?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('number') &&
      json.containsKey('pull_request') &&
      json.containsKey('repository'); } 
WebhookPullRequestDemilestoned copyWith({WebhookPullRequestDemilestonedAction? action, EnterpriseWebhooks Function()? enterprise, Milestone Function()? milestone, WebhooksNumber? number, OrganizationSimpleWebhooks Function()? organization, WebhooksPullRequest5? pullRequest, RepositoryWebhooks? repository, SimpleUser Function()? sender, }) { return WebhookPullRequestDemilestoned(
  action: action ?? this.action,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  milestone: milestone != null ? milestone() : this.milestone,
  number: number ?? this.number,
  organization: organization != null ? organization() : this.organization,
  pullRequest: pullRequest ?? this.pullRequest,
  repository: repository ?? this.repository,
  sender: sender != null ? sender() : this.sender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestDemilestoned &&
          action == other.action &&
          enterprise == other.enterprise &&
          milestone == other.milestone &&
          number == other.number &&
          organization == other.organization &&
          pullRequest == other.pullRequest &&
          repository == other.repository &&
          sender == other.sender; } 
@override int get hashCode { return Object.hash(action, enterprise, milestone, number, organization, pullRequest, repository, sender); } 
@override String toString() { return 'WebhookPullRequestDemilestoned(action: $action, enterprise: $enterprise, milestone: $milestone, number: $number, organization: $organization, pullRequest: $pullRequest, repository: $repository, sender: $sender)'; } 
 }
