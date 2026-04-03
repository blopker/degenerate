// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestReviewEditedPullRequestLinksStatuses {const WebhookPullRequestReviewEditedPullRequestLinksStatuses({required this.href});

factory WebhookPullRequestReviewEditedPullRequestLinksStatuses.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewEditedPullRequestLinksStatuses(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewEditedPullRequestLinksStatuses copyWith({String? href}) { return WebhookPullRequestReviewEditedPullRequestLinksStatuses(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewEditedPullRequestLinksStatuses &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewEditedPullRequestLinksStatuses(href: $href)'; } 
 }
