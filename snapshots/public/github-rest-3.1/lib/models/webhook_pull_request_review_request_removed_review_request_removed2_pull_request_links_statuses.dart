// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksStatuses {const WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksStatuses({required this.href});

factory WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksStatuses.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksStatuses(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksStatuses copyWith({String? href}) { return WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksStatuses(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksStatuses &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewRequestRemovedReviewRequestRemoved2PullRequestLinksStatuses(href: $href)'; } 
 }
