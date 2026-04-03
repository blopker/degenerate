// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestReviewCommentDeletedPullRequestLinksSelf {const WebhookPullRequestReviewCommentDeletedPullRequestLinksSelf({required this.href});

factory WebhookPullRequestReviewCommentDeletedPullRequestLinksSelf.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewCommentDeletedPullRequestLinksSelf(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewCommentDeletedPullRequestLinksSelf copyWith({String? href}) { return WebhookPullRequestReviewCommentDeletedPullRequestLinksSelf(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewCommentDeletedPullRequestLinksSelf &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewCommentDeletedPullRequestLinksSelf(href: $href)'; } 
 }
