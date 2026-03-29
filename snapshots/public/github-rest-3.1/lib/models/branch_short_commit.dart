// GENERATED CODE - DO NOT MODIFY BY HAND

final class BranchShortCommit {const BranchShortCommit({required this.sha, required this.url, });

factory BranchShortCommit.fromJson(Map<String, dynamic> json) { return BranchShortCommit(
  sha: json['sha'] as String,
  url: json['url'] as String,
); }

final String sha;

final String url;

Map<String, dynamic> toJson() { return {
  'sha': sha,
  'url': url,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('sha') && json['sha'] is String &&
      json.containsKey('url') && json['url'] is String; } 
BranchShortCommit copyWith({String? sha, String? url, }) { return BranchShortCommit(
  sha: sha ?? this.sha,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BranchShortCommit &&
          sha == other.sha &&
          url == other.url; } 
@override int get hashCode { return Object.hash(sha, url); } 
@override String toString() { return 'BranchShortCommit(sha: $sha, url: $url)'; } 
 }
