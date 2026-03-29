// GENERATED CODE - DO NOT MODIFY BY HAND

/// Represents a 'wiki_commit' secret scanning location type. This location type shows that a secret was detected inside a commit to a repository wiki.
final class SecretScanningLocationWikiCommit {const SecretScanningLocationWikiCommit({required this.path, required this.startLine, required this.endLine, required this.startColumn, required this.endColumn, required this.blobSha, required this.pageUrl, required this.commitSha, required this.commitUrl, });

factory SecretScanningLocationWikiCommit.fromJson(Map<String, dynamic> json) { return SecretScanningLocationWikiCommit(
  path: json['path'] as String,
  startLine: (json['start_line'] as num).toDouble(),
  endLine: (json['end_line'] as num).toDouble(),
  startColumn: (json['start_column'] as num).toDouble(),
  endColumn: (json['end_column'] as num).toDouble(),
  blobSha: json['blob_sha'] as String,
  pageUrl: json['page_url'] as String,
  commitSha: json['commit_sha'] as String,
  commitUrl: json['commit_url'] as String,
); }

/// The file path of the wiki page
final String path;

/// Line number at which the secret starts in the file
final double startLine;

/// Line number at which the secret ends in the file
final double endLine;

/// The column at which the secret starts within the start line when the file is interpreted as 8-bit ASCII.
final double startColumn;

/// The column at which the secret ends within the end line when the file is interpreted as 8-bit ASCII.
final double endColumn;

/// SHA-1 hash ID of the associated blob
final String blobSha;

/// The GitHub URL to get the associated wiki page
final String pageUrl;

/// SHA-1 hash ID of the associated commit
final String commitSha;

/// The GitHub URL to get the associated wiki commit
final String commitUrl;

Map<String, dynamic> toJson() { return {
  'path': path,
  'start_line': startLine,
  'end_line': endLine,
  'start_column': startColumn,
  'end_column': endColumn,
  'blob_sha': blobSha,
  'page_url': pageUrl,
  'commit_sha': commitSha,
  'commit_url': commitUrl,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('path') && json['path'] is String &&
      json.containsKey('start_line') && json['start_line'] is num &&
      json.containsKey('end_line') && json['end_line'] is num &&
      json.containsKey('start_column') && json['start_column'] is num &&
      json.containsKey('end_column') && json['end_column'] is num &&
      json.containsKey('blob_sha') && json['blob_sha'] is String &&
      json.containsKey('page_url') && json['page_url'] is String &&
      json.containsKey('commit_sha') && json['commit_sha'] is String &&
      json.containsKey('commit_url') && json['commit_url'] is String; } 
SecretScanningLocationWikiCommit copyWith({String? path, double? startLine, double? endLine, double? startColumn, double? endColumn, String? blobSha, String? pageUrl, String? commitSha, String? commitUrl, }) { return SecretScanningLocationWikiCommit(
  path: path ?? this.path,
  startLine: startLine ?? this.startLine,
  endLine: endLine ?? this.endLine,
  startColumn: startColumn ?? this.startColumn,
  endColumn: endColumn ?? this.endColumn,
  blobSha: blobSha ?? this.blobSha,
  pageUrl: pageUrl ?? this.pageUrl,
  commitSha: commitSha ?? this.commitSha,
  commitUrl: commitUrl ?? this.commitUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecretScanningLocationWikiCommit &&
          path == other.path &&
          startLine == other.startLine &&
          endLine == other.endLine &&
          startColumn == other.startColumn &&
          endColumn == other.endColumn &&
          blobSha == other.blobSha &&
          pageUrl == other.pageUrl &&
          commitSha == other.commitSha &&
          commitUrl == other.commitUrl; } 
@override int get hashCode { return Object.hash(path, startLine, endLine, startColumn, endColumn, blobSha, pageUrl, commitSha, commitUrl); } 
@override String toString() { return 'SecretScanningLocationWikiCommit(path: $path, startLine: $startLine, endLine: $endLine, startColumn: $startColumn, endColumn: $endColumn, blobSha: $blobSha, pageUrl: $pageUrl, commitSha: $commitSha, commitUrl: $commitUrl)'; } 
 }
