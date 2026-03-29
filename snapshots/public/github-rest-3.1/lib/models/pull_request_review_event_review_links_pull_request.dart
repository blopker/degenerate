// GENERATED CODE - DO NOT MODIFY BY HAND

final class PullRequestReviewEventReviewLinksPullRequest {const PullRequestReviewEventReviewLinksPullRequest({required this.href});

factory PullRequestReviewEventReviewLinksPullRequest.fromJson(Map<String, dynamic> json) { return PullRequestReviewEventReviewLinksPullRequest(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
PullRequestReviewEventReviewLinksPullRequest copyWith({String? href}) { return PullRequestReviewEventReviewLinksPullRequest(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PullRequestReviewEventReviewLinksPullRequest &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'PullRequestReviewEventReviewLinksPullRequest(href: $href)'; } 
 }
