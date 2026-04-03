// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestReviewSubmittedPullRequestLinksHtml {const WebhookPullRequestReviewSubmittedPullRequestLinksHtml({required this.href});

factory WebhookPullRequestReviewSubmittedPullRequestLinksHtml.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewSubmittedPullRequestLinksHtml(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestReviewSubmittedPullRequestLinksHtml copyWith({String? href}) { return WebhookPullRequestReviewSubmittedPullRequestLinksHtml(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewSubmittedPullRequestLinksHtml &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewSubmittedPullRequestLinksHtml(href: $href)'; } 
 }
