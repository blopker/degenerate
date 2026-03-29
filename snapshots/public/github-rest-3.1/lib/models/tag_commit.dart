// GENERATED CODE - DO NOT MODIFY BY HAND

final class TagCommit {const TagCommit({required this.sha, required this.url, });

factory TagCommit.fromJson(Map<String, dynamic> json) { return TagCommit(
  sha: json['sha'] as String,
  url: Uri.parse(json['url'] as String),
); }

final String sha;

final Uri url;

Map<String, dynamic> toJson() { return {
  'sha': sha,
  'url': url.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('sha') && json['sha'] is String &&
      json.containsKey('url') && json['url'] is String; } 
TagCommit copyWith({String? sha, Uri? url, }) { return TagCommit(
  sha: sha ?? this.sha,
  url: url ?? this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TagCommit &&
          sha == other.sha &&
          url == other.url; } 
@override int get hashCode { return Object.hash(sha, url); } 
@override String toString() { return 'TagCommit(sha: $sha, url: $url)'; } 
 }
