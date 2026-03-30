// GENERATED CODE - DO NOT MODIFY BY HAND

/// An export of a codespace. Also, latest export details for a codespace can be fetched with id = latest
final class CodespaceExportDetails {const CodespaceExportDetails({this.state, this.completedAt, this.branch, this.sha, this.id, this.exportUrl, this.htmlUrl, });

factory CodespaceExportDetails.fromJson(Map<String, dynamic> json) { return CodespaceExportDetails(
  state: json['state'] as String?,
  completedAt: json['completed_at'] != null ? DateTime.parse(json['completed_at'] as String) : null,
  branch: json['branch'] as String?,
  sha: json['sha'] as String?,
  id: json['id'] as String?,
  exportUrl: json['export_url'] as String?,
  htmlUrl: json['html_url'] as String?,
); }

/// State of the latest export
final String? state;

/// Completion time of the last export operation
final DateTime? completedAt;

/// Name of the exported branch
final String? branch;

/// Git commit SHA of the exported branch
final String? sha;

/// Id for the export details
final String? id;

/// Url for fetching export details
final String? exportUrl;

/// Web url for the exported branch
final String? htmlUrl;

Map<String, dynamic> toJson() { return {
  'state': ?state,
  if (completedAt != null) 'completed_at': completedAt?.toIso8601String(),
  'branch': ?branch,
  'sha': ?sha,
  'id': ?id,
  'export_url': ?exportUrl,
  'html_url': ?htmlUrl,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'state', 'completed_at', 'branch', 'sha', 'id', 'export_url', 'html_url'}.contains(key)); } 
CodespaceExportDetails copyWith({String? Function()? state, DateTime? Function()? completedAt, String? Function()? branch, String? Function()? sha, String Function()? id, String Function()? exportUrl, String? Function()? htmlUrl, }) { return CodespaceExportDetails(
  state: state != null ? state() : this.state,
  completedAt: completedAt != null ? completedAt() : this.completedAt,
  branch: branch != null ? branch() : this.branch,
  sha: sha != null ? sha() : this.sha,
  id: id != null ? id() : this.id,
  exportUrl: exportUrl != null ? exportUrl() : this.exportUrl,
  htmlUrl: htmlUrl != null ? htmlUrl() : this.htmlUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodespaceExportDetails &&
          state == other.state &&
          completedAt == other.completedAt &&
          branch == other.branch &&
          sha == other.sha &&
          id == other.id &&
          exportUrl == other.exportUrl &&
          htmlUrl == other.htmlUrl; } 
@override int get hashCode { return Object.hash(state, completedAt, branch, sha, id, exportUrl, htmlUrl); } 
@override String toString() { return 'CodespaceExportDetails(state: $state, completedAt: $completedAt, branch: $branch, sha: $sha, id: $id, exportUrl: $exportUrl, htmlUrl: $htmlUrl)'; } 
 }
