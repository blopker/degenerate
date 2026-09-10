// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// An export of a codespace. Also, latest export details for a codespace can be fetched with id = latest
@immutable final class CodespaceExportDetails {const CodespaceExportDetails({this.state = const Omittable.absent(), this.completedAt = const Omittable.absent(), this.branch = const Omittable.absent(), this.sha = const Omittable.absent(), this.id, this.exportUrl, this.htmlUrl = const Omittable.absent(), });

factory CodespaceExportDetails.fromJson(Map<String, dynamic> json) { return CodespaceExportDetails(
  state: json.containsKey('state') ? Omittable(json['state'] as String?) : const Omittable.absent(),
  completedAt: json.containsKey('completed_at') ? Omittable(json['completed_at'] != null ? DateTime.parse(json['completed_at'] as String) : null) : const Omittable.absent(),
  branch: json.containsKey('branch') ? Omittable(json['branch'] as String?) : const Omittable.absent(),
  sha: json.containsKey('sha') ? Omittable(json['sha'] as String?) : const Omittable.absent(),
  id: json['id'] as String?,
  exportUrl: json['export_url'] as String?,
  htmlUrl: json.containsKey('html_url') ? Omittable(json['html_url'] as String?) : const Omittable.absent(),
); }

/// State of the latest export
final Omittable<String?> state;

/// Completion time of the last export operation
final Omittable<DateTime?> completedAt;

/// Name of the exported branch
final Omittable<String?> branch;

/// Git commit SHA of the exported branch
final Omittable<String?> sha;

/// Id for the export details
final String? id;

/// Url for fetching export details
final String? exportUrl;

/// Web url for the exported branch
final Omittable<String?> htmlUrl;

Map<String, dynamic> toJson() { return {
  if (state.isPresent) 'state': state.value,
  if (completedAt.isPresent) 'completed_at': completedAt.value?.toIso8601String(),
  if (branch.isPresent) 'branch': branch.value,
  if (sha.isPresent) 'sha': sha.value,
  'id': ?id,
  'export_url': ?exportUrl,
  if (htmlUrl.isPresent) 'html_url': htmlUrl.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'state', 'completed_at', 'branch', 'sha', 'id', 'export_url', 'html_url'}.contains(key)); } 
CodespaceExportDetails copyWith({Omittable<String?>? state, Omittable<DateTime?>? completedAt, Omittable<String?>? branch, Omittable<String?>? sha, String? Function()? id, String? Function()? exportUrl, Omittable<String?>? htmlUrl, }) { return CodespaceExportDetails(
  state: state ?? this.state,
  completedAt: completedAt ?? this.completedAt,
  branch: branch ?? this.branch,
  sha: sha ?? this.sha,
  id: id != null ? id() : this.id,
  exportUrl: exportUrl != null ? exportUrl() : this.exportUrl,
  htmlUrl: htmlUrl ?? this.htmlUrl,
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
