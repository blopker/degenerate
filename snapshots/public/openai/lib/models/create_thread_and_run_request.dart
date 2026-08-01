// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'assistant_tools_code.dart';import 'assistant_tools_file_search.dart';import 'assistant_tools_function.dart';import 'assistants_named_tool_choice.dart';import 'create_thread_and_run_request_model.dart';import 'create_thread_and_run_request_tool_resources.dart';import 'create_thread_and_run_request_tools.dart';import 'create_thread_request.dart';import 'parallel_tool_calls.dart';import 'response_format_json_object.dart';import 'response_format_json_schema.dart';import 'response_format_option.dart';import 'response_format_text.dart';import 'tool_choice_option.dart';import 'truncation_object.dart';@immutable final class CreateThreadAndRunRequest {const CreateThreadAndRunRequest({required this.assistantId, this.thread, this.model = const Omittable.absent(), this.instructions = const Omittable.absent(), this.tools = const Omittable.absent(), this.toolResources = const Omittable.absent(), this.metadata = const Omittable.absent(), this.temperature = 1.0, this.topP = 1.0, this.stream = const Omittable.absent(), this.maxPromptTokens = const Omittable.absent(), this.maxCompletionTokens = const Omittable.absent(), this.truncationStrategy = const Omittable.absent(), this.toolChoice = const Omittable.absent(), this.parallelToolCalls, this.responseFormat = const Omittable.absent(), });

