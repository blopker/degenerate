// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestReviewEditedPullRequestLinksComments {const WebhookPullRequestReviewEditedPullRequestLinksComments({required this.href});

factory WebhookPullRequestReviewEditedPullRequestLinksComments.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewEditedPullRequestLinksComments(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewEditedPullRequestLinksComments copyWith({String? href}) { return WebhookPullRequestReviewEditedPullRequestLinksComments(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewEditedPullRequestLinksComments &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewEditedPullRequestLinksComments(href: $href)'; } 
 }
