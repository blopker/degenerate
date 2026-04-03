// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestReviewDismissedReviewLinksHtml {const WebhookPullRequestReviewDismissedReviewLinksHtml({required this.href});

factory WebhookPullRequestReviewDismissedReviewLinksHtml.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewDismissedReviewLinksHtml(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewDismissedReviewLinksHtml copyWith({String? href}) { return WebhookPullRequestReviewDismissedReviewLinksHtml(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewDismissedReviewLinksHtml &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewDismissedReviewLinksHtml(href: $href)'; } 
 }
