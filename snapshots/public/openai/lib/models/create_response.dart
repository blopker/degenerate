// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'context_management_param.dart';import 'conversation_param.dart';import 'conversation_param2.dart';import 'include_enum.dart';import 'input_item.dart';import 'input_param.dart';import 'model_ids_responses.dart';import 'model_ids_shared.dart';import 'prompt.dart';import 'reasoning.dart';import 'response_stream_options.dart';import 'response_text_param.dart';import 'service_tier.dart';import 'specific_apply_patch_param.dart';import 'specific_function_shell_param.dart';import 'tool.dart';import 'tool_choice_allowed.dart';import 'tool_choice_custom.dart';import 'tool_choice_function.dart';import 'tool_choice_mcp.dart';import 'tool_choice_mode.dart';import 'tool_choice_param.dart';import 'tool_choice_types.dart';/// The retention policy for the prompt cache. Set to `24h` to enable extended prompt caching, which keeps cached prefixes active for longer, up to a maximum of 24 hours. [Learn more](/docs/guides/prompt-caching#prompt-cache-retention).
/// 
@immutable final class CreateResponsePromptCacheRetention {const CreateResponsePromptCacheRetention._(this.value);

factory CreateResponsePromptCacheRetention.fromJson(String json) { return switch (json) {
  'in-memory' => inMemory,
  '24h' => $24h,
  _ => CreateResponsePromptCacheRetention._(json),
}; }

static const CreateResponsePromptCacheRetention inMemory = CreateResponsePromptCacheRetention._('in-memory');

static const CreateResponsePromptCacheRetention $24h = CreateResponsePromptCacheRetention._('24h');

static const List<CreateResponsePromptCacheRetention> values = [inMemory, $24h];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateResponsePromptCacheRetention && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreateResponsePromptCacheRetention($value)'; } 
 }
/// The truncation strategy to use for the model response.
/// - `auto`: If the input to this Response exceeds
///   the model's context window size, the model will truncate the
///   response to fit the context window by dropping items from the beginning of the conversation.
/// - `disabled` (default): If the input size will exceed the context window
///   size for a model, the request will fail with a 400 error.
/// 
@immutable final class CreateResponseTruncation {const CreateResponseTruncation._(this.value);

factory CreateResponseTruncation.fromJson(String json) { return switch (json) {
  'auto' => auto,
  'disabled' => disabled,
  _ => CreateResponseTruncation._(json),
}; }

static const CreateResponseTruncation auto = CreateResponseTruncation._('auto');

static const CreateResponseTruncation disabled = CreateResponseTruncation._('disabled');

static const List<CreateResponseTruncation> values = [auto, disabled];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateResponseTruncation && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreateResponseTruncation($value)'; } 
 }
