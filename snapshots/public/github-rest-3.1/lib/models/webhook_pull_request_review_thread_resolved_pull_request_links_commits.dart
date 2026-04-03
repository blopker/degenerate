// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestReviewThreadResolvedPullRequestLinksCommits {const WebhookPullRequestReviewThreadResolvedPullRequestLinksCommits({required this.href});

factory WebhookPullRequestReviewThreadResolvedPullRequestLinksCommits.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewThreadResolvedPullRequestLinksCommits(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewThreadResolvedPullRequestLinksCommits copyWith({String? href}) { return WebhookPullRequestReviewThreadResolvedPullRequestLinksCommits(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewThreadResolvedPullRequestLinksCommits &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewThreadResolvedPullRequestLinksCommits(href: $href)'; } 
 }
