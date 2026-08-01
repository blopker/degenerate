// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'pull_request_review_event_review_links.dart';import 'simple_user.dart';@immutable final class PullRequestReviewEventReview {const PullRequestReviewEventReview({this.id, this.nodeId, this.user = const Omittable.absent(), this.body, this.commitId, this.submittedAt = const Omittable.absent(), this.state, this.htmlUrl, this.pullRequestUrl, this.links, this.updatedAt, });

factory PullRequestReviewEventReview.fromJson(Map<String, dynamic> json) { return PullRequestReviewEventReview(
  id: json['id'] != null ? (json['id'] as num).toInt() : null,
  nodeId: json['node_id'] as String?,
  user: json.containsKey('user') ? Omittable(json['user'] != null ? SimpleUser.fromJson(json['user'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  body: json['body'] as String?,
  commitId: json['commit_id'] as String?,
  submittedAt: json.containsKey('submitted_at') ? Omittable(json['submitted_at'] as String?) : const Omittable.absent(),
  state: json['state'] as String?,
  htmlUrl: json['html_url'] != null ? Uri.parse(json['html_url'] as String) : null,
  pullRequestUrl: json['pull_request_url'] != null ? Uri.parse(json['pull_request_url'] as String) : null,
  links: json['_links'] != null ? PullRequestReviewEventReviewLinks.fromJson(json['_links'] as Map<String, dynamic>) : null,
  updatedAt: json['updated_at'] as String?,
); }

final int? id;

final String? nodeId;

final Omittable<SimpleUser?> user;

final String? body;

final String? commitId;

final Omittable<String?> submittedAt;

final String? state;

final Uri? htmlUrl;

final Uri? pullRequestUrl;

final PullRequestReviewEventReviewLinks? links;

final String? updatedAt;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  'node_id': ?nodeId,
  if (user.isPresent) 'user': user.value?.toJson(),
  'body': ?body,
  'commit_id': ?commitId,
  if (submittedAt.isPresent) 'submitted_at': submittedAt.value,
  'state': ?state,
  if (htmlUrl != null) 'html_url': htmlUrl?.toString(),
  if (pullRequestUrl != null) 'pull_request_url': pullRequestUrl?.toString(),
  if (links != null) '_links': links?.toJson(),
  'updated_at': ?updatedAt,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'node_id', 'user', 'body', 'commit_id', 'submitted_at', 'state', 'html_url', 'pull_request_url', '_links', 'updated_at'}.contains(key)); } 
PullRequestReviewEventReview copyWith({int? Function()? id, String? Function()? nodeId, Omittable<SimpleUser?>? user, String? Function()? body, String? Function()? commitId, Omittable<String?>? submittedAt, String? Function()? state, Uri? Function()? htmlUrl, Uri? Function()? pullRequestUrl, PullRequestReviewEventReviewLinks? Function()? links, String? Function()? updatedAt, }) { return PullRequestReviewEventReview(
  id: id != null ? id() : this.id,
  nodeId: nodeId != null ? nodeId() : this.nodeId,
  user: user ?? this.user,
  body: body != null ? body() : this.body,
  commitId: commitId != null ? commitId() : this.commitId,
  submittedAt: submittedAt ?? this.submittedAt,
  state: state != null ? state() : this.state,
  htmlUrl: htmlUrl != null ? htmlUrl() : this.htmlUrl,
  pullRequestUrl: pullRequestUrl != null ? pullRequestUrl() : this.pullRequestUrl,
  links: links != null ? links() : this.links,
  updatedAt: updatedAt != null ? updatedAt() : this.updatedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PullRequestReviewEventReview &&
          id == other.id &&
          nodeId == other.nodeId &&
          user == other.user &&
          body == other.body &&
          commitId == other.commitId &&
          submittedAt == other.submittedAt &&
          state == other.state &&
          htmlUrl == other.htmlUrl &&
          pullRequestUrl == other.pullRequestUrl &&
          links == other.links &&
          updatedAt == other.updatedAt; } 
@override int get hashCode { return Object.hash(id, nodeId, user, body, commitId, submittedAt, state, htmlUrl, pullRequestUrl, links, updatedAt); } 
@override String toString() { return 'PullRequestReviewEventReview(id: $id, nodeId: $nodeId, user: $user, body: $body, commitId: $commitId, submittedAt: $submittedAt, state: $state, htmlUrl: $htmlUrl, pullRequestUrl: $pullRequestUrl, links: $links, updatedAt: $updatedAt)'; } 
 }
