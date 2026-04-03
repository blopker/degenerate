// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestReviewRequestRemovedReviewRequestRemovedPullRequestLinksCommits {const WebhookPullRequestReviewRequestRemovedReviewRequestRemovedPullRequestLinksCommits({required this.href});

factory WebhookPullRequestReviewRequestRemovedReviewRequestRemovedPullRequestLinksCommits.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewRequestRemovedReviewRequestRemovedPullRequestLinksCommits(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewRequestRemovedReviewRequestRemovedPullRequestLinksCommits copyWith({String? href}) { return WebhookPullRequestReviewRequestRemovedReviewRequestRemovedPullRequestLinksCommits(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewRequestRemovedReviewRequestRemovedPullRequestLinksCommits &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewRequestRemovedReviewRequestRemovedPullRequestLinksCommits(href: $href)'; } 
 }
