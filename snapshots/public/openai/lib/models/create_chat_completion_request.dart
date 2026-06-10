// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'chat_completion_allowed_tools_choice.dart';import 'chat_completion_function_call_option.dart';import 'chat_completion_functions.dart';import 'chat_completion_named_tool_choice.dart';import 'chat_completion_named_tool_choice_custom.dart';import 'chat_completion_request_message.dart';import 'chat_completion_stream_options.dart';import 'chat_completion_tool.dart';import 'chat_completion_tool_choice_option.dart';import 'create_chat_completion_request_audio.dart';import 'create_chat_completion_request_function_call.dart';import 'create_chat_completion_request_response_format.dart';import 'create_chat_completion_request_tools.dart';import 'create_chat_completion_request_web_search_options.dart';import 'custom_tool_chat_completions.dart';import 'model_ids_shared.dart';import 'parallel_tool_calls.dart';import 'prediction_content.dart';import 'reasoning_effort.dart';import 'service_tier.dart';import 'stop_configuration.dart';import 'tool_choice_mode.dart';import 'verbosity.dart';/// The retention policy for the prompt cache. Set to `24h` to enable extended prompt caching, which keeps cached prefixes active for longer, up to a maximum of 24 hours. [Learn more](/docs/guides/prompt-caching#prompt-cache-retention).
/// 
@immutable final class CreateChatCompletionRequestPromptCacheRetention {const CreateChatCompletionRequestPromptCacheRetention._(this.value);

factory CreateChatCompletionRequestPromptCacheRetention.fromJson(String json) { return switch (json) {
  'in-memory' => inMemory,
  '24h' => $24h,
  _ => CreateChatCompletionRequestPromptCacheRetention._(json),
}; }

static const CreateChatCompletionRequestPromptCacheRetention inMemory = CreateChatCompletionRequestPromptCacheRetention._('in-memory');

static const CreateChatCompletionRequestPromptCacheRetention $24h = CreateChatCompletionRequestPromptCacheRetention._('24h');

static const List<CreateChatCompletionRequestPromptCacheRetention> values = [inMemory, $24h];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CreateChatCompletionRequestPromptCacheRetention && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CreateChatCompletionRequestPromptCacheRetention($value)'; } 
 }
