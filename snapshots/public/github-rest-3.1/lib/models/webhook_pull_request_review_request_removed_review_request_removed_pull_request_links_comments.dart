// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestReviewRequestRemovedReviewRequestRemovedPullRequestLinksComments {const WebhookPullRequestReviewRequestRemovedReviewRequestRemovedPullRequestLinksComments({required this.href});

factory WebhookPullRequestReviewRequestRemovedReviewRequestRemovedPullRequestLinksComments.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewRequestRemovedReviewRequestRemovedPullRequestLinksComments(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewRequestRemovedReviewRequestRemovedPullRequestLinksComments copyWith({String? href}) { return WebhookPullRequestReviewRequestRemovedReviewRequestRemovedPullRequestLinksComments(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewRequestRemovedReviewRequestRemovedPullRequestLinksComments &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewRequestRemovedReviewRequestRemovedPullRequestLinksComments(href: $href)'; } 
 }
