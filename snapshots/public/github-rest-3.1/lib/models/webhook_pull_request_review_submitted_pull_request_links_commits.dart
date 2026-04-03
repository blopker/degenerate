// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestReviewSubmittedPullRequestLinksCommits {const WebhookPullRequestReviewSubmittedPullRequestLinksCommits({required this.href});

factory WebhookPullRequestReviewSubmittedPullRequestLinksCommits.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewSubmittedPullRequestLinksCommits(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewSubmittedPullRequestLinksCommits copyWith({String? href}) { return WebhookPullRequestReviewSubmittedPullRequestLinksCommits(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewSubmittedPullRequestLinksCommits &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewSubmittedPullRequestLinksCommits(href: $href)'; } 
 }
