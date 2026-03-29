// GENERATED CODE - DO NOT MODIFY BY HAND

/// The definition of the function that was called.
final class RunStepDeltaStepDetailsToolCallsFunctionObjectFunction {const RunStepDeltaStepDetailsToolCallsFunctionObjectFunction({this.name, this.arguments, this.output, });

factory RunStepDeltaStepDetailsToolCallsFunctionObjectFunction.fromJson(Map<String, dynamic> json) { return RunStepDeltaStepDetailsToolCallsFunctionObjectFunction(
  name: json['name'] as String?,
  arguments: json['arguments'] as String?,
  output: json['output'] as String?,
); }

/// The name of the function.
final String? name;

/// The arguments passed to the function.
final String? arguments;

/// The output of the function. This will be `null` if the outputs have not been [submitted](/docs/api-reference/runs/submitToolOutputs) yet.
final String? output;

Map<String, dynamic> toJson() { return {
  'name': ?name,
  'arguments': ?arguments,
  'output': ?output,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
RunStepDeltaStepDetailsToolCallsFunctionObjectFunction copyWith({String Function()? name, String Function()? arguments, String? Function()? output, }) { return RunStepDeltaStepDetailsToolCallsFunctionObjectFunction(
  name: name != null ? name() : this.name,
  arguments: arguments != null ? arguments() : this.arguments,
  output: output != null ? output() : this.output,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RunStepDeltaStepDetailsToolCallsFunctionObjectFunction &&
          name == other.name &&
          arguments == other.arguments &&
          output == other.output; } 
@override int get hashCode { return Object.hash(name, arguments, output); } 
@override String toString() { return 'RunStepDeltaStepDetailsToolCallsFunctionObjectFunction(name: $name, arguments: $arguments, output: $output)'; } 
 }
