// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PullRequestReviewCommentLinksPullRequest {const PullRequestReviewCommentLinksPullRequest({required this.href});

factory PullRequestReviewCommentLinksPullRequest.fromJson(Map<String, dynamic> json) { return PullRequestReviewCommentLinksPullRequest(
  href: Uri.parse(json['href'] as String),
); }

final Uri href;

Map<String, dynamic> toJson() { return {
  'href': href.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
PullRequestReviewCommentLinksPullRequest copyWith({Uri? href}) { return PullRequestReviewCommentLinksPullRequest(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PullRequestReviewCommentLinksPullRequest &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'PullRequestReviewCommentLinksPullRequest(href: $href)'; } 
 }
