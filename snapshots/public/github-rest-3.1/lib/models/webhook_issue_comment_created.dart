// GENERATED CODE - DO NOT MODIFY BY HAND

import 'enterprise_webhooks.dart';import 'organization_simple_webhooks.dart';import 'repository_webhooks.dart';import 'simple_installation.dart';import 'simple_user.dart';import 'webhook_issue_comment_created_comment.dart';import 'webhook_issue_comment_created_issue.dart';final class WebhookIssueCommentCreatedAction {const WebhookIssueCommentCreatedAction._(this.value);

factory WebhookIssueCommentCreatedAction.fromJson(String json) { return switch (json) {
  'created' => created,
  _ => WebhookIssueCommentCreatedAction._(json),
}; }

static const WebhookIssueCommentCreatedAction created = WebhookIssueCommentCreatedAction._('created');

static const List<WebhookIssueCommentCreatedAction> values = [created];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WebhookIssueCommentCreatedAction && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WebhookIssueCommentCreatedAction($value)'; } 
 }
final class WebhookIssueCommentCreated {const WebhookIssueCommentCreated({required this.action, required this.comment, this.enterprise, this.installation, required this.issue, this.organization, required this.repository, required this.sender, });

factory WebhookIssueCommentCreated.fromJson(Map<String, dynamic> json) { return WebhookIssueCommentCreated(
  action: WebhookIssueCommentCreatedAction.fromJson(json['action'] as String),
  comment: WebhookIssueCommentCreatedComment.fromJson(json['comment'] as Map<String, dynamic>),
  enterprise: json['enterprise'] != null ? EnterpriseWebhooks.fromJson(json['enterprise'] as Map<String, dynamic>) : null,
  installation: json['installation'] != null ? SimpleInstallation.fromJson(json['installation'] as Map<String, dynamic>) : null,
  issue: WebhookIssueCommentCreatedIssue.fromJson(json['issue'] as Map<String, dynamic>),
  organization: json['organization'] != null ? OrganizationSimpleWebhooks.fromJson(json['organization'] as Map<String, dynamic>) : null,
  repository: RepositoryWebhooks.fromJson(json['repository'] as Map<String, dynamic>),
  sender: SimpleUser.fromJson(json['sender'] as Map<String, dynamic>),
); }

final WebhookIssueCommentCreatedAction action;

/// The [comment](https://docs.github.com/rest/issues/comments#get-an-issue-comment) itself.
final WebhookIssueCommentCreatedComment comment;

final EnterpriseWebhooks? enterprise;

final SimpleInstallation? installation;

/// The [issue](https://docs.github.com/rest/issues/issues#get-an-issue) the comment belongs to.
/// 
/// The [issue](https://docs.github.com/rest/issues/issues#get-an-issue) itself.
final WebhookIssueCommentCreatedIssue issue;

final OrganizationSimpleWebhooks? organization;

final RepositoryWebhooks repository;

final SimpleUser sender;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  'comment': comment.toJson(),
  if (enterprise != null) 'enterprise': enterprise?.toJson(),
  if (installation != null) 'installation': installation?.toJson(),
  'issue': issue.toJson(),
  if (organization != null) 'organization': organization?.toJson(),
  'repository': repository.toJson(),
  'sender': sender.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('comment') &&
      json.containsKey('issue') &&
      json.containsKey('repository') &&
      json.containsKey('sender'); } 
WebhookIssueCommentCreated copyWith({WebhookIssueCommentCreatedAction? action, WebhookIssueCommentCreatedComment? comment, EnterpriseWebhooks Function()? enterprise, SimpleInstallation Function()? installation, WebhookIssueCommentCreatedIssue? issue, OrganizationSimpleWebhooks Function()? organization, RepositoryWebhooks? repository, SimpleUser? sender, }) { return WebhookIssueCommentCreated(
  action: action ?? this.action,
  comment: comment ?? this.comment,
  enterprise: enterprise != null ? enterprise() : this.enterprise,
  installation: installation != null ? installation() : this.installation,
  issue: issue ?? this.issue,
  organization: organization != null ? organization() : this.organization,
  repository: repository ?? this.repository,
  sender: sender ?? this.sender,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookIssueCommentCreated &&
          action == other.action &&
          comment == other.comment &&
          enterprise == other.enterprise &&
          installation == other.installation &&
          issue == other.issue &&
          organization == other.organization &&
          repository == other.repository &&
          sender == other.sender; } 
@override int get hashCode { return Object.hash(action, comment, enterprise, installation, issue, organization, repository, sender); } 
@override String toString() { return 'WebhookIssueCommentCreated(action: $action, comment: $comment, enterprise: $enterprise, installation: $installation, issue: $issue, organization: $organization, repository: $repository, sender: $sender)'; } 
 }
