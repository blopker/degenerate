// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The ID of the workflow run.
extension type const WorkflowRunId(int value) {
factory WorkflowRunId.fromJson(num json) => WorkflowRunId(json.toInt());

num toJson() => value;

}
/// Response containing the workflow run ID and URLs.
@immutable final class WorkflowDispatchResponse {const WorkflowDispatchResponse({required this.workflowRunId, required this.runUrl, required this.htmlUrl, });

factory WorkflowDispatchResponse.fromJson(Map<String, dynamic> json) { return WorkflowDispatchResponse(
  workflowRunId: WorkflowRunId.fromJson(json['workflow_run_id'] as num),
  runUrl: Uri.parse(json['run_url'] as String),
  htmlUrl: Uri.parse(json['html_url'] as String),
); }

/// The ID of the workflow run.
final WorkflowRunId workflowRunId;

/// The URL to the workflow run.
final Uri runUrl;

final Uri htmlUrl;

Map<String, dynamic> toJson() { return {
  'workflow_run_id': workflowRunId.toJson(),
  'run_url': runUrl.toString(),
  'html_url': htmlUrl.toString(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('workflow_run_id') &&
      json.containsKey('run_url') && json['run_url'] is String &&
      json.containsKey('html_url') && json['html_url'] is String; } 
WorkflowDispatchResponse copyWith({WorkflowRunId? workflowRunId, Uri? runUrl, Uri? htmlUrl, }) { return WorkflowDispatchResponse(
  workflowRunId: workflowRunId ?? this.workflowRunId,
  runUrl: runUrl ?? this.runUrl,
  htmlUrl: htmlUrl ?? this.htmlUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkflowDispatchResponse &&
          workflowRunId == other.workflowRunId &&
          runUrl == other.runUrl &&
          htmlUrl == other.htmlUrl; } 
@override int get hashCode { return Object.hash(workflowRunId, runUrl, htmlUrl); } 
@override String toString() { return 'WorkflowDispatchResponse(workflowRunId: $workflowRunId, runUrl: $runUrl, htmlUrl: $htmlUrl)'; } 
 }
