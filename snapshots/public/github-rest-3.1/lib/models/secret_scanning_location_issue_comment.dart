// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Represents an 'issue_comment' secret scanning location type. This location type shows that a secret was detected in a comment on an issue.
@immutable final class SecretScanningLocationIssueComment {const SecretScanningLocationIssueComment({required this.issueCommentUrl});

factory SecretScanningLocationIssueComment.fromJson(Map<String, dynamic> json) { return SecretScanningLocationIssueComment(
  issueCommentUrl: Uri.parse(json['issue_comment_url'] as String),
); }

/// The API URL to get the issue comment where the secret was detected.
final Uri issueCommentUrl;

Map<String, dynamic> toJson() { return {
  'issue_comment_url': issueCommentUrl.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('issue_comment_url') && json['issue_comment_url'] is String; } 
SecretScanningLocationIssueComment copyWith({Uri? issueCommentUrl}) { return SecretScanningLocationIssueComment(
  issueCommentUrl: issueCommentUrl ?? this.issueCommentUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecretScanningLocationIssueComment &&
          issueCommentUrl == other.issueCommentUrl; } 
@override int get hashCode { return issueCommentUrl.hashCode; } 
@override String toString() { return 'SecretScanningLocationIssueComment(issueCommentUrl: $issueCommentUrl)'; } 
 }
