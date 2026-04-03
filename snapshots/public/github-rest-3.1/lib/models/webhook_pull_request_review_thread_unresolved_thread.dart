// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhook_pull_request_review_thread_unresolved_thread_comments.dart';@immutable final class WebhookPullRequestReviewThreadUnresolvedThread {const WebhookPullRequestReviewThreadUnresolvedThread({required this.comments, required this.nodeId, });

factory WebhookPullRequestReviewThreadUnresolvedThread.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewThreadUnresolvedThread(
  comments: (json['comments'] as List<dynamic>).map((e) => WebhookPullRequestReviewThreadUnresolvedThreadComments.fromJson(e as Map<String, dynamic>)).toList(),
  nodeId: json['node_id'] as String,
); }

final List<WebhookPullRequestReviewThreadUnresolvedThreadComments> comments;

final String nodeId;

Map<String, dynamic> toJson() { return {
  'comments': comments.map((e) => e.toJson()).toList(),
  'node_id': nodeId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('comments') &&
      json.containsKey('node_id') && json['node_id'] is String; } 
WebhookPullRequestReviewThreadUnresolvedThread copyWith({List<WebhookPullRequestReviewThreadUnresolvedThreadComments>? comments, String? nodeId, }) { return WebhookPullRequestReviewThreadUnresolvedThread(
  comments: comments ?? this.comments,
  nodeId: nodeId ?? this.nodeId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewThreadUnresolvedThread &&
          listEquals(comments, other.comments) &&
          nodeId == other.nodeId; } 
@override int get hashCode { return Object.hash(Object.hashAll(comments), nodeId); } 
@override String toString() { return 'WebhookPullRequestReviewThreadUnresolvedThread(comments: $comments, nodeId: $nodeId)'; } 
 }