@immutable final class CreateResponse {const CreateResponse({this.metadata, this.topLogprobs, this.temperature, this.topP, this.user, this.safetyIdentifier, this.promptCacheKey, this.serviceTier, this.promptCacheRetention, this.previousResponseId, this.model, this.reasoning, this.background, this.maxOutputTokens, this.maxToolCalls, this.text, this.tools, this.toolChoice, this.prompt, this.truncation, this.input, this.include, this.parallelToolCalls, this.store, this.instructions, this.stream, this.streamOptions, this.conversation, this.contextManagement, });

factory CreateResponse.fromJson(Map<String, dynamic> json) { return CreateResponse(
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  topLogprobs: json['top_logprobs'] != null ? (json['top_logprobs'] as num).toInt() : null,
  temperature: json['temperature'] != null ? (json['temperature'] as num).toDouble() : null,
  topP: json['top_p'] != null ? (json['top_p'] as num).toDouble() : null,
  user: json['user'] as String?,
  safetyIdentifier: json['safety_identifier'] as String?,
  promptCacheKey: json['prompt_cache_key'] as String?,
  serviceTier: json['service_tier'] != null ? ServiceTier.fromJson(json['service_tier'] as String) : null,
  promptCacheRetention: json['prompt_cache_retention'] != null ? CreateResponsePromptCacheRetention.fromJson(json['prompt_cache_retention'] as String) : null,
  previousResponseId: json['previous_response_id'] as String?,
  model: json['model'] != null ? OneOf2.parse(json['model'], fromA: (v) => OneOf2.parse(v, fromA: (v) => v as String, fromB: (v) => ModelIdsSharedVariant2.fromJson(v as String),), fromB: (v) => ResponsesOnlyModel.fromJson(v as String),) : null,
  reasoning: json['reasoning'] != null ? Reasoning.fromJson(json['reasoning'] as Map<String, dynamic>) : null,
  background: json['background'] as bool?,
  maxOutputTokens: json['max_output_tokens'] != null ? (json['max_output_tokens'] as num).toInt() : null,
  maxToolCalls: json['max_tool_calls'] != null ? (json['max_tool_calls'] as num).toInt() : null,
  text: json['text'] != null ? ResponseTextParam.fromJson(json['text'] as Map<String, dynamic>) : null,
  tools: (json['tools'] as List<dynamic>?)?.map((e) => Tool.fromJson(e as Map<String, dynamic>)).toList(),
  toolChoice: json['tool_choice'] != null ? OneOf8.parse(json['tool_choice'], fromA: (v) => ToolChoiceMode.fromJson(v as String), fromB: (v) => ToolChoiceAllowed.fromJson(v as Map<String, dynamic>), fromC: (v) => ToolChoiceTypes.fromJson(v as Map<String, dynamic>), fromD: (v) => ToolChoiceFunction.fromJson(v as Map<String, dynamic>), fromE: (v) => ToolChoiceMcp.fromJson(v as Map<String, dynamic>), fromF: (v) => ToolChoiceCustom.fromJson(v as Map<String, dynamic>), fromG: (v) => SpecificApplyPatchParam.fromJson(v as Map<String, dynamic>), fromH: (v) => SpecificFunctionShellParam.fromJson(v as Map<String, dynamic>),) : null,
  prompt: json['prompt'] != null ? Prompt.fromJson(json['prompt'] as Map<String, dynamic>) : null,
  truncation: json['truncation'] != null ? CreateResponseTruncation.fromJson(json['truncation'] as String) : null,
  input: json['input'] != null ? OneOf2.parse(json['input'], fromA: (v) => v as String, fromB: (v) => (v as List<dynamic>).map((e) => InputItem.fromJson(e as Map<String, dynamic>)).toList(),) : null,
  include: (json['include'] as List<dynamic>?)?.map((e) => IncludeEnum.fromJson(e as String)).toList(),
  parallelToolCalls: json['parallel_tool_calls'] as bool?,
  store: json['store'] as bool?,
  instructions: json['instructions'] as String?,
  stream: json['stream'] as bool?,
  streamOptions: json['stream_options'] != null ? ResponseStreamOptions.fromJson(json['stream_options'] as Map<String, dynamic>) : null,
  conversation: json['conversation'] != null ? OneOf2.parse(json['conversation'], fromA: (v) => v as String, fromB: (v) => ConversationParam2.fromJson(v as Map<String, dynamic>),) : null,
  contextManagement: (json['context_management'] as List<dynamic>?)?.map((e) => ContextManagementParam.fromJson(e as Map<String, dynamic>)).toList(),
); }

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
final CreateResponsePromptCacheRetention? promptCacheRetention;

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
final ModelIdsResponses? model;

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

final List<Tool>? tools;

final ToolChoiceParam? toolChoice;

final Prompt? prompt;

/// The truncation strategy to use for the model response.
/// - `auto`: If the input to this Response exceeds
///   the model's context window size, the model will truncate the
///   response to fit the context window by dropping items from the beginning of the conversation.
/// - `disabled` (default): If the input size will exceed the context window
///   size for a model, the request will fail with a 400 error.
/// 
final CreateResponseTruncation? truncation;

final InputParam? input;

/// Specify additional output data to include in the model response. Currently supported values are:
/// - `web_search_call.action.sources`: Include the sources of the web search tool call.
/// - `code_interpreter_call.outputs`: Includes the outputs of python code execution in code interpreter tool call items.
/// - `computer_call_output.output.image_url`: Include image urls from the computer call output.
/// - `file_search_call.results`: Include the search results of the file search tool call.
/// - `message.input_image.image_url`: Include image urls from the input message.
/// - `message.output_text.logprobs`: Include logprobs with assistant messages.
/// - `reasoning.encrypted_content`: Includes an encrypted version of reasoning tokens in reasoning item outputs. This enables reasoning items to be used in multi-turn conversations when using the Responses API statelessly (like when the `store` parameter is set to `false`, or when an organization is enrolled in the zero data retention program).
final List<IncludeEnum>? include;

/// Whether to allow the model to run tool calls in parallel.
/// 
final bool? parallelToolCalls;

/// Whether to store the generated model response for later retrieval via
/// API.
/// 
final bool? store;

/// A system (or developer) message inserted into the model's context.
/// 
/// When using along with `previous_response_id`, the instructions from a previous
/// response will not be carried over to the next response. This makes it simple
/// to swap out system (or developer) messages in new responses.
/// 
final String? instructions;

/// If set to true, the model response data will be streamed to the client
/// as it is generated using [server-sent events](https://developer.mozilla.org/en-US/docs/Web/API/Server-sent_events/Using_server-sent_events#Event_stream_format).
/// See the [Streaming section below](/docs/api-reference/responses-streaming)
/// for more information.
/// 
final bool? stream;

final ResponseStreamOptions? streamOptions;

final ConversationParam? conversation;

/// Context management configuration for this request.
/// 
final List<ContextManagementParam>? contextManagement;

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
  if (model != null) 'model': model?.toJson(),
  if (reasoning != null) 'reasoning': reasoning?.toJson(),
  'background': ?background,
  'max_output_tokens': ?maxOutputTokens,
  'max_tool_calls': ?maxToolCalls,
  if (text != null) 'text': text?.toJson(),
  if (tools != null) 'tools': tools?.map((e) => e.toJson()).toList(),
  if (toolChoice != null) 'tool_choice': toolChoice?.toJson(),
  if (prompt != null) 'prompt': prompt?.toJson(),
  if (truncation != null) 'truncation': truncation?.toJson(),
  if (input != null) 'input': input?.toJson(),
  if (include != null) 'include': include?.map((e) => e.toJson()).toList(),
  'parallel_tool_calls': ?parallelToolCalls,
  'store': ?store,
  'instructions': ?instructions,
  'stream': ?stream,
  if (streamOptions != null) 'stream_options': streamOptions?.toJson(),
  if (conversation != null) 'conversation': conversation?.toJson(),
  if (contextManagement != null) 'context_management': contextManagement?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'metadata', 'top_logprobs', 'temperature', 'top_p', 'user', 'safety_identifier', 'prompt_cache_key', 'service_tier', 'prompt_cache_retention', 'previous_response_id', 'model', 'reasoning', 'background', 'max_output_tokens', 'max_tool_calls', 'text', 'tools', 'tool_choice', 'prompt', 'truncation', 'input', 'include', 'parallel_tool_calls', 'store', 'instructions', 'stream', 'stream_options', 'conversation', 'context_management'}.contains(key)); } 
