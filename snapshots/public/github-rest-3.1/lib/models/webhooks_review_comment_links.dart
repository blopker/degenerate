// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhooks_review_comment_links_html.dart';import 'webhooks_review_comment_links_pull_request.dart';import 'webhooks_review_comment_links_self.dart';@immutable final class WebhooksReviewCommentLinks {const WebhooksReviewCommentLinks({required this.html, required this.pullRequest, required this.self, });

factory WebhooksReviewCommentLinks.fromJson(Map<String, dynamic> json) { return WebhooksReviewCommentLinks(
  html: WebhooksReviewCommentLinksHtml.fromJson(json['html'] as Map<String, dynamic>),
  pullRequest: WebhooksReviewCommentLinksPullRequest.fromJson(json['pull_request'] as Map<String, dynamic>),
  self: WebhooksReviewCommentLinksSelf.fromJson(json['self'] as Map<String, dynamic>),
); }

final WebhooksReviewCommentLinksHtml html;

final WebhooksReviewCommentLinksPullRequest pullRequest;

final WebhooksReviewCommentLinksSelf self;

Map<String, dynamic> toJson() { return {
  'html': html.toJson(),
  'pull_request': pullRequest.toJson(),
  'self': self.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('html') &&
      json.containsKey('pull_request') &&
      json.containsKey('self'); } 
WebhooksReviewCommentLinks copyWith({WebhooksReviewCommentLinksHtml? html, WebhooksReviewCommentLinksPullRequest? pullRequest, WebhooksReviewCommentLinksSelf? self, }) { return WebhooksReviewCommentLinks(
  html: html ?? this.html,
  pullRequest: pullRequest ?? this.pullRequest,
  self: self ?? this.self,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhooksReviewCommentLinks &&
          html == other.html &&
          pullRequest == other.pullRequest &&
          self == other.self; } 
@override int get hashCode { return Object.hash(html, pullRequest, self); } 
@override String toString() { return 'WebhooksReviewCommentLinks(html: $html, pullRequest: $pullRequest, self: $self)'; } 
 }
