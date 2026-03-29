// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookIssuesMilestonedIssuePullRequest {const WebhookIssuesMilestonedIssuePullRequest({this.diffUrl, this.htmlUrl, this.mergedAt, this.patchUrl, this.url, });

factory WebhookIssuesMilestonedIssuePullRequest.fromJson(Map<String, dynamic> json) { return WebhookIssuesMilestonedIssuePullRequest(
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
static bool canParse(Map<String, dynamic> json) { return true; } 
WebhookIssuesMilestonedIssuePullRequest copyWith({Uri Function()? diffUrl, Uri Function()? htmlUrl, DateTime? Function()? mergedAt, Uri Function()? patchUrl, Uri Function()? url, }) { return WebhookIssuesMilestonedIssuePullRequest(
  diffUrl: diffUrl != null ? diffUrl() : this.diffUrl,
  htmlUrl: htmlUrl != null ? htmlUrl() : this.htmlUrl,
  mergedAt: mergedAt != null ? mergedAt() : this.mergedAt,
  patchUrl: patchUrl != null ? patchUrl() : this.patchUrl,
  url: url != null ? url() : this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookIssuesMilestonedIssuePullRequest &&
          diffUrl == other.diffUrl &&
          htmlUrl == other.htmlUrl &&
          mergedAt == other.mergedAt &&
          patchUrl == other.patchUrl &&
          url == other.url; } 
@override int get hashCode { return Object.hash(diffUrl, htmlUrl, mergedAt, patchUrl, url); } 
@override String toString() { return 'WebhookIssuesMilestonedIssuePullRequest(diffUrl: $diffUrl, htmlUrl: $htmlUrl, mergedAt: $mergedAt, patchUrl: $patchUrl, url: $url)'; } 
 }
