// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestLockedPullRequestLinksReviewComment {const WebhookPullRequestLockedPullRequestLinksReviewComment({required this.href});

factory WebhookPullRequestLockedPullRequestLinksReviewComment.fromJson(Map<String, dynamic> json) { return WebhookPullRequestLockedPullRequestLinksReviewComment(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestLockedPullRequestLinksReviewComment copyWith({String? href}) { return WebhookPullRequestLockedPullRequestLinksReviewComment(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestLockedPullRequestLinksReviewComment &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestLockedPullRequestLinksReviewComment(href: $href)'; } 
 }
