// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ActionsReRunWorkflowFailedJobsRequest {const ActionsReRunWorkflowFailedJobsRequest({this.enableDebugLogging = false});

factory ActionsReRunWorkflowFailedJobsRequest.fromJson(Map<String, dynamic> json) { return ActionsReRunWorkflowFailedJobsRequest(
  enableDebugLogging: json.containsKey('enable_debug_logging') ? json['enable_debug_logging'] as bool : false,
); }

/// Whether to enable debug logging for the re-run.
final bool enableDebugLogging;

Map<String, dynamic> toJson() { return {
  'enable_debug_logging': enableDebugLogging,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enable_debug_logging'}.contains(key)); } 
ActionsReRunWorkflowFailedJobsRequest copyWith({bool Function()? enableDebugLogging}) { return ActionsReRunWorkflowFailedJobsRequest(
  enableDebugLogging: enableDebugLogging != null ? enableDebugLogging() : this.enableDebugLogging,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsReRunWorkflowFailedJobsRequest &&
          enableDebugLogging == other.enableDebugLogging; } 
@override int get hashCode { return enableDebugLogging.hashCode; } 
@override String toString() { return 'ActionsReRunWorkflowFailedJobsRequest(enableDebugLogging: $enableDebugLogging)'; } 
 }
