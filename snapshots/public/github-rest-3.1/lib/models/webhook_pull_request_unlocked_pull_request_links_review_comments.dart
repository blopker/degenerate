// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestUnlockedPullRequestLinksReviewComments {const WebhookPullRequestUnlockedPullRequestLinksReviewComments({required this.href});

factory WebhookPullRequestUnlockedPullRequestLinksReviewComments.fromJson(Map<String, dynamic> json) { return WebhookPullRequestUnlockedPullRequestLinksReviewComments(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestUnlockedPullRequestLinksReviewComments copyWith({String? href}) { return WebhookPullRequestUnlockedPullRequestLinksReviewComments(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestUnlockedPullRequestLinksReviewComments &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestUnlockedPullRequestLinksReviewComments(href: $href)'; } 
 }
