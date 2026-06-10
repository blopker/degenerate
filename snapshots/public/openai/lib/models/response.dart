// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'conversation2.dart';import 'input_item.dart';import 'model_ids_responses.dart';import 'model_ids_shared.dart';import 'output_item.dart';import 'prompt.dart';import 'reasoning.dart';import 'response_error.dart';import 'response_incomplete_details.dart';import 'response_instructions.dart';import 'response_text_param.dart';import 'response_usage.dart';import 'service_tier.dart';import 'specific_apply_patch_param.dart';import 'specific_function_shell_param.dart';import 'tool.dart';import 'tool_choice_allowed.dart';import 'tool_choice_custom.dart';import 'tool_choice_function.dart';import 'tool_choice_mcp.dart';import 'tool_choice_mode.dart';import 'tool_choice_param.dart';import 'tool_choice_types.dart';/// The retention policy for the prompt cache. Set to `24h` to enable extended prompt caching, which keeps cached prefixes active for longer, up to a maximum of 24 hours. [Learn more](/docs/guides/prompt-caching#prompt-cache-retention).
/// 
@immutable final class ResponsePromptCacheRetention {const ResponsePromptCacheRetention._(this.value);

factory ResponsePromptCacheRetention.fromJson(String json) { return switch (json) {
  'in-memory' => inMemory,
  '24h' => $24h,
  _ => ResponsePromptCacheRetention._(json),
}; }

static const ResponsePromptCacheRetention inMemory = ResponsePromptCacheRetention._('in-memory');

static const ResponsePromptCacheRetention $24h = ResponsePromptCacheRetention._('24h');

static const List<ResponsePromptCacheRetention> values = [inMemory, $24h];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponsePromptCacheRetention && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ResponsePromptCacheRetention($value)'; } 
 }
