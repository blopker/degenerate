// GENERATED CODE - DO NOT MODIFY BY HAND

/// You can use `run_url` to track the status of the run. This includes a property status and conclusion.
/// You should not rely on this always being an actions workflow run object.
final class CodeScanningDefaultSetupUpdateResponse {const CodeScanningDefaultSetupUpdateResponse({this.runId, this.runUrl, });

factory CodeScanningDefaultSetupUpdateResponse.fromJson(Map<String, dynamic> json) { return CodeScanningDefaultSetupUpdateResponse(
  runId: json['run_id'] != null ? (json['run_id'] as num).toInt() : null,
  runUrl: json['run_url'] as String?,
); }

/// ID of the corresponding run.
final int? runId;

/// URL of the corresponding run.
final String? runUrl;

Map<String, dynamic> toJson() { return {
  'run_id': ?runId,
  'run_url': ?runUrl,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'run_id', 'run_url'}.contains(key)); } 
CodeScanningDefaultSetupUpdateResponse copyWith({int Function()? runId, String Function()? runUrl, }) { return CodeScanningDefaultSetupUpdateResponse(
  runId: runId != null ? runId() : this.runId,
  runUrl: runUrl != null ? runUrl() : this.runUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CodeScanningDefaultSetupUpdateResponse &&
          runId == other.runId &&
          runUrl == other.runUrl; } 
@override int get hashCode { return Object.hash(runId, runUrl); } 
@override String toString() { return 'CodeScanningDefaultSetupUpdateResponse(runId: $runId, runUrl: $runUrl)'; } 
 }
