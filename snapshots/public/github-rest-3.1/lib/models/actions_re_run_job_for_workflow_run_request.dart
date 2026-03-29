// GENERATED CODE - DO NOT MODIFY BY HAND

final class ActionsReRunJobForWorkflowRunRequest {const ActionsReRunJobForWorkflowRunRequest({this.enableDebugLogging = false});

factory ActionsReRunJobForWorkflowRunRequest.fromJson(Map<String, dynamic> json) { return ActionsReRunJobForWorkflowRunRequest(
  enableDebugLogging: json.containsKey('enable_debug_logging') ? json['enable_debug_logging'] as bool : false,
); }

/// Whether to enable debug logging for the re-run.
final bool enableDebugLogging;

Map<String, dynamic> toJson() { return {
  'enable_debug_logging': enableDebugLogging,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enable_debug_logging'}.contains(key)); } 
ActionsReRunJobForWorkflowRunRequest copyWith({bool Function()? enableDebugLogging}) { return ActionsReRunJobForWorkflowRunRequest(
  enableDebugLogging: enableDebugLogging != null ? enableDebugLogging() : this.enableDebugLogging,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsReRunJobForWorkflowRunRequest &&
          enableDebugLogging == other.enableDebugLogging; } 
@override int get hashCode { return enableDebugLogging.hashCode; } 
@override String toString() { return 'ActionsReRunJobForWorkflowRunRequest(enableDebugLogging: $enableDebugLogging)'; } 
 }
