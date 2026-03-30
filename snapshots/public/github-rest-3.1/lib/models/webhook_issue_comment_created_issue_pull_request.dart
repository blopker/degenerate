// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookIssueCommentCreatedIssuePullRequest {const WebhookIssueCommentCreatedIssuePullRequest({this.diffUrl, this.htmlUrl, this.mergedAt, this.patchUrl, this.url, });

factory WebhookIssueCommentCreatedIssuePullRequest.fromJson(Map<String, dynamic> json) { return WebhookIssueCommentCreatedIssuePullRequest(
  diffUrl: json['diff_url'] != null ? Uri.parse(json['diff_url'] as String) : null,
  htmlUrl: json['html_url'] != null ? Uri.parse(json['html_url'] as String) : null,
  mergedAt: json['merged_at'] != null ? DateTime.parse(json['merged_at'] as String) : null,
  patchUrl: json['patch_url'] != null ? Uri.parse(json['patch_url'] as String) : null,
  url: json['url'] != null ? Uri.parse(json['url'] as String) : null,
); }

final Uri? diffUrl;

final Uri? htmlUrl;

final DateTime? mergedAt;

final Uri? patchUrl;

final Uri? url;

Map<String, dynamic> toJson() { return {
  if (diffUrl != null) 'diff_url': diffUrl?.toString(),
  if (htmlUrl != null) 'html_url': htmlUrl?.toString(),
  if (mergedAt != null) 'merged_at': mergedAt?.toIso8601String(),
  if (patchUrl != null) 'patch_url': patchUrl?.toString(),
  if (url != null) 'url': url?.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'diff_url', 'html_url', 'merged_at', 'patch_url', 'url'}.contains(key)); } 
WebhookIssueCommentCreatedIssuePullRequest copyWith({Uri Function()? diffUrl, Uri Function()? htmlUrl, DateTime? Function()? mergedAt, Uri Function()? patchUrl, Uri Function()? url, }) { return WebhookIssueCommentCreatedIssuePullRequest(
  diffUrl: diffUrl != null ? diffUrl() : this.diffUrl,
  htmlUrl: htmlUrl != null ? htmlUrl() : this.htmlUrl,
  mergedAt: mergedAt != null ? mergedAt() : this.mergedAt,
  patchUrl: patchUrl != null ? patchUrl() : this.patchUrl,
  url: url != null ? url() : this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookIssueCommentCreatedIssuePullRequest &&
          diffUrl == other.diffUrl &&
          htmlUrl == other.htmlUrl &&
          mergedAt == other.mergedAt &&
          patchUrl == other.patchUrl &&
          url == other.url; } 
@override int get hashCode { return Object.hash(diffUrl, htmlUrl, mergedAt, patchUrl, url); } 
@override String toString() { return 'WebhookIssueCommentCreatedIssuePullRequest(diffUrl: $diffUrl, htmlUrl: $htmlUrl, mergedAt: $mergedAt, patchUrl: $patchUrl, url: $url)'; } 
 }
