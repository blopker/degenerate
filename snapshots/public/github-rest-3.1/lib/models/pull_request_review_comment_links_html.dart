// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PullRequestReviewCommentLinksHtml {const PullRequestReviewCommentLinksHtml({required this.href});

factory PullRequestReviewCommentLinksHtml.fromJson(Map<String, dynamic> json) { return PullRequestReviewCommentLinksHtml(
  href: Uri.parse(json['href'] as String),
); }

final Uri href;

Map<String, dynamic> toJson() { return {
  'href': href.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
PullRequestReviewCommentLinksHtml copyWith({Uri? href}) { return PullRequestReviewCommentLinksHtml(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PullRequestReviewCommentLinksHtml &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'PullRequestReviewCommentLinksHtml(href: $href)'; } 
 }
