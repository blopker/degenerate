// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'assistant_supported_models.dart';import 'assistant_tools_code.dart';import 'assistant_tools_file_search.dart';import 'assistant_tools_function.dart';import 'assistants_named_tool_choice.dart';import 'create_message_request.dart';import 'create_run_request_model.dart';import 'create_run_request_tools.dart';import 'parallel_tool_calls.dart';import 'reasoning_effort.dart';import 'response_format_json_object.dart';import 'response_format_json_schema.dart';import 'response_format_option.dart';import 'response_format_text.dart';import 'tool_choice_option.dart';import 'truncation_object.dart';final class CreateRunRequest {const CreateRunRequest({required this.assistantId, this.model, this.reasoningEffort, this.instructions, this.additionalInstructions, this.additionalMessages, this.tools, this.metadata, this.temperature = 1.0, this.topP = 1.0, this.stream, this.maxPromptTokens, this.maxCompletionTokens, this.truncationStrategy, this.toolChoice, this.parallelToolCalls, this.responseFormat, });

factory CreateRunRequest.fromJson(Map<String, dynamic> json) { return CreateRunRequest(
  assistantId: json['assistant_id'] as String,
  model: json['model'] != null ? OneOf2.parse(json['model'], fromA: (v) => v as String, fromB: (v) => AssistantSupportedModels.fromJson(v as String),) : null,
  reasoningEffort: json['reasoning_effort'] != null ? ReasoningEffort.fromJson(json['reasoning_effort'] as String) : null,
  instructions: json['instructions'] as String?,
  additionalInstructions: json['additional_instructions'] as String?,
  additionalMessages: (json['additional_messages'] as List<dynamic>?)?.map((e) => CreateMessageRequest.fromJson(e as Map<String, dynamic>)).toList(),
  tools: (json['tools'] as List<dynamic>?)?.map((e) => OneOf3.parse(e, fromA: (v) => AssistantToolsCode.fromJson(v as Map<String, dynamic>), fromB: (v) => AssistantToolsFileSearch.fromJson(v as Map<String, dynamic>), fromC: (v) => AssistantToolsFunction.fromJson(v as Map<String, dynamic>),)).toList(),
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  temperature: json.containsKey('temperature') ? json['temperature'] != null ? (json['temperature'] as num).toDouble() : null : 1.0,
  topP: json.containsKey('top_p') ? json['top_p'] != null ? (json['top_p'] as num).toDouble() : null : 1.0,
  stream: json['stream'] as bool?,
  maxPromptTokens: json['max_prompt_tokens'] != null ? (json['max_prompt_tokens'] as num).toInt() : null,
  maxCompletionTokens: json['max_completion_tokens'] != null ? (json['max_completion_tokens'] as num).toInt() : null,
  truncationStrategy: json['truncation_strategy'] != null ? TruncationObject.fromJson(json['truncation_strategy'] as Map<String, dynamic>) : null,
  toolChoice: json['tool_choice'] != null ? OneOf2.parse(json['tool_choice'], fromA: (v) => ToolChoiceOptionVariant1.fromJson(v as String), fromB: (v) => AssistantsNamedToolChoice.fromJson(v as Map<String, dynamic>),) : null,
  parallelToolCalls: json['parallel_tool_calls'] != null ? ParallelToolCalls.fromJson(json['parallel_tool_calls'] as bool) : null,
  responseFormat: json['response_format'] != null ? OneOf4.parse(json['response_format'], fromA: (v) => ResponseFormatOptionVariant1.fromJson(v as String), fromB: (v) => ResponseFormatText.fromJson(v as Map<String, dynamic>), fromC: (v) => ResponseFormatJsonObject.fromJson(v as Map<String, dynamic>), fromD: (v) => ResponseFormatJsonSchema.fromJson(v as Map<String, dynamic>),) : null,
); }

/// The ID of the [assistant](/docs/api-reference/assistants) to use to execute this run.
final String assistantId;

/// The ID of the [Model](/docs/api-reference/models) to be used to execute this run. If a value is provided here, it will override the model associated with the assistant. If not, the model associated with the assistant will be used.
final CreateRunRequestModel? model;

final ReasoningEffort? reasoningEffort;

/// Overrides the [instructions](/docs/api-reference/assistants/createAssistant) of the assistant. This is useful for modifying the behavior on a per-run basis.
final String? instructions;

/// Appends additional instructions at the end of the instructions for the run. This is useful for modifying the behavior on a per-run basis without overriding other instructions.
final String? additionalInstructions;

/// Adds additional messages to the thread before creating the run.
final List<CreateMessageRequest>? additionalMessages;

/// Override the tools the assistant can use for this run. This is useful for modifying the behavior on a per-run basis.
final List<CreateRunRequestTools>? tools;

final Map<String,String>? metadata;

/// What sampling temperature to use, between 0 and 2. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic.
/// 
final double? temperature;

/// An alternative to sampling with temperature, called nucleus sampling, where the model considers the results of the tokens with top_p probability mass. So 0.1 means only the tokens comprising the top 10% probability mass are considered.
/// 
/// We generally recommend altering this or temperature but not both.
/// 
final double? topP;

/// If `true`, returns a stream of events that happen during the Run as server-sent events, terminating when the Run enters a terminal state with a `data: [DONE]` message.
/// 
final bool? stream;

/// The maximum number of prompt tokens that may be used over the course of the run. The run will make a best effort to use only the number of prompt tokens specified, across multiple turns of the run. If the run exceeds the number of prompt tokens specified, the run will end with status `incomplete`. See `incomplete_details` for more info.
/// 
final int? maxPromptTokens;

