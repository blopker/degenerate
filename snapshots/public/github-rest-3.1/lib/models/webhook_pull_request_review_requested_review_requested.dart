// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'repository_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';import 'webhook_pull_request_review_requested_review_requested_pull_request.dart';import 'webhook_pull_request_review_requested_review_requested_requested_reviewer.dart';@immutable final class WebhookPullRequestReviewRequestedReviewRequestedAction {const WebhookPullRequestReviewRequestedReviewRequestedAction._(this.value);

factory WebhookPullRequestReviewRequestedReviewRequestedAction.fromJson(String json) { return switch (json) {
  'review_requested' => reviewRequested,
  _ => WebhookPullRequestReviewRequestedReviewRequestedAction._(json),
}; }

static const WebhookPullRequestReviewRequestedReviewRequestedAction reviewRequested = WebhookPullRequestReviewRequestedReviewRequestedAction._('review_requested');

static const List<WebhookPullRequestReviewRequestedReviewRequestedAction> values = [reviewRequested];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookPullRequestReviewRequestedReviewRequestedAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewRequestedReviewRequestedAction($value)'; } 
 }
@immutable final class WebhookPullRequestReviewRequestedReviewRequested {const WebhookPullRequestReviewRequestedReviewRequested({required this.action, required this.number, required this.pullRequest, required this.repository, required this.requestedReviewer, required this.sender, this.enterprise, this.installation, this.organization, });

factory WebhookPullRequestReviewRequestedReviewRequested.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewRequestedReviewRequested(
  action: WebhookPullRequestReviewRequestedReviewRequestedAction.fromJson(json['action'] as String),
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  number: (json['number'] as num).toInt(),
  organization: json['organization'] != null ? OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>) : null,
  pullRequest: WebhookPullRequestReviewRequestedReviewRequestedPullRequest.fromJson(json['pull_request'] as Map<String, dynamic>),
  repository: RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>),
  requestedReviewer: json['requested_reviewer'] != null ? WebhookPullRequestReviewRequestedReviewRequestedRequestedReviewer.fromJson(json['requested_reviewer'] as Map<String, dynamic>) : null,
  sender: SimpleUser.fromJson(json['sender'] as Map<String, dynamic>),
); }

final WebhookPullRequestReviewRequestedReviewRequestedAction action;

final EnterpriseWebhooks? enterprise;

final SimpleInstallation? installation;

/// The pull request number.
final int number;

final OrganizationSimpleWebhooks? organization;

final WebhookPullRequestReviewRequestedReviewRequestedPullRequest pullRequest;

final RepositoryWebhooks repository;

final WebhookPullRequestReviewRequestedReviewRequestedRequestedReviewer? requestedReviewer;

final SimpleUser sender;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
  'number': number,
  if (organization != null) 'organization': organization?.toJson(),
  'pull_request': pullRequest.toJson(),
  'repository': repository.toJson(),
  if (requestedReviewer != null) 'requested_reviewer': requestedReviewer?.toJson(),
  'sender': sender.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('number') && json['number'] is num &&
      json.containsKey('pull_request') &&
      json.containsKey('repository') &&
      json.containsKey('requested_reviewer') &&
      json.containsKey('sender'); } 
WebhookPullRequestReviewRequestedReviewRequested copyWith({WebhookPullRequestReviewRequestedReviewRequestedAction? action, EnterpriseWebhooks Function()? enterprise, SimpleInstallation Function()? installation, int? number, OrganizationSimpleWebhooks Function()? organization, WebhookPullRequestReviewRequestedReviewRequestedPullRequest? pullRequest, RepositoryWebhooks? repository, WebhookPullRequestReviewRequestedReviewRequestedRequestedReviewer? Function()? requestedReviewer, SimpleUser? sender, }) { return WebhookPullRequestReviewRequestedReviewRequested(
  action: action ?? this.action,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  installation: installation != null ? installation() : this.installation,
  number: number ?? this.number,
  organization: organization != null ? organization() : this.organization,
  pullRequest: pullRequest ?? this.pullRequest,
  repository: repository ?? this.repository,
  requestedReviewer: requestedReviewer != null ? requestedReviewer() : this.requestedReviewer,
  sender: sender ?? this.sender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewRequestedReviewRequested &&
          action == other.action &&
          enterprise == other.enterprise &&
          installation == other.installation &&
          number == other.number &&
          organization == other.organization &&
          pullRequest == other.pullRequest &&
          repository == other.repository &&
          requestedReviewer == other.requestedReviewer &&
          sender == other.sender; } 
@override int get hashCode { return Object.hash(action, enterprise, installation, number, organization, pullRequest, repository, requestedReviewer, sender); } 
@override String toString() { return 'WebhookPullRequestReviewRequestedReviewRequested(action: $action, enterprise: $enterprise, installation: $installation, number: $number, organization: $organization, pullRequest: $pullRequest, repository: $repository, requestedReviewer: $requestedReviewer, sender: $sender)'; } 
 }
