// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhooksReviewCommentLinksHtml {const WebhooksReviewCommentLinksHtml({required this.href});

factory WebhooksReviewCommentLinksHtml.fromJson(Map<String, dynamic> json) { return WebhooksReviewCommentLinksHtml(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhooksReviewCommentLinksHtml copyWith({String? href}) { return WebhooksReviewCommentLinksHtml(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhooksReviewCommentLinksHtml &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhooksReviewCommentLinksHtml(href: $href)'; } 
 }
