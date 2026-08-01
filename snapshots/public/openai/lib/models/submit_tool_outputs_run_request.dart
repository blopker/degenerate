// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'submit_tool_outputs_run_request_tool_outputs.dart';@immutable final class SubmitToolOutputsRunRequest {const SubmitToolOutputsRunRequest({required this.toolOutputs, this.stream = const Omittable.absent(), });

factory SubmitToolOutputsRunRequest.fromJson(Map<String, dynamic> json) { return SubmitToolOutputsRunRequest(
  toolOutputs: (json['tool_outputs'] as List<dynamic>).map((e) => SubmitToolOutputsRunRequestToolOutputs.fromJson(e as Map<String, dynamic>)).toList(),
  stream: json.containsKey('stream') ? Omittable(json['stream'] as bool?) : const Omittable.absent(),
); }

/// A list of tools for which the outputs are being submitted.
final List<SubmitToolOutputsRunRequestToolOutputs> toolOutputs;

/// If `true`, returns a stream of events that happen during the Run as server-sent events, terminating when the Run enters a terminal state with a `data: [DONE]` message.
/// 
final Omittable<bool?> stream;

Map<String, dynamic> toJson() { return {
  'tool_outputs': toolOutputs.map((e) => e.toJson()).toList(),
  if (stream.isPresent) 'stream': stream.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('tool_outputs'); } 
SubmitToolOutputsRunRequest copyWith({List<SubmitToolOutputsRunRequestToolOutputs>? toolOutputs, Omittable<bool?>? stream, }) { return SubmitToolOutputsRunRequest(
  toolOutputs: toolOutputs ?? this.toolOutputs,
  stream: stream ?? this.stream,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SubmitToolOutputsRunRequest &&
          listEquals(toolOutputs, other.toolOutputs) &&
          stream == other.stream; } 
@override int get hashCode { return Object.hash(Object.hashAll(toolOutputs), stream); } 
@override String toString() { return 'SubmitToolOutputsRunRequest(toolOutputs: $toolOutputs, stream: $stream)'; } 
 }
