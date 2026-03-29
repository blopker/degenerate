// GENERATED CODE - DO NOT MODIFY BY HAND

import 'webhook_issues_transferred_changes_new_issue.dart';import 'webhook_issues_transferred_changes_new_repository.dart';final class WebhookIssuesTransferredChanges {const WebhookIssuesTransferredChanges({required this.newIssue, required this.newRepository, });

factory WebhookIssuesTransferredChanges.fromJson(Map<String, dynamic> json) { return WebhookIssuesTransferredChanges(
  newIssue: WebhookIssuesTransferredChangesNewIssue.fromJson(json['new_issue'] as Map<String, dynamic>),
  newRepository: WebhookIssuesTransferredChangesNewRepository.fromJson(json['new_repository'] as Map<String, dynamic>),
); }

/// The [issue](https://docs.github.com/rest/issues/issues#get-an-issue) itself.
final WebhookIssuesTransferredChangesNewIssue newIssue;

/// A git repository
final WebhookIssuesTransferredChangesNewRepository newRepository;

Map<String, dynamic> toJson() { return {
  'new_issue': newIssue.toJson(),
  'new_repository': newRepository.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('new_issue') &&
      json.containsKey('new_repository'); } 
WebhookIssuesTransferredChanges copyWith({WebhookIssuesTransferredChangesNewIssue? newIssue, WebhookIssuesTransferredChangesNewRepository? newRepository, }) { return WebhookIssuesTransferredChanges(
  newIssue: newIssue ?? this.newIssue,
  newRepository: newRepository ?? this.newRepository,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookIssuesTransferredChanges &&
          newIssue == other.newIssue &&
          newRepository == other.newRepository; } 
@override int get hashCode { return Object.hash(newIssue, newRepository); } 
@override String toString() { return 'WebhookIssuesTransferredChanges(newIssue: $newIssue, newRepository: $newRepository)'; } 
 }
