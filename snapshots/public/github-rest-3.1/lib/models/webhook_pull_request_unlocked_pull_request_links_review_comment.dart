// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestUnlockedPullRequestLinksReviewComment {const WebhookPullRequestUnlockedPullRequestLinksReviewComment({required this.href});

factory WebhookPullRequestUnlockedPullRequestLinksReviewComment.fromJson(Map<String, dynamic> json) { return WebhookPullRequestUnlockedPullRequestLinksReviewComment(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestUnlockedPullRequestLinksReviewComment copyWith({String? href}) { return WebhookPullRequestUnlockedPullRequestLinksReviewComment(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestUnlockedPullRequestLinksReviewComment &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestUnlockedPullRequestLinksReviewComment(href: $href)'; } 
 }
