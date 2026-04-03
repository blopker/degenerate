// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestReviewRequestedReviewRequestedPullRequestLinksHtml {const WebhookPullRequestReviewRequestedReviewRequestedPullRequestLinksHtml({required this.href});

factory WebhookPullRequestReviewRequestedReviewRequestedPullRequestLinksHtml.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewRequestedReviewRequestedPullRequestLinksHtml(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewRequestedReviewRequestedPullRequestLinksHtml copyWith({String? href}) { return WebhookPullRequestReviewRequestedReviewRequestedPullRequestLinksHtml(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewRequestedReviewRequestedPullRequestLinksHtml &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewRequestedReviewRequestedPullRequestLinksHtml(href: $href)'; } 
 }
