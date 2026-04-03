// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'link.dart';@immutable final class ReviewCommentLinks {const ReviewCommentLinks({required this.self, required this.html, required this.pullRequest, });

factory ReviewCommentLinks.fromJson(Map<String, dynamic> json) { return ReviewCommentLinks(
  self: Link.fromJson(json['self'] as Map<String, dynamic>),
  html: Link.fromJson(json['html'] as Map<String, dynamic>),
  pullRequest: Link.fromJson(json['pull_request'] as Map<String, dynamic>),
); }

final Link self;

final Link html;

final Link pullRequest;

Map<String, dynamic> toJson() { return {
  'self': self.toJson(),
  'html': html.toJson(),
  'pull_request': pullRequest.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('self') &&
      json.containsKey('html') &&
      json.containsKey('pull_request'); } 
ReviewCommentLinks copyWith({Link? self, Link? html, Link? pullRequest, }) { return ReviewCommentLinks(
  self: self ?? this.self,
  html: html ?? this.html,
  pullRequest: pullRequest ?? this.pullRequest,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReviewCommentLinks &&
          self == other.self &&
          html == other.html &&
          pullRequest == other.pullRequest; } 
@override int get hashCode { return Object.hash(self, html, pullRequest); } 
@override String toString() { return 'ReviewCommentLinks(self: $self, html: $html, pullRequest: $pullRequest)'; } 
 }
