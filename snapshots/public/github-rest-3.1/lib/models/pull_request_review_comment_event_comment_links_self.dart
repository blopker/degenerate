// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PullRequestReviewCommentEventCommentLinksSelf {const PullRequestReviewCommentEventCommentLinksSelf({required this.href});

factory PullRequestReviewCommentEventCommentLinksSelf.fromJson(Map<String, dynamic> json) { return PullRequestReviewCommentEventCommentLinksSelf(
  href: json['href'] as String,
); }

final String href;

Map<String, dynamic> toJson() { return {
  'href': href,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('href') && json['href'] is String; } 
PullRequestReviewCommentEventCommentLinksSelf copyWith({String? href}) { return PullRequestReviewCommentEventCommentLinksSelf(
  href: href ?? this.href,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PullRequestReviewCommentEventCommentLinksSelf &&
          href == other.href; } 
@override int get hashCode { return href.hashCode; } 
@override String toString() { return 'PullRequestReviewCommentEventCommentLinksSelf(href: $href)'; } 
 }
