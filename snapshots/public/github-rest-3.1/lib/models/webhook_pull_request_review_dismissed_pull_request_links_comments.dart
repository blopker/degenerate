// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestReviewDismissedPullRequestLinksComments {const WebhookPullRequestReviewDismissedPullRequestLinksComments({required this.href});

factory WebhookPullRequestReviewDismissedPullRequestLinksComments.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewDismissedPullRequestLinksComments(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewDismissedPullRequestLinksComments copyWith({String? href}) { return WebhookPullRequestReviewDismissedPullRequestLinksComments(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewDismissedPullRequestLinksComments &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewDismissedPullRequestLinksComments(href: $href)'; } 
 }
