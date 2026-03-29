// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'create_eval_responses_run_data_source_sampling_params_text.dart';import 'reasoning_effort.dart';import 'tool.dart';final class CreateEvalResponsesRunDataSourceSamplingParams {const CreateEvalResponsesRunDataSourceSamplingParams({this.reasoningEffort, this.temperature = 1.0, this.maxCompletionTokens, this.topP = 1.0, this.seed = 42, this.tools, this.text, });

factory CreateEvalResponsesRunDataSourceSamplingParams.fromJson(Map<String, dynamic> json) { return CreateEvalResponsesRunDataSourceSamplingParams(
  reasoningEffort: json['reasoning_effort'] != null ? ReasoningEffort.fromJson(json['reasoning_effort'] as String) : null,
  temperature: json.containsKey('temperature') ? (json['temperature'] as num).toDouble() : 1.0,
  maxCompletionTokens: json['max_completion_tokens'] != null ? (json['max_completion_tokens'] as num).toInt() : null,
  topP: json.containsKey('top_p') ? (json['top_p'] as num).toDouble() : 1.0,
  seed: json.containsKey('seed') ? (json['seed'] as num).toInt() : 42,
  tools: (json['tools'] as List<dynamic>?)?.map((e) => Tool.fromJson(e as Map<String, dynamic>)).toList(),
  text: json['text'] != null ? CreateEvalResponsesRunDataSourceSamplingParamsText.fromJson(json['text'] as Map<String, dynamic>) : null,
); }

final ReasoningEffort? reasoningEffort;

/// A higher temperature increases randomness in the outputs.
final double temperature;

/// The maximum number of tokens in the generated output.
final int? maxCompletionTokens;

/// An alternative to temperature for nucleus sampling; 1.0 includes all tokens.
final double topP;

/// A seed value to initialize the randomness, during sampling.
final int seed;

/// An array of tools the model may call while generating a response. You
/// can specify which tool to use by setting the `tool_choice` parameter.
/// 
/// The two categories of tools you can provide the model are:
/// 
/// - **Built-in tools**: Tools that are provided by OpenAI that extend the
///   model's capabilities, like [web search](/docs/guides/tools-web-search)
///   or [file search](/docs/guides/tools-file-search). Learn more about
///   [built-in tools](/docs/guides/tools).
/// - **Function calls (custom tools)**: Functions that are defined by you,
///   enabling the model to call your own code. Learn more about
///   [function calling](/docs/guides/function-calling).
/// 
final List<Tool>? tools;

/// Configuration options for a text response from the model. Can be plain
/// text or structured JSON data. Learn more:
/// - [Text inputs and outputs](/docs/guides/text)
/// - [Structured Outputs](/docs/guides/structured-outputs)
/// 
final CreateEvalResponsesRunDataSourceSamplingParamsText? text;

Map<String, dynamic> toJson() { return {
  if (reasoningEffort != null) 'reasoning_effort': reasoningEffort?.toJson(),
  'temperature': temperature,
  'max_completion_tokens': ?maxCompletionTokens,
  'top_p': topP,
  'seed': seed,
  if (tools != null) 'tools': tools?.map((e) => e.toJson()).toList(),
  if (text != null) 'text': text?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
CreateEvalResponsesRunDataSourceSamplingParams copyWith({ReasoningEffort? Function()? reasoningEffort, double Function()? temperature, int Function()? maxCompletionTokens, double Function()? topP, int Function()? seed, List<Tool> Function()? tools, CreateEvalResponsesRunDataSourceSamplingParamsText Function()? text, }) { return CreateEvalResponsesRunDataSourceSamplingParams(
  reasoningEffort: reasoningEffort != null ? reasoningEffort() : this.reasoningEffort,
  temperature: temperature != null ? temperature() : this.temperature,
  maxCompletionTokens: maxCompletionTokens != null ? maxCompletionTokens() : this.maxCompletionTokens,
  topP: topP != null ? topP() : this.topP,
  seed: seed != null ? seed() : this.seed,
  tools: tools != null ? tools() : this.tools,
  text: text != null ? text() : this.text,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateEvalResponsesRunDataSourceSamplingParams &&
          reasoningEffort == other.reasoningEffort &&
          temperature == other.temperature &&
          maxCompletionTokens == other.maxCompletionTokens &&
          topP == other.topP &&
          seed == other.seed &&
          listEquals(tools, other.tools) &&
          text == other.text; } 
@override int get hashCode { return Object.hash(reasoningEffort, temperature, maxCompletionTokens, topP, seed, Object.hashAll(tools ?? const []), text); } 
@override String toString() { return 'CreateEvalResponsesRunDataSourceSamplingParams(reasoningEffort: $reasoningEffort, temperature: $temperature, maxCompletionTokens: $maxCompletionTokens, topP: $topP, seed: $seed, tools: $tools, text: $text)'; } 
 }
