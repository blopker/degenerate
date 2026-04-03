// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestUnassignedPullRequestLinksReviewComment {const WebhookPullRequestUnassignedPullRequestLinksReviewComment({required this.href});

factory WebhookPullRequestUnassignedPullRequestLinksReviewComment.fromJson(Map<String, dynamic> json) { return WebhookPullRequestUnassignedPullRequestLinksReviewComment(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestUnassignedPullRequestLinksReviewComment copyWith({String? href}) { return WebhookPullRequestUnassignedPullRequestLinksReviewComment(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestUnassignedPullRequestLinksReviewComment &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestUnassignedPullRequestLinksReviewComment(href: $href)'; } 
 }
