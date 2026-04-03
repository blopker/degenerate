// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestLockedPullRequestLinksReviewComments {const WebhookPullRequestLockedPullRequestLinksReviewComments({required this.href});

factory WebhookPullRequestLockedPullRequestLinksReviewComments.fromJson(Map<String, dynamic> json) { return WebhookPullRequestLockedPullRequestLinksReviewComments(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestLockedPullRequestLinksReviewComments copyWith({String? href}) { return WebhookPullRequestLockedPullRequestLinksReviewComments(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestLockedPullRequestLinksReviewComments &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestLockedPullRequestLinksReviewComments(href: $href)'; } 
 }
