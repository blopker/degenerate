// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Represents a 'discussion_comment' secret scanning location type. This location type shows that a secret was detected in a comment on a discussion.
@immutable final class SecretScanningLocationDiscussionComment {const SecretScanningLocationDiscussionComment({required this.discussionCommentUrl});

factory SecretScanningLocationDiscussionComment.fromJson(Map<String, dynamic> json) { return SecretScanningLocationDiscussionComment(
  discussionCommentUrl: Uri.parse(json['discussion_comment_url'] as String),
); }

/// The API URL to get the discussion comment where the secret was detected.
final Uri discussionCommentUrl;

Map<String, dynamic> toJson() { return {
  'discussion_comment_url': discussionCommentUrl.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('discussion_comment_url') && json['discussion_comment_url'] is String; } 
SecretScanningLocationDiscussionComment copyWith({Uri? discussionCommentUrl}) { return SecretScanningLocationDiscussionComment(
  discussionCommentUrl: discussionCommentUrl ?? this.discussionCommentUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecretScanningLocationDiscussionComment &&
          discussionCommentUrl == other.discussionCommentUrl; } 
@override int get hashCode { return discussionCommentUrl.hashCode; } 
@override String toString() { return 'SecretScanningLocationDiscussionComment(discussionCommentUrl: $discussionCommentUrl)'; } 
 }
