// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhooksReviewLinksHtml {const WebhooksReviewLinksHtml({required this.href});

factory WebhooksReviewLinksHtml.fromJson(Map<String, dynamic> json) { return WebhooksReviewLinksHtml(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
WebhooksReviewLinksHtml copyWith({String? href}) { return WebhooksReviewLinksHtml(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhooksReviewLinksHtml &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'WebhooksReviewLinksHtml(href: $href)'; } 
 }
