// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestReviewEditedPullRequestLinksReviewComments {const WebhookPullRequestReviewEditedPullRequestLinksReviewComments({required this.href});

factory WebhookPullRequestReviewEditedPullRequestLinksReviewComments.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewEditedPullRequestLinksReviewComments(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewEditedPullRequestLinksReviewComments copyWith({String? href}) { return WebhookPullRequestReviewEditedPullRequestLinksReviewComments(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewEditedPullRequestLinksReviewComments &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewEditedPullRequestLinksReviewComments(href: $href)'; } 
 }