/// The truncation strategy to use for the model response.
/// - `auto`: If the input to this Response exceeds
///   the model's context window size, the model will truncate the
///   response to fit the context window by dropping items from the beginning of the conversation.
/// - `disabled` (default): If the input size will exceed the context window
///   size for a model, the request will fail with a 400 error.
/// 
@immutable final class ResponseTruncation {const ResponseTruncation._(this.value);

factory ResponseTruncation.fromJson(String json) { return switch (json) {
  'auto' => auto,
  'disabled' => disabled,
  _ => ResponseTruncation._(json),
}; }

static const ResponseTruncation auto = ResponseTruncation._('auto');

static const ResponseTruncation disabled = ResponseTruncation._('disabled');

static const List<ResponseTruncation> values = [auto, disabled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseTruncation && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ResponseTruncation($value)'; } 
 }
/// The object type of this resource - always set to `response`.
/// 
@immutable final class ResponseObject {const ResponseObject._(this.value);

factory ResponseObject.fromJson(String json) { return switch (json) {
  'response' => response,
  _ => ResponseObject._(json),
}; }

static const ResponseObject response = ResponseObject._('response');

static const List<ResponseObject> values = [response];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ResponseObject($value)'; } 
 }
/// The status of the response generation. One of `completed`, `failed`,
/// `in_progress`, `cancelled`, `queued`, or `incomplete`.
/// 
@immutable final class ResponseStatus {const ResponseStatus._(this.value);

factory ResponseStatus.fromJson(String json) { return switch (json) {
  'completed' => completed,
  'failed' => failed,
  'in_progress' => inProgress,
  'cancelled' => cancelled,
  'queued' => queued,
  'incomplete' => incomplete,
  _ => ResponseStatus._(json),
}; }

static const ResponseStatus completed = ResponseStatus._('completed');

static const ResponseStatus failed = ResponseStatus._('failed');

static const ResponseStatus inProgress = ResponseStatus._('in_progress');

static const ResponseStatus cancelled = ResponseStatus._('cancelled');

static const ResponseStatus queued = ResponseStatus._('queued');

static const ResponseStatus incomplete = ResponseStatus._('incomplete');

static const List<ResponseStatus> values = [completed, failed, inProgress, cancelled, queued, incomplete];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ResponseStatus($value)'; } 
 }
@immutable final class Response {const Response({required this.metadata, required this.temperature, required this.topP, required this.model, required this.tools, required this.toolChoice, required this.id, required this.object, required this.createdAt, required this.error, required this.incompleteDetails, required this.output, required this.instructions, this.topLogprobs, this.user, this.safetyIdentifier, this.promptCacheKey, this.serviceTier, this.promptCacheRetention, this.previousResponseId, this.reasoning, this.background, this.maxOutputTokens, this.maxToolCalls, this.text, this.prompt, this.truncation, this.status, this.completedAt, this.outputText, this.usage, this.parallelToolCalls = true, this.conversation, });

factory Response.fromJson(Map<String, dynamic> json) { return Response(
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  topLogprobs: json['top_logprobs'] != null ? (json['top_logprobs'] as num).toInt() : null,
  temperature: json['temperature'] != null ? (json['temperature'] as num).toDouble() : null,
  topP: json['top_p'] != null ? (json['top_p'] as num).toDouble() : null,
  user: json['user'] as String?,
  safetyIdentifier: json['safety_identifier'] as String?,
  promptCacheKey: json['prompt_cache_key'] as String?,
  serviceTier: json['service_tier'] != null ? ServiceTier.fromJson(json['service_tier'] as String) : null,
  promptCacheRetention: json['prompt_cache_retention'] != null ? ResponsePromptCacheRetention.fromJson(json['prompt_cache_retention'] as String) : null,
  previousResponseId: json['previous_response_id'] as String?,
  model: OneOf2.parse(json['model'], fromA: (v) => OneOf2.parse(v, fromA: (v) => v as String, fromB: (v) => ModelIdsSharedVariant2.fromJson(v as String),), fromB: (v) => ResponsesOnlyModel.fromJson(v as String),),
  reasoning: json['reasoning'] != null ? Reasoning.fromJson(json['reasoning'] as Map<String, dynamic>) : null,
  background: json['background'] as bool?,
  maxOutputTokens: json['max_output_tokens'] != null ? (json['max_output_tokens'] as num).toInt() : null,
  maxToolCalls: json['max_tool_calls'] != null ? (json['max_tool_calls'] as num).toInt() : null,
  text: json['text'] != null ? ResponseTextParam.fromJson(json['text'] as Map<String, dynamic>) : null,
  tools: (json['tools'] as List<dynamic>).map((e) => Tool.fromJson(e as Map<String, dynamic>)).toList(),
  toolChoice: OneOf8.parse(json['tool_choice'], fromA: (v) => ToolChoiceMode.fromJson(v as String), fromB: (v) => ToolChoiceAllowed.fromJson(v as Map<String, dynamic>), fromC: (v) => ToolChoiceTypes.fromJson(v as Map<String, dynamic>), fromD: (v) => ToolChoiceFunction.fromJson(v as Map<String, dynamic>), fromE: (v) => ToolChoiceMcp.fromJson(v as Map<String, dynamic>), fromF: (v) => ToolChoiceCustom.fromJson(v as Map<String, dynamic>), fromG: (v) => SpecificApplyPatchParam.fromJson(v as Map<String, dynamic>), fromH: (v) => SpecificFunctionShellParam.fromJson(v as Map<String, dynamic>),),
  prompt: json['prompt'] != null ? Prompt.fromJson(json['prompt'] as Map<String, dynamic>) : null,
  truncation: json['truncation'] != null ? ResponseTruncation.fromJson(json['truncation'] as String) : null,
  id: json['id'] as String,
  object: ResponseObject.fromJson(json['object'] as String),
  status: json['status'] != null ? ResponseStatus.fromJson(json['status'] as String) : null,
  createdAt: (json['created_at'] as num).toDouble(),
  completedAt: json['completed_at'] != null ? (json['completed_at'] as num).toDouble() : null,
  error: ResponseError.fromJson(json['error'] as Map<String, dynamic>),
  incompleteDetails: json['incomplete_details'] != null ? ResponseIncompleteDetails.fromJson(json['incomplete_details'] as Map<String, dynamic>) : null,
  output: (json['output'] as List<dynamic>).map((e) => OutputItem.fromJson(e as Map<String, dynamic>)).toList(),
  instructions: json['instructions'] != null ? OneOf2.parse(json['instructions'], fromA: (v) => v as String, fromB: (v) => (v as List<dynamic>).map((e) => InputItem.fromJson(e as Map<String, dynamic>)).toList(),) : null,
  outputText: json['output_text'] as String?,
  usage: json['usage'] != null ? ResponseUsage.fromJson(json['usage'] as Map<String, dynamic>) : null,
  parallelToolCalls: json['parallel_tool_calls'] as bool,
  conversation: json['conversation'] != null ? Conversation2.fromJson(json['conversation'] as Map<String, dynamic>) : null,
); }

/// Set of 16 key-value pairs that can be attached to an object. This can be
/// useful for storing additional information about the object in a structured
/// format, and querying for objects via API or the dashboard.
/// 
/// Keys are strings with a maximum length of 64 characters. Values are strings
/// with a maximum length of 512 characters.
/// 
final Map<String,String>? metadata;

/// An integer between 0 and 20 specifying the number of most likely tokens to
/// return at each token position, each with an associated log probability.
/// 
final int? topLogprobs;

/// What sampling temperature to use, between 0 and 2. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic.
/// We generally recommend altering this or `top_p` but not both.
/// 
final double? temperature;

/// An alternative to sampling with temperature, called nucleus sampling,
/// where the model considers the results of the tokens with top_p probability
/// mass. So 0.1 means only the tokens comprising the top 10% probability mass
/// are considered.
/// 
/// We generally recommend altering this or `temperature` but not both.
/// 
final double? topP;

/// This field is being replaced by `safety_identifier` and `prompt_cache_key`. Use `prompt_cache_key` instead to maintain caching optimizations.
/// A stable identifier for your end-users.
/// Used to boost cache hit rates by better bucketing similar requests and  to help OpenAI detect and prevent abuse. [Learn more](/docs/guides/safety-best-practices#safety-identifiers).
/// 
final String? user;

/// A stable identifier used to help detect users of your application that may be violating OpenAI's usage policies.
/// The IDs should be a string that uniquely identifies each user, with a maximum length of 64 characters. We recommend hashing their username or email address, in order to avoid sending us any identifying information. [Learn more](/docs/guides/safety-best-practices#safety-identifiers).
/// 
final String? safetyIdentifier;

/// Used by OpenAI to cache responses for similar requests to optimize your cache hit rates. Replaces the `user` field. [Learn more](/docs/guides/prompt-caching).
/// 
final String? promptCacheKey;

final ServiceTier? serviceTier;

/// The retention policy for the prompt cache. Set to `24h` to enable extended prompt caching, which keeps cached prefixes active for longer, up to a maximum of 24 hours. [Learn more](/docs/guides/prompt-caching#prompt-cache-retention).
/// 
final ResponsePromptCacheRetention? promptCacheRetention;

/// The unique ID of the previous response to the model. Use this to
/// create multi-turn conversations. Learn more about
/// [conversation state](/docs/guides/conversation-state). Cannot be used in conjunction with `conversation`.
/// 
final String? previousResponseId;

/// Model ID used to generate the response, like `gpt-4o` or `o3`. OpenAI
/// offers a wide range of models with different capabilities, performance
/// characteristics, and price points. Refer to the [model guide](/docs/models)
/// to browse and compare available models.
/// 
final ModelIdsResponses model;

final Reasoning? reasoning;

/// Whether to run the model response in the background.
/// [Learn more](/docs/guides/background).
/// 
final bool? background;

/// An upper bound for the number of tokens that can be generated for a response, including visible output tokens and [reasoning tokens](/docs/guides/reasoning).
/// 
final int? maxOutputTokens;

/// The maximum number of total calls to built-in tools that can be processed in a response. This maximum number applies across all built-in tool calls, not per individual tool. Any further attempts to call a tool by the model will be ignored.
/// 
final int? maxToolCalls;

final ResponseTextParam? text;

final List<Tool> tools;

final ToolChoiceParam toolChoice;

final Prompt? prompt;

/// The truncation strategy to use for the model response.
/// - `auto`: If the input to this Response exceeds
///   the model's context window size, the model will truncate the
///   response to fit the context window by dropping items from the beginning of the conversation.
/// - `disabled` (default): If the input size will exceed the context window
///   size for a model, the request will fail with a 400 error.
/// 
final ResponseTruncation? truncation;

/// Unique identifier for this Response.
/// 
final String id;

/// The object type of this resource - always set to `response`.
/// 
final ResponseObject object;

/// The status of the response generation. One of `completed`, `failed`,
/// `in_progress`, `cancelled`, `queued`, or `incomplete`.
/// 
final ResponseStatus? status;

/// Unix timestamp (in seconds) of when this Response was created.
/// 
final double createdAt;

/// Unix timestamp (in seconds) of when this Response was completed.
/// Only present when the status is `completed`.
/// 
final double? completedAt;

final ResponseError error;

/// Details about why the response is incomplete.
/// 
final ResponseIncompleteDetails? incompleteDetails;

/// An array of content items generated by the model.
/// 
/// - The length and order of items in the `output` array is dependent
///   on the model's response.
/// - Rather than accessing the first item in the `output` array and
///   assuming it's an `assistant` message with the content generated by
///   the model, you might consider using the `output_text` property where
///   supported in SDKs.
/// 
final List<OutputItem> output;

/// A system (or developer) message inserted into the model's context.
/// 
/// When using along with `previous_response_id`, the instructions from a previous
/// response will not be carried over to the next response. This makes it simple
/// to swap out system (or developer) messages in new responses.
/// 
final ResponseInstructions? instructions;

/// SDK-only convenience property that contains the aggregated text output
/// from all `output_text` items in the `output` array, if any are present.
/// Supported in the Python and JavaScript SDKs.
/// 
final String? outputText;

final ResponseUsage? usage;

/// Whether to allow the model to run tool calls in parallel.
/// 
final bool parallelToolCalls;

final Conversation2? conversation;

Map<String, dynamic> toJson() { return {
  'metadata': ?metadata,
  'top_logprobs': ?topLogprobs,
  'temperature': ?temperature,
  'top_p': ?topP,
  'user': ?user,
  'safety_identifier': ?safetyIdentifier,
  'prompt_cache_key': ?promptCacheKey,
  if (serviceTier != null) 'service_tier': serviceTier?.toJson(),
  if (promptCacheRetention != null) 'prompt_cache_retention': promptCacheRetention?.toJson(),
  'previous_response_id': ?previousResponseId,
  'model': model.toJson(),
  if (reasoning != null) 'reasoning': reasoning?.toJson(),
  'background': ?background,
  'max_output_tokens': ?maxOutputTokens,
  'max_tool_calls': ?maxToolCalls,
  if (text != null) 'text': text?.toJson(),
  'tools': tools.map((e) => e.toJson()).toList(),
  'tool_choice': toolChoice.toJson(),
  if (prompt != null) 'prompt': prompt?.toJson(),
  if (truncation != null) 'truncation': truncation?.toJson(),
  'id': id,
  'object': object.toJson(),
  if (status != null) 'status': status?.toJson(),
  'created_at': createdAt,
  'completed_at': ?completedAt,
  'error': error.toJson(),
  if (incompleteDetails != null) 'incomplete_details': incompleteDetails?.toJson(),
  'output': output.map((e) => e.toJson()).toList(),
  if (instructions != null) 'instructions': instructions?.toJson(),
  'output_text': ?outputText,
  if (usage != null) 'usage': usage?.toJson(),
  'parallel_tool_calls': parallelToolCalls,
  if (conversation != null) 'conversation': conversation?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('metadata') &&
      json.containsKey('temperature') && json['temperature'] is num &&
      json.containsKey('top_p') && json['top_p'] is num &&
      json.containsKey('model') &&
      json.containsKey('tools') &&
      json.containsKey('tool_choice') &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('object') &&
      json.containsKey('created_at') && json['created_at'] is num &&
      json.containsKey('error') &&
      json.containsKey('incomplete_details') &&
      json.containsKey('output') &&
      json.containsKey('instructions') &&
      json.containsKey('parallel_tool_calls') && json['parallel_tool_calls'] is bool; } 
Response copyWith({Map<String, String>? Function()? metadata, int? Function()? topLogprobs, double? Function()? temperature, double? Function()? topP, String Function()? user, String Function()? safetyIdentifier, String Function()? promptCacheKey, ServiceTier? Function()? serviceTier, ResponsePromptCacheRetention? Function()? promptCacheRetention, String? Function()? previousResponseId, ModelIdsResponses? model, Reasoning? Function()? reasoning, bool? Function()? background, int? Function()? maxOutputTokens, int? Function()? maxToolCalls, ResponseTextParam Function()? text, List<Tool>? tools, ToolChoiceParam? toolChoice, Prompt Function()? prompt, ResponseTruncation? Function()? truncation, String? id, ResponseObject? object, ResponseStatus Function()? status, double? createdAt, double? Function()? completedAt, ResponseError? error, ResponseIncompleteDetails? Function()? incompleteDetails, List<OutputItem>? output, ResponseInstructions? Function()? instructions, String? Function()? outputText, ResponseUsage Function()? usage, bool? parallelToolCalls, Conversation2? Function()? conversation, }) { return Response(
  metadata: metadata != null ? metadata() : this.metadata,
  topLogprobs: topLogprobs != null ? topLogprobs() : this.topLogprobs,
  temperature: temperature != null ? temperature() : this.temperature,
  topP: topP != null ? topP() : this.topP,
  user: user != null ? user() : this.user,
  safetyIdentifier: safetyIdentifier != null ? safetyIdentifier() : this.safetyIdentifier,
  promptCacheKey: promptCacheKey != null ? promptCacheKey() : this.promptCacheKey,
  serviceTier: serviceTier != null ? serviceTier() : this.serviceTier,
  promptCacheRetention: promptCacheRetention != null ? promptCacheRetention() : this.promptCacheRetention,
  previousResponseId: previousResponseId != null ? previousResponseId() : this.previousResponseId,
  model: model ?? this.model,
  reasoning: reasoning != null ? reasoning() : this.reasoning,
  background: background != null ? background() : this.background,
  maxOutputTokens: maxOutputTokens != null ? maxOutputTokens() : this.maxOutputTokens,
  maxToolCalls: maxToolCalls != null ? maxToolCalls() : this.maxToolCalls,
  text: text != null ? text() : this.text,
  tools: tools ?? this.tools,
  toolChoice: toolChoice ?? this.toolChoice,
  prompt: prompt != null ? prompt() : this.prompt,
  truncation: truncation != null ? truncation() : this.truncation,
  id: id ?? this.id,
  object: object ?? this.object,
  status: status != null ? status() : this.status,
  createdAt: createdAt ?? this.createdAt,
  completedAt: completedAt != null ? completedAt() : this.completedAt,
  error: error ?? this.error,
  incompleteDetails: incompleteDetails != null ? incompleteDetails() : this.incompleteDetails,
  output: output ?? this.output,
  instructions: instructions != null ? instructions() : this.instructions,
  outputText: outputText != null ? outputText() : this.outputText,
  usage: usage != null ? usage() : this.usage,
  parallelToolCalls: parallelToolCalls ?? this.parallelToolCalls,
  conversation: conversation != null ? conversation() : this.conversation,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Response &&
          metadata == other.metadata &&
          topLogprobs == other.topLogprobs &&
          temperature == other.temperature &&
          topP == other.topP &&
          user == other.user &&
          safetyIdentifier == other.safetyIdentifier &&
          promptCacheKey == other.promptCacheKey &&
          serviceTier == other.serviceTier &&
          promptCacheRetention == other.promptCacheRetention &&
          previousResponseId == other.previousResponseId &&
          model == other.model &&
          reasoning == other.reasoning &&
          background == other.background &&
          maxOutputTokens == other.maxOutputTokens &&
          maxToolCalls == other.maxToolCalls &&
          text == other.text &&
          listEquals(tools, other.tools) &&
          toolChoice == other.toolChoice &&
          prompt == other.prompt &&
          truncation == other.truncation &&
          id == other.id &&
          object == other.object &&
          status == other.status &&
          createdAt == other.createdAt &&
          completedAt == other.completedAt &&
          error == other.error &&
          incompleteDetails == other.incompleteDetails &&
          listEquals(output, other.output) &&
          instructions == other.instructions &&
          outputText == other.outputText &&
          usage == other.usage &&
          parallelToolCalls == other.parallelToolCalls &&
          conversation == other.conversation; } 
@override int get hashCode { return Object.hashAll([metadata, topLogprobs, temperature, topP, user, safetyIdentifier, promptCacheKey, serviceTier, promptCacheRetention, previousResponseId, model, reasoning, background, maxOutputTokens, maxToolCalls, text, Object.hashAll(tools), toolChoice, prompt, truncation, id, object, status, createdAt, completedAt, error, incompleteDetails, Object.hashAll(output), instructions, outputText, usage, parallelToolCalls, conversation]); } 
@override String toString() { return 'Response(metadata: $metadata, topLogprobs: $topLogprobs, temperature: $temperature, topP: $topP, user: $user, safetyIdentifier: $safetyIdentifier, promptCacheKey: $promptCacheKey, serviceTier: $serviceTier, promptCacheRetention: $promptCacheRetention, previousResponseId: $previousResponseId, model: $model, reasoning: $reasoning, background: $background, maxOutputTokens: $maxOutputTokens, maxToolCalls: $maxToolCalls, text: $text, tools: $tools, toolChoice: $toolChoice, prompt: $prompt, truncation: $truncation, id: $id, object: $object, status: $status, createdAt: $createdAt, completedAt: $completedAt, error: $error, incompleteDetails: $incompleteDetails, output: $output, instructions: $instructions, outputText: $outputText, usage: $usage, parallelToolCalls: $parallelToolCalls, conversation: $conversation)'; } 
 }
