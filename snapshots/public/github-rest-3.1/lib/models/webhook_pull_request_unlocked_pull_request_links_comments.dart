// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestUnlockedPullRequestLinksComments {const WebhookPullRequestUnlockedPullRequestLinksComments({required this.href});

factory WebhookPullRequestUnlockedPullRequestLinksComments.fromJson(Map<String, dynamic> json) { return WebhookPullRequestUnlockedPullRequestLinksComments(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestUnlockedPullRequestLinksComments copyWith({String? href}) { return WebhookPullRequestUnlockedPullRequestLinksComments(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestUnlockedPullRequestLinksComments &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestUnlockedPullRequestLinksComments(href: $href)'; } 
 }
