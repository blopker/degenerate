// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestLabeledPullRequestLinksComments {const WebhookPullRequestLabeledPullRequestLinksComments({required this.href});

factory WebhookPullRequestLabeledPullRequestLinksComments.fromJson(Map<String, dynamic> json) { return WebhookPullRequestLabeledPullRequestLinksComments(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestLabeledPullRequestLinksComments copyWith({String? href}) { return WebhookPullRequestLabeledPullRequestLinksComments(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestLabeledPullRequestLinksComments &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestLabeledPullRequestLinksComments(href: $href)'; } 
 }
