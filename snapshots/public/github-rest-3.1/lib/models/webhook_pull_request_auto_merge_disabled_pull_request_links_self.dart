// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestAutoMergeDisabledPullRequestLinksSelf {const WebhookPullRequestAutoMergeDisabledPullRequestLinksSelf({required this.href});

factory WebhookPullRequestAutoMergeDisabledPullRequestLinksSelf.fromJson(Map<String, dynamic> json) { return WebhookPullRequestAutoMergeDisabledPullRequestLinksSelf(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhookPullRequestAutoMergeDisabledPullRequestLinksSelf copyWith({String? href}) { return WebhookPullRequestAutoMergeDisabledPullRequestLinksSelf(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestAutoMergeDisabledPullRequestLinksSelf &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhookPullRequestAutoMergeDisabledPullRequestLinksSelf(href: $href)'; } 
 }
