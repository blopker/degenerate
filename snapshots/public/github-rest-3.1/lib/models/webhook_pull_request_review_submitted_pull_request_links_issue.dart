// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestReviewSubmittedPullRequestLinksIssue {const WebhookPullRequestReviewSubmittedPullRequestLinksIssue({required this.href});

factory WebhookPullRequestReviewSubmittedPullRequestLinksIssue.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewSubmittedPullRequestLinksIssue(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewSubmittedPullRequestLinksIssue copyWith({String? href}) { return WebhookPullRequestReviewSubmittedPullRequestLinksIssue(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewSubmittedPullRequestLinksIssue &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewSubmittedPullRequestLinksIssue(href: $href)'; } 
 }
