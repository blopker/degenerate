// GENERATED CODE - DO NOT MODIFY BY HAND

final class WebhookStatusBranchesCommit {const WebhookStatusBranchesCommit({required this.sha, required this.url, });

factory WebhookStatusBranchesCommit.fromJson(Map<String, dynamic> json) { return WebhookStatusBranchesCommit(
  sha: json['sha'] as String?,
  url: json['url'] != null ? Uri.parse(json['url'] as String) : null,
); }

final String? sha;

final Uri? url;

Map<String, dynamic> toJson() { return {
  'sha': ?sha,
  if (url != null) 'url': url?.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('sha') && json['sha'] is String &&
      json.containsKey('url') && json['url'] is String; } 
WebhookStatusBranchesCommit copyWith({String? Function()? sha, Uri? Function()? url, }) { return WebhookStatusBranchesCommit(
  sha: sha != null ? sha() : this.sha,
  url: url != null ? url() : this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookStatusBranchesCommit &&
          sha == other.sha &&
          url == other.url; } 
@override int get hashCode { return Object.hash(sha, url); } 
@override String toString() { return 'WebhookStatusBranchesCommit(sha: $sha, url: $url)'; } 
 }