@immutable final class ResponseModalities2 {const ResponseModalities2._(this.value);

factory ResponseModalities2.fromJson(String json) { return switch (json) {
  'text' => text,
  'audio' => audio,
  _ => ResponseModalities2._(json),
}; }

static const ResponseModalities2 text = ResponseModalities2._('text');

static const ResponseModalities2 audio = ResponseModalities2._('audio');

static const List<ResponseModalities2> values = [text, audio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ResponseModalities2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ResponseModalities2($value)'; } 
 }
@immutable final class CreateChatCompletionRequest {const CreateChatCompletionRequest({required this.model, required this.messages, this.verbosity, this.topP, this.user, this.safetyIdentifier, this.promptCacheKey, this.serviceTier, this.promptCacheRetention, this.topLogprobs, this.temperature, this.modalities, this.metadata, this.reasoningEffort, this.maxCompletionTokens, this.frequencyPenalty = 0.0, this.presencePenalty = 0.0, this.webSearchOptions, this.responseFormat, this.audio, this.store = false, this.stream = false, this.functions, this.logitBias, this.logprobs = false, this.maxTokens, this.n = 1, this.prediction, this.seed, this.streamOptions, this.tools, this.toolChoice, this.parallelToolCalls, this.functionCall, this.stop, });

factory CreateChatCompletionRequest.fromJson(Map<String, dynamic> json) { return CreateChatCompletionRequest(
  metadata: (json['metadata'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v as String)),
  topLogprobs: json['top_logprobs'] != null ? (json['top_logprobs'] as num).toInt() : null,
  temperature: json['temperature'] != null ? (json['temperature'] as num).toDouble() : null,
  topP: json['top_p'] != null ? (json['top_p'] as num).toDouble() : null,
  user: json['user'] as String?,
  safetyIdentifier: json['safety_identifier'] as String?,
  promptCacheKey: json['prompt_cache_key'] as String?,
  serviceTier: json['service_tier'] != null ? ServiceTier.fromJson(json['service_tier'] as String) : null,
  promptCacheRetention: json['prompt_cache_retention'] != null ? CreateChatCompletionRequestPromptCacheRetention.fromJson(json['prompt_cache_retention'] as String) : null,
  messages: (json['messages'] as List<dynamic>).map((e) => ChatCompletionRequestMessage.fromJson(e as Map<String, dynamic>)).toList(),
  model: OneOf2.parse(json['model'], fromA: (v) => v as String, fromB: (v) => ModelIdsSharedVariant2.fromJson(v as String),),
  modalities: (json['modalities'] as List<dynamic>?)?.map((e) => ResponseModalities2.fromJson(e as String)).toList(),
  verbosity: json['verbosity'] != null ? Verbosity.fromJson(json['verbosity'] as String) : null,
  reasoningEffort: json['reasoning_effort'] != null ? ReasoningEffort.fromJson(json['reasoning_effort'] as String) : null,
  maxCompletionTokens: json['max_completion_tokens'] != null ? (json['max_completion_tokens'] as num).toInt() : null,
  frequencyPenalty: json.containsKey('frequency_penalty') ? json['frequency_penalty'] != null ? (json['frequency_penalty'] as num).toDouble() : null : 0.0,
  presencePenalty: json.containsKey('presence_penalty') ? json['presence_penalty'] != null ? (json['presence_penalty'] as num).toDouble() : null : 0.0,
  webSearchOptions: json['web_search_options'] != null ? CreateChatCompletionRequestWebSearchOptions.fromJson(json['web_search_options'] as Map<String, dynamic>) : null,
  responseFormat: json['response_format'] != null ? CreateChatCompletionRequestResponseFormat.fromJson(json['response_format'] as Map<String, dynamic>) : null,
  audio: json['audio'] != null ? CreateChatCompletionRequestAudio.fromJson(json['audio'] as Map<String, dynamic>) : null,
  store: json.containsKey('store') ? json['store'] as bool? : false,
  stream: json.containsKey('stream') ? json['stream'] as bool? : false,
  stop: json['stop'] != null ? OneOf2.parse(json['stop'], fromA: (v) => v as String, fromB: (v) => (v as List<dynamic>).map((e) => e as String).toList(),) : null,
  logitBias: (json['logit_bias'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, (v as num).toInt())),
  logprobs: json.containsKey('logprobs') ? json['logprobs'] as bool? : false,
  maxTokens: json['max_tokens'] != null ? (json['max_tokens'] as num).toInt() : null,
  n: json.containsKey('n') ? json['n'] != null ? (json['n'] as num).toInt() : null : 1,
  prediction: json['prediction'] != null ? PredictionContent.fromJson(json['prediction'] as Map<String, dynamic>) : null,
  seed: json['seed'] != null ? (json['seed'] as num).toInt() : null,
  streamOptions: json['stream_options'] != null ? ChatCompletionStreamOptions.fromJson(json['stream_options'] as Map<String, dynamic>) : null,
  tools: (json['tools'] as List<dynamic>?)?.map((e) => OneOf2.parse(e, fromA: (v) => ChatCompletionTool.fromJson(v as Map<String, dynamic>), fromB: (v) => CustomToolChatCompletions.fromJson(v as Map<String, dynamic>),)).toList(),
  toolChoice: json['tool_choice'] != null ? OneOf4.parse(json['tool_choice'], fromA: (v) => ToolChoiceMode.fromJson(v as String), fromB: (v) => ChatCompletionAllowedToolsChoice.fromJson(v as Map<String, dynamic>), fromC: (v) => ChatCompletionNamedToolChoice.fromJson(v as Map<String, dynamic>), fromD: (v) => ChatCompletionNamedToolChoiceCustom.fromJson(v as Map<String, dynamic>),) : null,
  parallelToolCalls: json['parallel_tool_calls'] != null ? ParallelToolCalls.fromJson(json['parallel_tool_calls'] as bool) : null,
  functionCall: json['function_call'] != null ? OneOf2.parse(json['function_call'], fromA: (v) => CreateChatCompletionRequestFunctionCallVariant1.fromJson(v as String), fromB: (v) => ChatCompletionFunctionCallOption.fromJson(v as Map<String, dynamic>),) : null,
  functions: (json['functions'] as List<dynamic>?)?.map((e) => ChatCompletionFunctions.fromJson(e as Map<String, dynamic>)).toList(),
); }

final Map<String,String>? metadata;

/// An integer between 0 and 20 specifying the number of most likely tokens to
/// return at each token position, each with an associated log probability.
/// `logprobs` must be set to `true` if this parameter is used.
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
final CreateChatCompletionRequestPromptCacheRetention? promptCacheRetention;

/// A list of messages comprising the conversation so far. Depending on the
/// [model](/docs/models) you use, different message types (modalities) are
/// supported, like [text](/docs/guides/text-generation),
/// [images](/docs/guides/vision), and [audio](/docs/guides/audio).
/// 
final List<ChatCompletionRequestMessage> messages;

/// Model ID used to generate the response, like `gpt-4o` or `o3`. OpenAI
/// offers a wide range of models with different capabilities, performance
/// characteristics, and price points. Refer to the [model guide](/docs/models)
/// to browse and compare available models.
/// 
final ModelIdsShared model;

final List<ResponseModalities2>? modalities;

final Verbosity? verbosity;

final ReasoningEffort? reasoningEffort;

/// An upper bound for the number of tokens that can be generated for a completion, including visible output tokens and [reasoning tokens](/docs/guides/reasoning).
/// 
final int? maxCompletionTokens;

/// Number between -2.0 and 2.0. Positive values penalize new tokens based on
/// their existing frequency in the text so far, decreasing the model's
/// likelihood to repeat the same line verbatim.
/// 
final double? frequencyPenalty;

/// Number between -2.0 and 2.0. Positive values penalize new tokens based on
/// whether they appear in the text so far, increasing the model's likelihood
/// to talk about new topics.
/// 
final double? presencePenalty;

/// This tool searches the web for relevant results to use in a response.
/// Learn more about the [web search tool](/docs/guides/tools-web-search?api-mode=chat).
/// 
final CreateChatCompletionRequestWebSearchOptions? webSearchOptions;

/// An object specifying the format that the model must output.
/// 
/// Setting to `{ "type": "json_schema", "json_schema": {...} }` enables
/// Structured Outputs which ensures the model will match your supplied JSON
/// schema. Learn more in the [Structured Outputs
/// guide](/docs/guides/structured-outputs).
/// 
/// Setting to `{ "type": "json_object" }` enables the older JSON mode, which
/// ensures the message the model generates is valid JSON. Using `json_schema`
/// is preferred for models that support it.
/// 
final CreateChatCompletionRequestResponseFormat? responseFormat;

/// Parameters for audio output. Required when audio output is requested with
/// `modalities: ["audio"]`. [Learn more](/docs/guides/audio).
/// 
final CreateChatCompletionRequestAudio? audio;

/// Whether or not to store the output of this chat completion request for
/// use in our [model distillation](/docs/guides/distillation) or
/// [evals](/docs/guides/evals) products.
/// 
/// Supports text and image inputs. Note: image inputs over 8MB will be dropped.
/// 
final bool? store;

/// If set to true, the model response data will be streamed to the client
/// as it is generated using [server-sent events](https://developer.mozilla.org/en-US/docs/Web/API/Server-sent_events/Using_server-sent_events#Event_stream_format).
/// See the [Streaming section below](/docs/api-reference/chat/streaming)
/// for more information, along with the [streaming responses](/docs/guides/streaming-responses)
/// guide for more information on how to handle the streaming events.
/// 
final bool? stream;

final StopConfiguration? stop;

/// Modify the likelihood of specified tokens appearing in the completion.
/// 
/// Accepts a JSON object that maps tokens (specified by their token ID in the
/// tokenizer) to an associated bias value from -100 to 100. Mathematically,
/// the bias is added to the logits generated by the model prior to sampling.
/// The exact effect will vary per model, but values between -1 and 1 should
/// decrease or increase likelihood of selection; values like -100 or 100
/// should result in a ban or exclusive selection of the relevant token.
/// 
final Map<String,int>? logitBias;

/// Whether to return log probabilities of the output tokens or not. If true,
/// returns the log probabilities of each output token returned in the
/// `content` of `message`.
/// 
final bool? logprobs;

/// The maximum number of [tokens](/tokenizer) that can be generated in the
/// chat completion. This value can be used to control
/// [costs](https://openai.com/api/pricing/) for text generated via API.
/// 
/// This value is now deprecated in favor of `max_completion_tokens`, and is
/// not compatible with [o-series models](/docs/guides/reasoning).
/// 
final int? maxTokens;

/// How many chat completion choices to generate for each input message. Note that you will be charged based on the number of generated tokens across all of the choices. Keep `n` as `1` to minimize costs.
final int? n;

/// Configuration for a [Predicted Output](/docs/guides/predicted-outputs),
/// which can greatly improve response times when large parts of the model
/// response are known ahead of time. This is most common when you are
/// regenerating a file with only minor changes to most of the content.
/// 
final PredictionContent? prediction;

/// This feature is in Beta.
/// If specified, our system will make a best effort to sample deterministically, such that repeated requests with the same `seed` and parameters should return the same result.
/// Determinism is not guaranteed, and you should refer to the `system_fingerprint` response parameter to monitor changes in the backend.
/// 
final int? seed;

final ChatCompletionStreamOptions? streamOptions;

/// A list of tools the model may call. You can provide either
/// [custom tools](/docs/guides/function-calling#custom-tools) or
/// [function tools](/docs/guides/function-calling).
/// 
final List<CreateChatCompletionRequestTools>? tools;

final ChatCompletionToolChoiceOption? toolChoice;

final ParallelToolCalls? parallelToolCalls;

/// Deprecated in favor of `tool_choice`.
/// 
/// Controls which (if any) function is called by the model.
/// 
/// `none` means the model will not call a function and instead generates a
/// message.
/// 
/// `auto` means the model can pick between generating a message or calling a
/// function.
/// 
/// Specifying a particular function via `{"name": "my_function"}` forces the
/// model to call that function.
/// 
/// `none` is the default when no functions are present. `auto` is the default
/// if functions are present.
/// 
final CreateChatCompletionRequestFunctionCall? functionCall;

/// Deprecated in favor of `tools`.
/// 
/// A list of functions the model may generate JSON inputs for.
/// 
final List<ChatCompletionFunctions>? functions;

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
  'messages': messages.map((e) => e.toJson()).toList(),
  'model': model.toJson(),
  if (modalities != null) 'modalities': modalities?.map((e) => e.toJson()).toList(),
  if (verbosity != null) 'verbosity': verbosity?.toJson(),
  if (reasoningEffort != null) 'reasoning_effort': reasoningEffort?.toJson(),
  'max_completion_tokens': ?maxCompletionTokens,
  'frequency_penalty': ?frequencyPenalty,
  'presence_penalty': ?presencePenalty,
  if (webSearchOptions != null) 'web_search_options': webSearchOptions?.toJson(),
  if (responseFormat != null) 'response_format': responseFormat?.toJson(),
  if (audio != null) 'audio': audio?.toJson(),
  'store': ?store,
  'stream': ?stream,
  if (stop != null) 'stop': stop?.toJson(),
  'logit_bias': ?logitBias,
  'logprobs': ?logprobs,
  'max_tokens': ?maxTokens,
  'n': ?n,
  if (prediction != null) 'prediction': prediction?.toJson(),
  'seed': ?seed,
  if (streamOptions != null) 'stream_options': streamOptions?.toJson(),
  if (tools != null) 'tools': tools?.map((e) => e.toJson()).toList(),
  if (toolChoice != null) 'tool_choice': toolChoice?.toJson(),
  if (parallelToolCalls != null) 'parallel_tool_calls': parallelToolCalls?.toJson(),
  if (functionCall != null) 'function_call': functionCall?.toJson(),
  if (functions != null) 'functions': functions?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('messages') &&
      json.containsKey('model'); } 
CreateChatCompletionRequest copyWith({Map<String, String>? Function()? metadata, int? Function()? topLogprobs, double? Function()? temperature, double? Function()? topP, String Function()? user, String Function()? safetyIdentifier, String Function()? promptCacheKey, ServiceTier? Function()? serviceTier, CreateChatCompletionRequestPromptCacheRetention? Function()? promptCacheRetention, List<ChatCompletionRequestMessage>? messages, ModelIdsShared? model, List<ResponseModalities2>? Function()? modalities, Verbosity? Function()? verbosity, ReasoningEffort? Function()? reasoningEffort, int? Function()? maxCompletionTokens, double? Function()? frequencyPenalty, double? Function()? presencePenalty, CreateChatCompletionRequestWebSearchOptions Function()? webSearchOptions, CreateChatCompletionRequestResponseFormat Function()? responseFormat, CreateChatCompletionRequestAudio? Function()? audio, bool? Function()? store, bool? Function()? stream, StopConfiguration Function()? stop, Map<String, int>? Function()? logitBias, bool? Function()? logprobs, int? Function()? maxTokens, int? Function()? n, PredictionContent? Function()? prediction, int? Function()? seed, ChatCompletionStreamOptions Function()? streamOptions, List<CreateChatCompletionRequestTools> Function()? tools, ChatCompletionToolChoiceOption Function()? toolChoice, ParallelToolCalls Function()? parallelToolCalls, CreateChatCompletionRequestFunctionCall Function()? functionCall, List<ChatCompletionFunctions> Function()? functions, }) { return CreateChatCompletionRequest(
  metadata: metadata != null ? metadata() : this.metadata,
  topLogprobs: topLogprobs != null ? topLogprobs() : this.topLogprobs,
  temperature: temperature != null ? temperature() : this.temperature,
  topP: topP != null ? topP() : this.topP,
  user: user != null ? user() : this.user,
  safetyIdentifier: safetyIdentifier != null ? safetyIdentifier() : this.safetyIdentifier,
  promptCacheKey: promptCacheKey != null ? promptCacheKey() : this.promptCacheKey,
  serviceTier: serviceTier != null ? serviceTier() : this.serviceTier,
  promptCacheRetention: promptCacheRetention != null ? promptCacheRetention() : this.promptCacheRetention,
  messages: messages ?? this.messages,
  model: model ?? this.model,
  modalities: modalities != null ? modalities() : this.modalities,
  verbosity: verbosity != null ? verbosity() : this.verbosity,
  reasoningEffort: reasoningEffort != null ? reasoningEffort() : this.reasoningEffort,
  maxCompletionTokens: maxCompletionTokens != null ? maxCompletionTokens() : this.maxCompletionTokens,
  frequencyPenalty: frequencyPenalty != null ? frequencyPenalty() : this.frequencyPenalty,
  presencePenalty: presencePenalty != null ? presencePenalty() : this.presencePenalty,
  webSearchOptions: webSearchOptions != null ? webSearchOptions() : this.webSearchOptions,
  responseFormat: responseFormat != null ? responseFormat() : this.responseFormat,
  audio: audio != null ? audio() : this.audio,
  store: store != null ? store() : this.store,
  stream: stream != null ? stream() : this.stream,
  stop: stop != null ? stop() : this.stop,
  logitBias: logitBias != null ? logitBias() : this.logitBias,
  logprobs: logprobs != null ? logprobs() : this.logprobs,
  maxTokens: maxTokens != null ? maxTokens() : this.maxTokens,
  n: n != null ? n() : this.n,
  prediction: prediction != null ? prediction() : this.prediction,
  seed: seed != null ? seed() : this.seed,
  streamOptions: streamOptions != null ? streamOptions() : this.streamOptions,
  tools: tools != null ? tools() : this.tools,
  toolChoice: toolChoice != null ? toolChoice() : this.toolChoice,
  parallelToolCalls: parallelToolCalls != null ? parallelToolCalls() : this.parallelToolCalls,
  functionCall: functionCall != null ? functionCall() : this.functionCall,
  functions: functions != null ? functions() : this.functions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateChatCompletionRequest &&
          metadata == other.metadata &&
          topLogprobs == other.topLogprobs &&
          temperature == other.temperature &&
          topP == other.topP &&
          user == other.user &&
          safetyIdentifier == other.safetyIdentifier &&
          promptCacheKey == other.promptCacheKey &&
          serviceTier == other.serviceTier &&
          promptCacheRetention == other.promptCacheRetention &&
          listEquals(messages, other.messages) &&
          model == other.model &&
          listEquals(modalities, other.modalities) &&
          verbosity == other.verbosity &&
          reasoningEffort == other.reasoningEffort &&
          maxCompletionTokens == other.maxCompletionTokens &&
          frequencyPenalty == other.frequencyPenalty &&
          presencePenalty == other.presencePenalty &&
          webSearchOptions == other.webSearchOptions &&
          responseFormat == other.responseFormat &&
          audio == other.audio &&
          store == other.store &&
          stream == other.stream &&
          stop == other.stop &&
          logitBias == other.logitBias &&
          logprobs == other.logprobs &&
          maxTokens == other.maxTokens &&
          n == other.n &&
          prediction == other.prediction &&
          seed == other.seed &&
          streamOptions == other.streamOptions &&
          listEquals(tools, other.tools) &&
          toolChoice == other.toolChoice &&
          parallelToolCalls == other.parallelToolCalls &&
          functionCall == other.functionCall &&
          listEquals(functions, other.functions); } 
@override int get hashCode { return Object.hashAll([metadata, topLogprobs, temperature, topP, user, safetyIdentifier, promptCacheKey, serviceTier, promptCacheRetention, Object.hashAll(messages), model, Object.hashAll(modalities ?? const []), verbosity, reasoningEffort, maxCompletionTokens, frequencyPenalty, presencePenalty, webSearchOptions, responseFormat, audio, store, stream, stop, logitBias, logprobs, maxTokens, n, prediction, seed, streamOptions, Object.hashAll(tools ?? const []), toolChoice, parallelToolCalls, functionCall, Object.hashAll(functions ?? const [])]); } 
@override String toString() { return 'CreateChatCompletionRequest(metadata: $metadata, topLogprobs: $topLogprobs, temperature: $temperature, topP: $topP, user: $user, safetyIdentifier: $safetyIdentifier, promptCacheKey: $promptCacheKey, serviceTier: $serviceTier, promptCacheRetention: $promptCacheRetention, messages: $messages, model: $model, modalities: $modalities, verbosity: $verbosity, reasoningEffort: $reasoningEffort, maxCompletionTokens: $maxCompletionTokens, frequencyPenalty: $frequencyPenalty, presencePenalty: $presencePenalty, webSearchOptions: $webSearchOptions, responseFormat: $responseFormat, audio: $audio, store: $store, stream: $stream, stop: $stop, logitBias: $logitBias, logprobs: $logprobs, maxTokens: $maxTokens, n: $n, prediction: $prediction, seed: $seed, streamOptions: $streamOptions, tools: $tools, toolChoice: $toolChoice, parallelToolCalls: $parallelToolCalls, functionCall: $functionCall, functions: $functions)'; } 
 }
