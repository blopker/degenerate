// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhooksPullRequest5LinksSelf {const WebhooksPullRequest5LinksSelf({required this.href});

factory WebhooksPullRequest5LinksSelf.fromJson(Map<String, dynamic> json) { return WebhooksPullRequest5LinksSelf(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhooksPullRequest5LinksSelf copyWith({String? href}) { return WebhooksPullRequest5LinksSelf(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhooksPullRequest5LinksSelf &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhooksPullRequest5LinksSelf(href: $href)'; } 
 }
