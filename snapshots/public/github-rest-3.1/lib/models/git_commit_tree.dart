// GENERATED CODE - DO NOT MODIFY BY HAND

final class GitCommitTree {const GitCommitTree({required this.sha, required this.url, });

factory GitCommitTree.fromJson(Map<String, dynamic> json) { return GitCommitTree(
  sha: json['sha'] as String,
  url: Uri.parse(json['url'] as String),
); }

/// SHA for the commit
final String sha;

final Uri url;

Map<String, dynamic> toJson() { return {
  'sha': sha,
  'url': url.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('sha') && json['sha'] is String &&
      json.containsKey('url') && json['url'] is String; } 
GitCommitTree copyWith({String? sha, Uri? url, }) { return GitCommitTree(
  sha: sha ?? this.sha,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GitCommitTree &&
          sha == other.sha &&
          url == other.url; } 
@override int get hashCode { return Object.hash(sha, url); } 
@override String toString() { return 'GitCommitTree(sha: $sha, url: $url)'; } 
 }
