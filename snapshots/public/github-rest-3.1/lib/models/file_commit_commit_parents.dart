// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class FileCommitCommitParents {const FileCommitCommitParents({this.url, this.htmlUrl, this.sha, });

factory FileCommitCommitParents.fromJson(Map<String, dynamic> json) { return FileCommitCommitParents(
  url: json['url'] as String?,
  htmlUrl: json['html_url'] as String?,
  sha: json['sha'] as String?,
); }

final String? url;

final String? htmlUrl;

final String? sha;

Map<String, dynamic> toJson() { return {
  'url': ?url,
  'html_url': ?htmlUrl,
  'sha': ?sha,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'url', 'html_url', 'sha'}.contains(key)); } 
FileCommitCommitParents copyWith({String Function()? url, String Function()? htmlUrl, String Function()? sha, }) { return FileCommitCommitParents(
  url: url != null ? url() : this.url,
  htmlUrl: htmlUrl != null ? htmlUrl() : this.htmlUrl,
  sha: sha != null ? sha() : this.sha,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FileCommitCommitParents &&
          url == other.url &&
          htmlUrl == other.htmlUrl &&
          sha == other.sha; } 
@override int get hashCode { return Object.hash(url, htmlUrl, sha); } 
@override String toString() { return 'FileCommitCommitParents(url: $url, htmlUrl: $htmlUrl, sha: $sha)'; } 
 }
