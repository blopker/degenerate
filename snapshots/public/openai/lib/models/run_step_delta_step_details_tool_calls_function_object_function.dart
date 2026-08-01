// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The definition of the function that was called.
@immutable final class RunStepDeltaStepDetailsToolCallsFunctionObjectFunction {const RunStepDeltaStepDetailsToolCallsFunctionObjectFunction({this.name, this.arguments, this.output = const Omittable.absent(), });

factory RunStepDeltaStepDetailsToolCallsFunctionObjectFunction.fromJson(Map<String, dynamic> json) { return RunStepDeltaStepDetailsToolCallsFunctionObjectFunction(
  name: json['name'] as String?,
  arguments: json['arguments'] as String?,
  output: json.containsKey('output') ? Omittable(json['output'] as String?) : const Omittable.absent(),
); }

/// The name of the function.
final String? name;

/// The arguments passed to the function.
final String? arguments;

/// The output of the function. This will be `null` if the outputs have not been [submitted](/docs/api-reference/runs/submitToolOutputs) yet.
final Omittable<String?> output;

Map<String, dynamic> toJson() { return {
  'name': ?name,
  'arguments': ?arguments,
  if (output.isPresent) 'output': output.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'name', 'arguments', 'output'}.contains(key)); } 
RunStepDeltaStepDetailsToolCallsFunctionObjectFunction copyWith({String? Function()? name, String? Function()? arguments, Omittable<String?>? output, }) { return RunStepDeltaStepDetailsToolCallsFunctionObjectFunction(
  name: name != null ? name() : this.name,
  arguments: arguments != null ? arguments() : this.arguments,
  output: output ?? this.output,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RunStepDeltaStepDetailsToolCallsFunctionObjectFunction &&
          name == other.name &&
          arguments == other.arguments &&
          output == other.output; } 
@override int get hashCode { return Object.hash(name, arguments, output); } 
@override String toString() { return 'RunStepDeltaStepDetailsToolCallsFunctionObjectFunction(name: $name, arguments: $arguments, output: $output)'; } 
 }
