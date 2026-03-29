// GENERATED CODE - DO NOT MODIFY BY HAND

final class PullRequestReviewCommentEventCommentLinksPullRequest {const PullRequestReviewCommentEventCommentLinksPullRequest({required this.href});

factory PullRequestReviewCommentEventCommentLinksPullRequest.fromJson(Map<String, dynamic> json) { return PullRequestReviewCommentEventCommentLinksPullRequest(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
PullRequestReviewCommentEventCommentLinksPullRequest copyWith({String? href}) { return PullRequestReviewCommentEventCommentLinksPullRequest(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PullRequestReviewCommentEventCommentLinksPullRequest &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'PullRequestReviewCommentEventCommentLinksPullRequest(href: $href)'; } 
 }
