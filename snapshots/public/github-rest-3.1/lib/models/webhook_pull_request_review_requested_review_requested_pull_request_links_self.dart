// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestReviewRequestedReviewRequestedPullRequestLinksSelf {const WebhookPullRequestReviewRequestedReviewRequestedPullRequestLinksSelf({required this.href});

factory WebhookPullRequestReviewRequestedReviewRequestedPullRequestLinksSelf.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewRequestedReviewRequestedPullRequestLinksSelf(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewRequestedReviewRequestedPullRequestLinksSelf copyWith({String? href}) { return WebhookPullRequestReviewRequestedReviewRequestedPullRequestLinksSelf(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewRequestedReviewRequestedPullRequestLinksSelf &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewRequestedReviewRequestedPullRequestLinksSelf(href: $href)'; } 
 }
