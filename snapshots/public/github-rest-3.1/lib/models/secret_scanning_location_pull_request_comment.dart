// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Represents a 'pull_request_comment' secret scanning location type. This location type shows that a secret was detected in a comment on a pull request.
@immutable final class SecretScanningLocationPullRequestComment {const SecretScanningLocationPullRequestComment({required this.pullRequestCommentUrl});

factory SecretScanningLocationPullRequestComment.fromJson(Map<String, dynamic> json) { return SecretScanningLocationPullRequestComment(
  pullRequestCommentUrl: Uri.parse(json['pull_request_comment_url'] as String),
); }

/// The API URL to get the pull request comment where the secret was detected.
final Uri pullRequestCommentUrl;

Map<String, dynamic> toJson() { return {
  'pull_request_comment_url': pullRequestCommentUrl.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('pull_request_comment_url') && json['pull_request_comment_url'] is String; } 
SecretScanningLocationPullRequestComment copyWith({Uri? pullRequestCommentUrl}) { return SecretScanningLocationPullRequestComment(
  pullRequestCommentUrl: pullRequestCommentUrl ?? this.pullRequestCommentUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecretScanningLocationPullRequestComment &&
          pullRequestCommentUrl == other.pullRequestCommentUrl; } 
@override int get hashCode { return pullRequestCommentUrl.hashCode; } 
@override String toString() { return 'SecretScanningLocationPullRequestComment(pullRequestCommentUrl: $pullRequestCommentUrl)'; } 
 }
