// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestReviewRequestRemovedReviewRequestRemovedPullRequestLinksStatuses {const WebhookPullRequestReviewRequestRemovedReviewRequestRemovedPullRequestLinksStatuses({required this.href});

factory WebhookPullRequestReviewRequestRemovedReviewRequestRemovedPullRequestLinksStatuses.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewRequestRemovedReviewRequestRemovedPullRequestLinksStatuses(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewRequestRemovedReviewRequestRemovedPullRequestLinksStatuses copyWith({String? href}) { return WebhookPullRequestReviewRequestRemovedReviewRequestRemovedPullRequestLinksStatuses(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewRequestRemovedReviewRequestRemovedPullRequestLinksStatuses &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewRequestRemovedReviewRequestRemovedPullRequestLinksStatuses(href: $href)'; } 
 }
