// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestReviewCommentCreatedPullRequestLinksSelf {const WebhookPullRequestReviewCommentCreatedPullRequestLinksSelf({required this.href});

factory WebhookPullRequestReviewCommentCreatedPullRequestLinksSelf.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewCommentCreatedPullRequestLinksSelf(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewCommentCreatedPullRequestLinksSelf copyWith({String? href}) { return WebhookPullRequestReviewCommentCreatedPullRequestLinksSelf(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewCommentCreatedPullRequestLinksSelf &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewCommentCreatedPullRequestLinksSelf(href: $href)'; } 
 }
