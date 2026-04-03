// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestEnqueuedPullRequestLinksReviewComments {const WebhookPullRequestEnqueuedPullRequestLinksReviewComments({required this.href});

factory WebhookPullRequestEnqueuedPullRequestLinksReviewComments.fromJson(Map<String, dynamic> json) { return WebhookPullRequestEnqueuedPullRequestLinksReviewComments(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestEnqueuedPullRequestLinksReviewComments copyWith({String? href}) { return WebhookPullRequestEnqueuedPullRequestLinksReviewComments(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestEnqueuedPullRequestLinksReviewComments &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestEnqueuedPullRequestLinksReviewComments(href: $href)'; } 
 }
