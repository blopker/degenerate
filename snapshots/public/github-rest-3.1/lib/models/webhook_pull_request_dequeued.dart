// GENERATED CODE - DO NOT MODIFY BY HAND

import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'repository_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';import 'webhook_pull_request_dequeued_pull_request.dart';final class WebhookPullRequestDequeuedAction {const WebhookPullRequestDequeuedAction._(this.value);

factory WebhookPullRequestDequeuedAction.fromJson(String json) { return switch (json) {
  'dequeued' => dequeued,
  _ => WebhookPullRequestDequeuedAction._(json),
}; }

static const WebhookPullRequestDequeuedAction dequeued = WebhookPullRequestDequeuedAction._('dequeued');

static const List<WebhookPullRequestDequeuedAction> values = [dequeued];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookPullRequestDequeuedAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookPullRequestDequeuedAction($value)'; } 
 }
final class WebhookPullRequestDequeuedReason {const WebhookPullRequestDequeuedReason._(this.value);

factory WebhookPullRequestDequeuedReason.fromJson(String json) { return switch (json) {
  'UNKNOWN_REMOVAL_REASON' => unknownRemovalReason,
  'MANUAL' => manual,
  'MERGE' => merge,
  'MERGE_CONFLICT' => mergeConflict,
  'CI_FAILURE' => ciFailure,
  'CI_TIMEOUT' => ciTimeout,
  'ALREADY_MERGED' => alreadyMerged,
  'QUEUE_CLEARED' => queueCleared,
  'ROLL_BACK' => rollBack,
  'BRANCH_PROTECTIONS' => branchProtections,
  'GIT_TREE_INVALID' => gitTreeInvalid,
  'INVALID_MERGE_COMMIT' => invalidMergeCommit,
  _ => WebhookPullRequestDequeuedReason._(json),
}; }

static const WebhookPullRequestDequeuedReason unknownRemovalReason = WebhookPullRequestDequeuedReason._('UNKNOWN_REMOVAL_REASON');

static const WebhookPullRequestDequeuedReason manual = WebhookPullRequestDequeuedReason._('MANUAL');

static const WebhookPullRequestDequeuedReason merge = WebhookPullRequestDequeuedReason._('MERGE');

static const WebhookPullRequestDequeuedReason mergeConflict = WebhookPullRequestDequeuedReason._('MERGE_CONFLICT');

static const WebhookPullRequestDequeuedReason ciFailure = WebhookPullRequestDequeuedReason._('CI_FAILURE');

static const WebhookPullRequestDequeuedReason ciTimeout = WebhookPullRequestDequeuedReason._('CI_TIMEOUT');

static const WebhookPullRequestDequeuedReason alreadyMerged = WebhookPullRequestDequeuedReason._('ALREADY_MERGED');

static const WebhookPullRequestDequeuedReason queueCleared = WebhookPullRequestDequeuedReason._('QUEUE_CLEARED');

static const WebhookPullRequestDequeuedReason rollBack = WebhookPullRequestDequeuedReason._('ROLL_BACK');

static const WebhookPullRequestDequeuedReason branchProtections = WebhookPullRequestDequeuedReason._('BRANCH_PROTECTIONS');

static const WebhookPullRequestDequeuedReason gitTreeInvalid = WebhookPullRequestDequeuedReason._('GIT_TREE_INVALID');

static const WebhookPullRequestDequeuedReason invalidMergeCommit = WebhookPullRequestDequeuedReason._('INVALID_MERGE_COMMIT');

static const List<WebhookPullRequestDequeuedReason> values = [unknownRemovalReason, manual, merge, mergeConflict, ciFailure, ciTimeout, alreadyMerged, queueCleared, rollBack, branchProtections, gitTreeInvalid, invalidMergeCommit];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookPullRequestDequeuedReason && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookPullRequestDequeuedReason($value)'; } 
 }
final class WebhookPullRequestDequeued {const WebhookPullRequestDequeued({required this.action, this.enterprise, this.installation, required this.number, this.organization, required this.pullRequest, required this.reason, required this.repository, required this.sender, });

factory WebhookPullRequestDequeued.fromJson(Map<String, dynamic> json) { return WebhookPullRequestDequeued(
  action: WebhookPullRequestDequeuedAction.fromJson(json['action'] as String),
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  number: (json['number'] as num).toInt(),
  organization: json['organization'] != null ? OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>) : null,
  pullRequest: WebhookPullRequestDequeuedPullRequest.fromJson(json['pull_request'] as Map<String, dynamic>),
  reason: WebhookPullRequestDequeuedReason.fromJson(json['reason'] as String),
  repository: RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>),
  sender: SimpleUser.fromJson(json['sender'] as Map<String, dynamic>),
); }

final WebhookPullRequestDequeuedAction action;

final EnterpriseWebhooks? enterprise;

final SimpleInstallation? installation;

final int number;

final OrganizationSimpleWebhooks? organization;

final WebhookPullRequestDequeuedPullRequest pullRequest;

final WebhookPullRequestDequeuedReason reason;

final RepositoryWebhooks repository;

final SimpleUser sender;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
  'number': number,
  if (organization != null) 'organization': organization?.toJson(),
  'pull_request': pullRequest.toJson(),
  'reason': reason.toJson(),
  'repository': repository.toJson(),
  'sender': sender.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('number') && json['number'] is num &&
      json.containsKey('pull_request') &&
      json.containsKey('reason') &&
      json.containsKey('repository') &&
      json.containsKey('sender'); } 
WebhookPullRequestDequeued copyWith({WebhookPullRequestDequeuedAction? action, EnterpriseWebhooks Function()? enterprise, SimpleInstallation Function()? installation, int? number, OrganizationSimpleWebhooks Function()? organization, WebhookPullRequestDequeuedPullRequest? pullRequest, WebhookPullRequestDequeuedReason? reason, RepositoryWebhooks? repository, SimpleUser? sender, }) { return WebhookPullRequestDequeued(
  action: action ?? this.action,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  installation: installation != null ? installation() : this.installation,
  number: number ?? this.number,
  organization: organization != null ? organization() : this.organization,
  pullRequest: pullRequest ?? this.pullRequest,
  reason: reason ?? this.reason,
  repository: repository ?? this.repository,
  sender: sender ?? this.sender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestDequeued &&
          action == other.action &&
          enterprise == other.enterprise &&
          installation == other.installation &&
          number == other.number &&
          organization == other.organization &&
          pullRequest == other.pullRequest &&
          reason == other.reason &&
          repository == other.repository &&
          sender == other.sender; } 
@override int get hashCode { return Object.hash(action, enterprise, installation, number, organization, pullRequest, reason, repository, sender); } 
@override String toString() { return 'WebhookPullRequestDequeued(action: $action, enterprise: $enterprise, installation: $installation, number: $number, organization: $organization, pullRequest: $pullRequest, reason: $reason, repository: $repository, sender: $sender)'; } 
 }
