// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestReviewThreadUnresolvedThreadCommentsLinksSelf {const WebhookPullRequestReviewThreadUnresolvedThreadCommentsLinksSelf({required this.href});

factory WebhookPullRequestReviewThreadUnresolvedThreadCommentsLinksSelf.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewThreadUnresolvedThreadCommentsLinksSelf(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewThreadUnresolvedThreadCommentsLinksSelf copyWith({String? href}) { return WebhookPullRequestReviewThreadUnresolvedThreadCommentsLinksSelf(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewThreadUnresolvedThreadCommentsLinksSelf &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewThreadUnresolvedThreadCommentsLinksSelf(href: $href)'; } 
 }
