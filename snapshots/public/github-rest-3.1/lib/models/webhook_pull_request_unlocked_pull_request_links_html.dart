// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestUnlockedPullRequestLinksHtml {const WebhookPullRequestUnlockedPullRequestLinksHtml({required this.href});

factory WebhookPullRequestUnlockedPullRequestLinksHtml.fromJson(Map<String, dynamic> json) { return WebhookPullRequestUnlockedPullRequestLinksHtml(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestUnlockedPullRequestLinksHtml copyWith({String? href}) { return WebhookPullRequestUnlockedPullRequestLinksHtml(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestUnlockedPullRequestLinksHtml &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestUnlockedPullRequestLinksHtml(href: $href)'; } 
 }
