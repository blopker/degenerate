// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class SubmitToolOutputsRunRequestToolOutputs {const SubmitToolOutputsRunRequestToolOutputs({this.toolCallId, this.output, });

factory SubmitToolOutputsRunRequestToolOutputs.fromJson(Map<String, dynamic> json) { return SubmitToolOutputsRunRequestToolOutputs(
  toolCallId: json['tool_call_id'] as String?,
  output: json['output'] as String?,
); }

/// The ID of the tool call in the `required_action` object within the run object the output is being submitted for.
final String? toolCallId;

/// The output of the tool call to be submitted to continue the run.
final String? output;

Map<String, dynamic> toJson() { return {
  'tool_call_id': ?toolCallId,
  'output': ?output,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'tool_call_id', 'output'}.contains(key)); } 
SubmitToolOutputsRunRequestToolOutputs copyWith({String Function()? toolCallId, String Function()? output, }) { return SubmitToolOutputsRunRequestToolOutputs(
  toolCallId: toolCallId != null ? toolCallId() : this.toolCallId,
  output: output != null ? output() : this.output,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SubmitToolOutputsRunRequestToolOutputs &&
          toolCallId == other.toolCallId &&
          output == other.output; } 
@override int get hashCode { return Object.hash(toolCallId, output); } 
@override String toString() { return 'SubmitToolOutputsRunRequestToolOutputs(toolCallId: $toolCallId, output: $output)'; } 
 }