/// The maximum number of completion tokens that may be used over the course of the run. The run will make a best effort to use only the number of completion tokens specified, across multiple turns of the run. If the run exceeds the number of completion tokens specified, the run will end with status `incomplete`. See `incomplete_details` for more info.
/// 
final int? maxCompletionTokens;

final TruncationObject? truncationStrategy;

final ToolChoiceOption? toolChoice;

final ParallelToolCalls? parallelToolCalls;

final ResponseFormatOption? responseFormat;

Map<String, dynamic> toJson() { return {
  'assistant_id': assistantId,
  if (model != null) 'model': model?.toJson(),
  if (reasoningEffort != null) 'reasoning_effort': reasoningEffort?.toJson(),
  'instructions': ?instructions,
  'additional_instructions': ?additionalInstructions,
  if (additionalMessages != null) 'additional_messages': additionalMessages?.map((e) => e.toJson()).toList(),
  if (tools != null) 'tools': tools?.map((e) => e.toJson()).toList(),
  'metadata': ?metadata,
  'temperature': ?temperature,
  'top_p': ?topP,
  'stream': ?stream,
  'max_prompt_tokens': ?maxPromptTokens,
  'max_completion_tokens': ?maxCompletionTokens,
  if (truncationStrategy != null) 'truncation_strategy': truncationStrategy?.toJson(),
  if (toolChoice != null) 'tool_choice': toolChoice?.toJson(),
  if (parallelToolCalls != null) 'parallel_tool_calls': parallelToolCalls?.toJson(),
  if (responseFormat != null) 'response_format': responseFormat?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('assistant_id') && json['assistant_id'] is String; } 
CreateRunRequest copyWith({String? assistantId, CreateRunRequestModel? Function()? model, ReasoningEffort? Function()? reasoningEffort, String? Function()? instructions, String? Function()? additionalInstructions, List<CreateMessageRequest>? Function()? additionalMessages, List<CreateRunRequestTools>? Function()? tools, Map<String, String>? Function()? metadata, double? Function()? temperature, double? Function()? topP, bool? Function()? stream, int? Function()? maxPromptTokens, int? Function()? maxCompletionTokens, TruncationObject? Function()? truncationStrategy, ToolChoiceOption? Function()? toolChoice, ParallelToolCalls Function()? parallelToolCalls, ResponseFormatOption? Function()? responseFormat, }) { return CreateRunRequest(
  assistantId: assistantId ?? this.assistantId,
  model: model != null ? model() : this.model,
  reasoningEffort: reasoningEffort != null ? reasoningEffort() : this.reasoningEffort,
  instructions: instructions != null ? instructions() : this.instructions,
  additionalInstructions: additionalInstructions != null ? additionalInstructions() : this.additionalInstructions,
  additionalMessages: additionalMessages != null ? additionalMessages() : this.additionalMessages,
  tools: tools != null ? tools() : this.tools,
  metadata: metadata != null ? metadata() : this.metadata,
  temperature: temperature != null ? temperature() : this.temperature,
  topP: topP != null ? topP() : this.topP,
  stream: stream != null ? stream() : this.stream,
  maxPromptTokens: maxPromptTokens != null ? maxPromptTokens() : this.maxPromptTokens,
  maxCompletionTokens: maxCompletionTokens != null ? maxCompletionTokens() : this.maxCompletionTokens,
  truncationStrategy: truncationStrategy != null ? truncationStrategy() : this.truncationStrategy,
  toolChoice: toolChoice != null ? toolChoice() : this.toolChoice,
  parallelToolCalls: parallelToolCalls != null ? parallelToolCalls() : this.parallelToolCalls,
  responseFormat: responseFormat != null ? responseFormat() : this.responseFormat,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateRunRequest &&
          assistantId == other.assistantId &&
          model == other.model &&
          reasoningEffort == other.reasoningEffort &&
          instructions == other.instructions &&
          additionalInstructions == other.additionalInstructions &&
          listEquals(additionalMessages, other.additionalMessages) &&
          listEquals(tools, other.tools) &&
          metadata == other.metadata &&
          temperature == other.temperature &&
          topP == other.topP &&
          stream == other.stream &&
          maxPromptTokens == other.maxPromptTokens &&
          maxCompletionTokens == other.maxCompletionTokens &&
          truncationStrategy == other.truncationStrategy &&
          toolChoice == other.toolChoice &&
          parallelToolCalls == other.parallelToolCalls &&
          responseFormat == other.responseFormat; } 
@override int get hashCode { return Object.hash(assistantId, model, reasoningEffort, instructions, additionalInstructions, Object.hashAll(additionalMessages ?? const []), Object.hashAll(tools ?? const []), metadata, temperature, topP, stream, maxPromptTokens, maxCompletionTokens, truncationStrategy, toolChoice, parallelToolCalls, responseFormat); } 
@override String toString() { return 'CreateRunRequest(assistantId: $assistantId, model: $model, reasoningEffort: $reasoningEffort, instructions: $instructions, additionalInstructions: $additionalInstructions, additionalMessages: $additionalMessages, tools: $tools, metadata: $metadata, temperature: $temperature, topP: $topP, stream: $stream, maxPromptTokens: $maxPromptTokens, maxCompletionTokens: $maxCompletionTokens, truncationStrategy: $truncationStrategy, toolChoice: $toolChoice, parallelToolCalls: $parallelToolCalls, responseFormat: $responseFormat)'; } 
 }
