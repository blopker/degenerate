// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'run_step_delta_step_details_tool_calls_code_object_code_interpreter_outputs.dart';import 'run_step_delta_step_details_tool_calls_code_output_image_object.dart';import 'run_step_delta_step_details_tool_calls_code_output_logs_object.dart';/// The Code Interpreter tool call definition.
final class RunStepDeltaStepDetailsToolCallsCodeObjectCodeInterpreter {const RunStepDeltaStepDetailsToolCallsCodeObjectCodeInterpreter({this.input, this.outputs, });

factory RunStepDeltaStepDetailsToolCallsCodeObjectCodeInterpreter.fromJson(Map<String, dynamic> json) { return RunStepDeltaStepDetailsToolCallsCodeObjectCodeInterpreter(
  input: json['input'] as String?,
  outputs: (json['outputs'] as List<dynamic>?)?.map((e) => OneOf2.parse(e, fromA: (v) => RunStepDeltaStepDetailsToolCallsCodeOutputLogsObject.fromJson(v as Map<String, dynamic>), fromB: (v) => RunStepDeltaStepDetailsToolCallsCodeOutputImageObject.fromJson(v as Map<String, dynamic>),)).toList(),
); }

/// The input to the Code Interpreter tool call.
final String? input;

/// The outputs from the Code Interpreter tool call. Code Interpreter can output one or more items, including text (`logs`) or images (`image`). Each of these are represented by a different object type.
final List<RunStepDeltaStepDetailsToolCallsCodeObjectCodeInterpreterOutputs>? outputs;

Map<String, dynamic> toJson() { return {
  'input': ?input,
  if (outputs != null) 'outputs': outputs?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
RunStepDeltaStepDetailsToolCallsCodeObjectCodeInterpreter copyWith({String Function()? input, List<RunStepDeltaStepDetailsToolCallsCodeObjectCodeInterpreterOutputs> Function()? outputs, }) { return RunStepDeltaStepDetailsToolCallsCodeObjectCodeInterpreter(
  input: input != null ? input() : this.input,
  outputs: outputs != null ? outputs() : this.outputs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RunStepDeltaStepDetailsToolCallsCodeObjectCodeInterpreter &&
          input == other.input &&
          listEquals(outputs, other.outputs); } 
@override int get hashCode { return Object.hash(input, Object.hashAll(outputs ?? const [])); } 
@override String toString() { return 'RunStepDeltaStepDetailsToolCallsCodeObjectCodeInterpreter(input: $input, outputs: $outputs)'; } 
 }
