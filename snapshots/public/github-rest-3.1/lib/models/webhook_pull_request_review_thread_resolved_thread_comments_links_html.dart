// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestReviewThreadResolvedThreadCommentsLinksHtml {const WebhookPullRequestReviewThreadResolvedThreadCommentsLinksHtml({required this.href});

factory WebhookPullRequestReviewThreadResolvedThreadCommentsLinksHtml.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewThreadResolvedThreadCommentsLinksHtml(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewThreadResolvedThreadCommentsLinksHtml copyWith({String? href}) { return WebhookPullRequestReviewThreadResolvedThreadCommentsLinksHtml(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewThreadResolvedThreadCommentsLinksHtml &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewThreadResolvedThreadCommentsLinksHtml(href: $href)'; } 
 }
