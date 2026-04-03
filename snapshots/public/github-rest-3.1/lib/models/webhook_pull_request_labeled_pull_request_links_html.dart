// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestLabeledPullRequestLinksHtml {const WebhookPullRequestLabeledPullRequestLinksHtml({required this.href});

factory WebhookPullRequestLabeledPullRequestLinksHtml.fromJson(Map<String, dynamic> json) { return WebhookPullRequestLabeledPullRequestLinksHtml(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestLabeledPullRequestLinksHtml copyWith({String? href}) { return WebhookPullRequestLabeledPullRequestLinksHtml(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestLabeledPullRequestLinksHtml &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestLabeledPullRequestLinksHtml(href: $href)'; } 
 }
