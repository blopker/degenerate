// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestLabeledPullRequestLinksReviewComments {const WebhookPullRequestLabeledPullRequestLinksReviewComments({required this.href});

factory WebhookPullRequestLabeledPullRequestLinksReviewComments.fromJson(Map<String, dynamic> json) { return WebhookPullRequestLabeledPullRequestLinksReviewComments(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestLabeledPullRequestLinksReviewComments copyWith({String? href}) { return WebhookPullRequestLabeledPullRequestLinksReviewComments(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestLabeledPullRequestLinksReviewComments &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestLabeledPullRequestLinksReviewComments(href: $href)'; } 
 }
