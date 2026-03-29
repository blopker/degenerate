// GENERATED CODE - DO NOT MODIFY BY HAND

final class ActionsReRunWorkflowRequest {const ActionsReRunWorkflowRequest({this.enableDebugLogging = false});

factory ActionsReRunWorkflowRequest.fromJson(Map<String, dynamic> json) { return ActionsReRunWorkflowRequest(
  enableDebugLogging: json.containsKey('enable_debug_logging') ? json['enable_debug_logging'] as bool : false,
); }

/// Whether to enable debug logging for the re-run.
final bool enableDebugLogging;

Map<String, dynamic> toJson() { return {
  'enable_debug_logging': enableDebugLogging,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ActionsReRunWorkflowRequest copyWith({bool Function()? enableDebugLogging}) { return ActionsReRunWorkflowRequest(
  enableDebugLogging: enableDebugLogging != null ? enableDebugLogging() : this.enableDebugLogging,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsReRunWorkflowRequest &&
          enableDebugLogging == other.enableDebugLogging; } 
@override int get hashCode { return enableDebugLogging.hashCode; } 
@override String toString() { return 'ActionsReRunWorkflowRequest(enableDebugLogging: $enableDebugLogging)'; } 
 }
