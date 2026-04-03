// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestUnassignedPullRequestLinksReviewComments {const WebhookPullRequestUnassignedPullRequestLinksReviewComments({required this.href});

factory WebhookPullRequestUnassignedPullRequestLinksReviewComments.fromJson(Map<String, dynamic> json) { return WebhookPullRequestUnassignedPullRequestLinksReviewComments(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestUnassignedPullRequestLinksReviewComments copyWith({String? href}) { return WebhookPullRequestUnassignedPullRequestLinksReviewComments(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestUnassignedPullRequestLinksReviewComments &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestUnassignedPullRequestLinksReviewComments(href: $href)'; } 
 }