factory CreateThreadAndRunRequest.fromJson(Map<String, dynamic> json) { return CreateThreadAndRunRequest(
  assistantId: json['assistant_id'] as String,
  thread: json['thread'] != null ? CreateThreadRequest.fromJson(json['thread'] as Map<String, dynamic>) : null,
  model: json.containsKey('model') ? Omittable(json['model'] != null ? OneOf2.parse(json['model'], fromA: (v) => v as String, fromB: (v) => CreateThreadAndRunRequestModelVariant2.fromJson(v as String),) : null) : const Omittable.absent(),
  instructions: json.containsKey('instructions') ? Omittable(json['instructions'] as String?) : const Omittable.absent(),
  tools: json.containsKey('tools') ? Omittable((json['tools'] as List<dynamic>?)?.map((e) => OneOf3.parse(e, fromA: (v) => AssistantToolsCode.fromJson(v as Map<String, dynamic>), fromB: (v) => AssistantToolsFileSearch.fromJson(v as Map<String, dynamic>), fromC: (v) => AssistantToolsFunction.fromJson(v as Map<String, dynamic>),)).toList()) : const Omittable.absent(),
  toolResources: json.containsKey('tool_resources') ? Omittable(json['tool_resources'] != null ? CreateThreadAndRunRequestToolResources.fromJson(json['tool_resources'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  metadata: json.containsKey('metadata') ? Omittable((json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String))) : const Omittable.absent(),
  temperature: json.containsKey('temperature') ? json['temperature'] != null ? (json['temperature'] as num).toDouble() : null : 1.0,
  topP: json.containsKey('top_p') ? json['top_p'] != null ? (json['top_p'] as num).toDouble() : null : 1.0,
  stream: json.containsKey('stream') ? Omittable(json['stream'] as bool?) : const Omittable.absent(),
  maxPromptTokens: json.containsKey('max_prompt_tokens') ? Omittable(json['max_prompt_tokens'] != null ? (json['max_prompt_tokens'] as num).toInt() : null) : const Omittable.absent(),
  maxCompletionTokens: json.containsKey('max_completion_tokens') ? Omittable(json['max_completion_tokens'] != null ? (json['max_completion_tokens'] as num).toInt() : null) : const Omittable.absent(),
  truncationStrategy: json.containsKey('truncation_strategy') ? Omittable(json['truncation_strategy'] != null ? TruncationObject.fromJson(json['truncation_strategy'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  toolChoice: json.containsKey('tool_choice') ? Omittable(json['tool_choice'] != null ? OneOf2.parse(json['tool_choice'], fromA: (v) => ToolChoiceOptionVariant1.fromJson(v as String), fromB: (v) => AssistantsNamedToolChoice.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
  parallelToolCalls: json['parallel_tool_calls'] != null ? ParallelToolCalls.fromJson(json['parallel_tool_calls'] as bool) : null,
  responseFormat: json.containsKey('response_format') ? Omittable(json['response_format'] != null ? OneOf4.parse(json['response_format'], fromA: (v) => ResponseFormatOptionVariant1.fromJson(v as String), fromB: (v) => ResponseFormatText.fromJson(v as Map<String, dynamic>), fromC: (v) => ResponseFormatJsonObject.fromJson(v as Map<String, dynamic>), fromD: (v) => ResponseFormatJsonSchema.fromJson(v as Map<String, dynamic>),) : null) : const Omittable.absent(),
); }

/// The ID of the [assistant](/docs/api-reference/assistants) to use to execute this run.
final String assistantId;

final CreateThreadRequest? thread;

/// The ID of the [Model](/docs/api-reference/models) to be used to execute this run. If a value is provided here, it will override the model associated with the assistant. If not, the model associated with the assistant will be used.
final Omittable<CreateThreadAndRunRequestModel?> model;

/// Override the default system message of the assistant. This is useful for modifying the behavior on a per-run basis.
final Omittable<String?> instructions;

/// Override the tools the assistant can use for this run. This is useful for modifying the behavior on a per-run basis.
final Omittable<List<CreateThreadAndRunRequestTools>?> tools;

/// A set of resources that are used by the assistant's tools. The resources are specific to the type of tool. For example, the `code_interpreter` tool requires a list of file IDs, while the `file_search` tool requires a list of vector store IDs.
/// 
final Omittable<CreateThreadAndRunRequestToolResources?> toolResources;

final Omittable<Map<String,String>?> metadata;

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
final Omittable<bool?> stream;

/// The maximum number of prompt tokens that may be used over the course of the run. The run will make a best effort to use only the number of prompt tokens specified, across multiple turns of the run. If the run exceeds the number of prompt tokens specified, the run will end with status `incomplete`. See `incomplete_details` for more info.
/// 
final Omittable<int?> maxPromptTokens;

/// The maximum number of completion tokens that may be used over the course of the run. The run will make a best effort to use only the number of completion tokens specified, across multiple turns of the run. If the run exceeds the number of completion tokens specified, the run will end with status `incomplete`. See `incomplete_details` for more info.
/// 
final Omittable<int?> maxCompletionTokens;

final Omittable<TruncationObject?> truncationStrategy;

final Omittable<ToolChoiceOption?> toolChoice;

final ParallelToolCalls? parallelToolCalls;

final Omittable<ResponseFormatOption?> responseFormat;

Map<String, dynamic> toJson() { return {
  'assistant_id': assistantId,
  if (thread != null) 'thread': thread?.toJson(),
  if (model.isPresent) 'model': model.value?.toJson(),
  if (instructions.isPresent) 'instructions': instructions.value,
  if (tools.isPresent) 'tools': tools.value?.map((e) => e.toJson()).toList(),
  if (toolResources.isPresent) 'tool_resources': toolResources.value?.toJson(),
  if (metadata.isPresent) 'metadata': metadata.value,
  'temperature': ?temperature,
  'top_p': ?topP,
  if (stream.isPresent) 'stream': stream.value,
  if (maxPromptTokens.isPresent) 'max_prompt_tokens': maxPromptTokens.value,
  if (maxCompletionTokens.isPresent) 'max_completion_tokens': maxCompletionTokens.value,
  if (truncationStrategy.isPresent) 'truncation_strategy': truncationStrategy.value?.toJson(),
  if (toolChoice.isPresent) 'tool_choice': toolChoice.value?.toJson(),
  if (parallelToolCalls != null) 'parallel_tool_calls': parallelToolCalls?.toJson(),
  if (responseFormat.isPresent) 'response_format': responseFormat.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('assistant_id') && json['assistant_id'] is String; } 
CreateThreadAndRunRequest copyWith({String? assistantId, CreateThreadRequest? Function()? thread, Omittable<CreateThreadAndRunRequestModel?>? model, Omittable<String?>? instructions, Omittable<List<CreateThreadAndRunRequestTools>?>? tools, Omittable<CreateThreadAndRunRequestToolResources?>? toolResources, Omittable<Map<String,String>?>? metadata, double? Function()? temperature, double? Function()? topP, Omittable<bool?>? stream, Omittable<int?>? maxPromptTokens, Omittable<int?>? maxCompletionTokens, Omittable<TruncationObject?>? truncationStrategy, Omittable<ToolChoiceOption?>? toolChoice, ParallelToolCalls? Function()? parallelToolCalls, Omittable<ResponseFormatOption?>? responseFormat, }) { return CreateThreadAndRunRequest(
  assistantId: assistantId ?? this.assistantId,
  thread: thread != null ? thread() : this.thread,
  model: model ?? this.model,
  instructions: instructions ?? this.instructions,
  tools: tools ?? this.tools,
  toolResources: toolResources ?? this.toolResources,
  metadata: metadata ?? this.metadata,
  temperature: temperature != null ? temperature() : this.temperature,
  topP: topP != null ? topP() : this.topP,
  stream: stream ?? this.stream,
  maxPromptTokens: maxPromptTokens ?? this.maxPromptTokens,
  maxCompletionTokens: maxCompletionTokens ?? this.maxCompletionTokens,
  truncationStrategy: truncationStrategy ?? this.truncationStrategy,
  toolChoice: toolChoice ?? this.toolChoice,
  parallelToolCalls: parallelToolCalls != null ? parallelToolCalls() : this.parallelToolCalls,
  responseFormat: responseFormat ?? this.responseFormat,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateThreadAndRunRequest &&
          assistantId == other.assistantId &&
          thread == other.thread &&
          model == other.model &&
          instructions == other.instructions &&
          tools.isPresent == other.tools.isPresent &&
          listEquals(tools.value, other.tools.value) &&
          toolResources == other.toolResources &&
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
@override int get hashCode { return Object.hash(assistantId, thread, model, instructions, Object.hashAll(tools.value ?? const []), toolResources, metadata, temperature, topP, stream, maxPromptTokens, maxCompletionTokens, truncationStrategy, toolChoice, parallelToolCalls, responseFormat); } 
@override String toString() { return 'CreateThreadAndRunRequest(assistantId: $assistantId, thread: $thread, model: $model, instructions: $instructions, tools: $tools, toolResources: $toolResources, metadata: $metadata, temperature: $temperature, topP: $topP, stream: $stream, maxPromptTokens: $maxPromptTokens, maxCompletionTokens: $maxCompletionTokens, truncationStrategy: $truncationStrategy, toolChoice: $toolChoice, parallelToolCalls: $parallelToolCalls, responseFormat: $responseFormat)'; } 
 }