CreateResponse copyWith({Map<String, String>? Function()? metadata, int Function()? topLogprobs, double? Function()? temperature, double? Function()? topP, String Function()? user, String Function()? safetyIdentifier, String Function()? promptCacheKey, ServiceTier? Function()? serviceTier, CreateResponsePromptCacheRetention? Function()? promptCacheRetention, String? Function()? previousResponseId, ModelIdsResponses Function()? model, Reasoning? Function()? reasoning, bool? Function()? background, int? Function()? maxOutputTokens, int? Function()? maxToolCalls, ResponseTextParam Function()? text, List<Tool> Function()? tools, ToolChoiceParam Function()? toolChoice, Prompt Function()? prompt, CreateResponseTruncation? Function()? truncation, InputParam Function()? input, List<IncludeEnum>? Function()? include, bool? Function()? parallelToolCalls, bool? Function()? store, String? Function()? instructions, bool? Function()? stream, ResponseStreamOptions Function()? streamOptions, ConversationParam? Function()? conversation, List<ContextManagementParam>? Function()? contextManagement, }) { return CreateResponse(
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
  model: model != null ? model() : this.model,
  reasoning: reasoning != null ? reasoning() : this.reasoning,
  background: background != null ? background() : this.background,
  maxOutputTokens: maxOutputTokens != null ? maxOutputTokens() : this.maxOutputTokens,
  maxToolCalls: maxToolCalls != null ? maxToolCalls() : this.maxToolCalls,
  text: text != null ? text() : this.text,
  tools: tools != null ? tools() : this.tools,
  toolChoice: toolChoice != null ? toolChoice() : this.toolChoice,
  prompt: prompt != null ? prompt() : this.prompt,
  truncation: truncation != null ? truncation() : this.truncation,
  input: input != null ? input() : this.input,
  include: include != null ? include() : this.include,
  parallelToolCalls: parallelToolCalls != null ? parallelToolCalls() : this.parallelToolCalls,
  store: store != null ? store() : this.store,
  instructions: instructions != null ? instructions() : this.instructions,
  stream: stream != null ? stream() : this.stream,
  streamOptions: streamOptions != null ? streamOptions() : this.streamOptions,
  conversation: conversation != null ? conversation() : this.conversation,
  contextManagement: contextManagement != null ? contextManagement() : this.contextManagement,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateResponse &&
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
          input == other.input &&
          listEquals(include, other.include) &&
          parallelToolCalls == other.parallelToolCalls &&
          store == other.store &&
          instructions == other.instructions &&
          stream == other.stream &&
          streamOptions == other.streamOptions &&
          conversation == other.conversation &&
          listEquals(contextManagement, other.contextManagement); } 
@override int get hashCode { return Object.hashAll([metadata, topLogprobs, temperature, topP, user, safetyIdentifier, promptCacheKey, serviceTier, promptCacheRetention, previousResponseId, model, reasoning, background, maxOutputTokens, maxToolCalls, text, Object.hashAll(tools ?? const []), toolChoice, prompt, truncation, input, Object.hashAll(include ?? const []), parallelToolCalls, store, instructions, stream, streamOptions, conversation, Object.hashAll(contextManagement ?? const [])]); } 
@override String toString() { return 'CreateResponse(metadata: $metadata, topLogprobs: $topLogprobs, temperature: $temperature, topP: $topP, user: $user, safetyIdentifier: $safetyIdentifier, promptCacheKey: $promptCacheKey, serviceTier: $serviceTier, promptCacheRetention: $promptCacheRetention, previousResponseId: $previousResponseId, model: $model, reasoning: $reasoning, background: $background, maxOutputTokens: $maxOutputTokens, maxToolCalls: $maxToolCalls, text: $text, tools: $tools, toolChoice: $toolChoice, prompt: $prompt, truncation: $truncation, input: $input, include: $include, parallelToolCalls: $parallelToolCalls, store: $store, instructions: $instructions, stream: $stream, streamOptions: $streamOptions, conversation: $conversation, contextManagement: $contextManagement)'; } 
 }
