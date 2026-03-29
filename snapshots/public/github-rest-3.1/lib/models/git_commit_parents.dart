// GENERATED CODE - DO NOT MODIFY BY HAND

final class GitCommitParents {const GitCommitParents({required this.sha, required this.url, required this.htmlUrl, });

factory GitCommitParents.fromJson(Map<String, dynamic> json) { return GitCommitParents(
  sha: json['sha'] as String,
  url: Uri.parse(json['url'] as String),
  htmlUrl: Uri.parse(json['html_url'] as String),
); }

/// SHA for the commit
final String sha;

final Uri url;

final Uri htmlUrl;

Map<String, dynamic> toJson() { return {
  'sha': sha,
  'url': url.toString(),
  'html_url': htmlUrl.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('sha') && json['sha'] is String &&
      json.containsKey('url') && json['url'] is String &&
      json.containsKey('html_url') && json['html_url'] is String; } 
GitCommitParents copyWith({String? sha, Uri? url, Uri? htmlUrl, }) { return GitCommitParents(
  sha: sha ?? this.sha,
  url: url ?? this.url,
  htmlUrl: htmlUrl ?? this.htmlUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GitCommitParents &&
          sha == other.sha &&
          url == other.url &&
          htmlUrl == other.htmlUrl; } 
@override int get hashCode { return Object.hash(sha, url, htmlUrl); } 
@override String toString() { return 'GitCommitParents(sha: $sha, url: $url, htmlUrl: $htmlUrl)'; } 
 }
