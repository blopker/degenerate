// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'messages51_audio_variant1.dart';import 'messages51_chat_template_kwargs.dart';import 'messages51_function_call.dart';import 'messages51_function_call_variant2.dart';import 'messages51_functions.dart';import 'messages51_messages.dart';import 'messages51_messages_assistant.dart';import 'messages51_messages_developer.dart';import 'messages51_messages_function.dart';import 'messages51_messages_system.dart';import 'messages51_messages_tool.dart';import 'messages51_messages_user.dart';import 'messages51_prediction_content.dart';import 'messages51_response_format_variant1.dart';import 'messages51_response_format_variant1_json_object.dart';import 'messages51_response_format_variant1_json_schema.dart';import 'messages51_response_format_variant1_text.dart';import 'messages51_stop.dart';import 'messages51_stream_options_variant1.dart';import 'messages51_tool_choice_variant1.dart';import 'messages51_tool_choice_variant1_allowed_tools.dart';import 'messages51_tool_choice_variant1_custom.dart';import 'messages51_tool_choice_variant1_function.dart';import 'messages51_tools.dart';import 'messages51_tools_custom.dart';import 'messages51_tools_function.dart';import 'messages51_web_search_options_variant1.dart';@immutable final class Messages51Modalities {const Messages51Modalities._(this.value);

factory Messages51Modalities.fromJson(String json) { return switch (json) {
  'text' => text,
  'audio' => audio,
  _ => Messages51Modalities._(json),
}; }

static const Messages51Modalities text = Messages51Modalities._('text');

static const Messages51Modalities audio = Messages51Modalities._('audio');

static const List<Messages51Modalities> values = [text, audio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages51Modalities && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages51Modalities($value)'; } 
 }
@immutable final class Messages51ReasoningEffort {const Messages51ReasoningEffort._(this.value);

factory Messages51ReasoningEffort.fromJson(String json) { return switch (json) {
  'low' => low,
  'medium' => medium,
  'high' => high,
  _ => Messages51ReasoningEffort._(json),
}; }

static const Messages51ReasoningEffort low = Messages51ReasoningEffort._('low');

static const Messages51ReasoningEffort medium = Messages51ReasoningEffort._('medium');

static const Messages51ReasoningEffort high = Messages51ReasoningEffort._('high');

static const List<Messages51ReasoningEffort> values = [low, medium, high];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages51ReasoningEffort && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages51ReasoningEffort($value)'; } 
 }
@immutable final class Messages51ServiceTier {const Messages51ServiceTier._(this.value);

factory Messages51ServiceTier.fromJson(String json) { return switch (json) {
  'auto' => auto,
  'default' => $default,
  'flex' => flex,
  'scale' => scale,
  'priority' => priority,
  _ => Messages51ServiceTier._(json),
}; }

static const Messages51ServiceTier auto = Messages51ServiceTier._('auto');

static const Messages51ServiceTier $default = Messages51ServiceTier._('default');

static const Messages51ServiceTier flex = Messages51ServiceTier._('flex');

static const Messages51ServiceTier scale = Messages51ServiceTier._('scale');

static const Messages51ServiceTier priority = Messages51ServiceTier._('priority');

static const List<Messages51ServiceTier> values = [auto, $default, flex, scale, priority];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Messages51ServiceTier && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Messages51ServiceTier($value)'; } 
 }
@immutable final class Messages51 {const Messages51({required this.messages, this.audio, this.chatTemplateKwargs, this.frequencyPenalty = const Omittable.absent(), this.functionCall, this.functions, this.logitBias = const Omittable.absent(), this.logprobs = const Omittable.absent(), this.maxCompletionTokens = const Omittable.absent(), this.maxTokens = const Omittable.absent(), this.metadata = const Omittable.absent(), this.modalities = const Omittable.absent(), this.model, this.n = const Omittable.absent(), this.parallelToolCalls = true, this.prediction, this.presencePenalty = const Omittable.absent(), this.reasoningEffort = const Omittable.absent(), this.responseFormat, this.seed = const Omittable.absent(), this.serviceTier = const Omittable.absent(), this.stop, this.store = const Omittable.absent(), this.stream = const Omittable.absent(), this.streamOptions, this.temperature = const Omittable.absent(), this.toolChoice, this.tools, this.topLogprobs = const Omittable.absent(), this.topP = const Omittable.absent(), this.user, this.webSearchOptions, });

factory Messages51.fromJson(Map<String, dynamic> json) { return Messages51(
  audio: json['audio'] != null ? Messages51AudioVariant1.fromJson(json['audio'] as Map<String, dynamic>) : null,
  chatTemplateKwargs: json['chat_template_kwargs'] != null ? Messages51ChatTemplateKwargs.fromJson(json['chat_template_kwargs'] as Map<String, dynamic>) : null,
  frequencyPenalty: json.containsKey('frequency_penalty') ? Omittable(json['frequency_penalty'] != null ? (json['frequency_penalty'] as num).toDouble() : null) : const Omittable.absent(),
  functionCall: json['function_call'] != null ? OneOf2.parse(json['function_call'], fromA: (v) => Messages51FunctionCallVariant1.fromJson(v as String), fromB: (v) => Messages51FunctionCallVariant2.fromJson(v as Map<String, dynamic>),) : null,
  functions: (json['functions'] as List<dynamic>?)?.map((e) => Messages51Functions.fromJson(e as Map<String, dynamic>)).toList(),
  logitBias: json.containsKey('logit_bias') ? Omittable(json['logit_bias'] as Map<String, dynamic>?) : const Omittable.absent(),
  logprobs: json.containsKey('logprobs') ? Omittable(json['logprobs'] as bool?) : const Omittable.absent(),
  maxCompletionTokens: json.containsKey('max_completion_tokens') ? Omittable(json['max_completion_tokens'] != null ? (json['max_completion_tokens'] as num).toInt() : null) : const Omittable.absent(),
  maxTokens: json.containsKey('max_tokens') ? Omittable(json['max_tokens'] != null ? (json['max_tokens'] as num).toInt() : null) : const Omittable.absent(),
  messages: (json['messages'] as List<dynamic>).map((e) => OneOf6.parse(e, fromA: (v) => Messages51MessagesDeveloper.fromJson(v as Map<String, dynamic>), fromB: (v) => Messages51MessagesSystem.fromJson(v as Map<String, dynamic>), fromC: (v) => Messages51MessagesUser.fromJson(v as Map<String, dynamic>), fromD: (v) => Messages51MessagesAssistant.fromJson(v as Map<String, dynamic>), fromE: (v) => Messages51MessagesTool.fromJson(v as Map<String, dynamic>), fromF: (v) => Messages51MessagesFunction.fromJson(v as Map<String, dynamic>),)).toList(),
  metadata: json.containsKey('metadata') ? Omittable(json['metadata'] as Map<String, dynamic>?) : const Omittable.absent(),
  modalities: json.containsKey('modalities') ? Omittable((json['modalities'] as List<dynamic>?)?.map((e) => Messages51Modalities.fromJson(e as String)).toList()) : const Omittable.absent(),
  model: json['model'] as String?,
  n: json.containsKey('n') ? Omittable(json['n'] != null ? (json['n'] as num).toInt() : null) : const Omittable.absent(),
  parallelToolCalls: json.containsKey('parallel_tool_calls') ? json['parallel_tool_calls'] as bool : true,
  prediction: json['prediction'] != null ? Messages51PredictionContent.fromJson(json['prediction'] as Map<String, dynamic>) : null,
  presencePenalty: json.containsKey('presence_penalty') ? Omittable(json['presence_penalty'] != null ? (json['presence_penalty'] as num).toDouble() : null) : const Omittable.absent(),
  reasoningEffort: json.containsKey('reasoning_effort') ? Omittable(json['reasoning_effort'] != null ? Messages51ReasoningEffort.fromJson(json['reasoning_effort'] as String) : null) : const Omittable.absent(),
  responseFormat: json['response_format'] != null ? OneOf3.parse(json['response_format'], fromA: (v) => Messages51ResponseFormatVariant1Text.fromJson(v as Map<String, dynamic>), fromB: (v) => Messages51ResponseFormatVariant1JsonObject.fromJson(v as Map<String, dynamic>), fromC: (v) => Messages51ResponseFormatVariant1JsonSchema.fromJson(v as Map<String, dynamic>),) : null,
  seed: json.containsKey('seed') ? Omittable(json['seed'] != null ? (json['seed'] as num).toInt() : null) : const Omittable.absent(),
  serviceTier: json.containsKey('service_tier') ? Omittable(json['service_tier'] != null ? Messages51ServiceTier.fromJson(json['service_tier'] as String) : null) : const Omittable.absent(),
  stop: json['stop'] != null ? OneOf2.parse(json['stop'], fromA: (v) => v as String, fromB: (v) => (v as List<dynamic>).map((e) => e as String).toList(),) : null,
  store: json.containsKey('store') ? Omittable(json['store'] as bool?) : const Omittable.absent(),
  stream: json.containsKey('stream') ? Omittable(json['stream'] as bool?) : const Omittable.absent(),
  streamOptions: json['stream_options'] != null ? Messages51StreamOptionsVariant1.fromJson(json['stream_options'] as Map<String, dynamic>) : null,
  temperature: json.containsKey('temperature') ? Omittable(json['temperature'] != null ? (json['temperature'] as num).toDouble() : null) : const Omittable.absent(),
  toolChoice: json['tool_choice'] != null ? OneOf4.parse(json['tool_choice'], fromA: (v) => Messages51ToolChoiceVariant1Variant1.fromJson(v as String), fromB: (v) => Messages51ToolChoiceVariant1Function.fromJson(v as Map<String, dynamic>), fromC: (v) => Messages51ToolChoiceVariant1Custom.fromJson(v as Map<String, dynamic>), fromD: (v) => Messages51ToolChoiceVariant1AllowedTools.fromJson(v as Map<String, dynamic>),) : null,
  tools: (json['tools'] as List<dynamic>?)?.map((e) => OneOf2.parse(e, fromA: (v) => Messages51ToolsFunction.fromJson(v as Map<String, dynamic>), fromB: (v) => Messages51ToolsCustom.fromJson(v as Map<String, dynamic>),)).toList(),
  topLogprobs: json.containsKey('top_logprobs') ? Omittable(json['top_logprobs'] != null ? (json['top_logprobs'] as num).toInt() : null) : const Omittable.absent(),
  topP: json.containsKey('top_p') ? Omittable(json['top_p'] != null ? (json['top_p'] as num).toDouble() : null) : const Omittable.absent(),
  user: json['user'] as String?,
  webSearchOptions: json['web_search_options'] != null ? Messages51WebSearchOptionsVariant1.fromJson(json['web_search_options'] as Map<String, dynamic>) : null,
); }

/// Parameters for audio output. Required when modalities includes 'audio'.
final Messages51AudioVariant1? audio;

final Messages51ChatTemplateKwargs? chatTemplateKwargs;

final Omittable<double?> frequencyPenalty;

final Messages51FunctionCall? functionCall;

final List<Messages51Functions>? functions;

final Omittable<Map<String,dynamic>?> logitBias;

final Omittable<bool?> logprobs;

final Omittable<int?> maxCompletionTokens;

final Omittable<int?> maxTokens;

/// A list of messages comprising the conversation so far.
final List<Messages51Messages> messages;

final Omittable<Map<String,dynamic>?> metadata;

final Omittable<List<Messages51Modalities>?> modalities;

/// ID of the model to use (e.g. '@cf/zai-org/glm-4.7-flash, etc').
final String? model;

final Omittable<int?> n;

/// Whether to enable parallel function calling during tool use.
final bool parallelToolCalls;

final Messages51PredictionContent? prediction;

final Omittable<double?> presencePenalty;

final Omittable<Messages51ReasoningEffort?> reasoningEffort;

/// Specifies the format the model must output.
final Messages51ResponseFormatVariant1? responseFormat;

final Omittable<int?> seed;

final Omittable<Messages51ServiceTier?> serviceTier;

final Messages51Stop? stop;

final Omittable<bool?> store;

final Omittable<bool?> stream;

final Messages51StreamOptionsVariant1? streamOptions;

final Omittable<double?> temperature;

/// Controls which (if any) tool is called by the model. 'none' = no tools, 'auto' = model decides, 'required' = must call a tool.
final Messages51ToolChoiceVariant1? toolChoice;

/// A list of tools the model may call.
final List<Messages51Tools>? tools;

final Omittable<int?> topLogprobs;

final Omittable<double?> topP;

/// A unique identifier representing your end-user, for abuse monitoring.
final String? user;

/// Options for the web search tool (when using built-in web search).
final Messages51WebSearchOptionsVariant1? webSearchOptions;

Map<String, dynamic> toJson() { return {
  if (audio != null) 'audio': audio?.toJson(),
  if (chatTemplateKwargs != null) 'chat_template_kwargs': chatTemplateKwargs?.toJson(),
  if (frequencyPenalty.isPresent) 'frequency_penalty': frequencyPenalty.value,
  if (functionCall != null) 'function_call': functionCall?.toJson(),
  if (functions != null) 'functions': functions?.map((e) => e.toJson()).toList(),
  if (logitBias.isPresent) 'logit_bias': logitBias.value,
  if (logprobs.isPresent) 'logprobs': logprobs.value,
  if (maxCompletionTokens.isPresent) 'max_completion_tokens': maxCompletionTokens.value,
  if (maxTokens.isPresent) 'max_tokens': maxTokens.value,
  'messages': messages.map((e) => e.toJson()).toList(),
  if (metadata.isPresent) 'metadata': metadata.value,
  if (modalities.isPresent) 'modalities': modalities.value?.map((e) => e.toJson()).toList(),
  'model': ?model,
  if (n.isPresent) 'n': n.value,
  'parallel_tool_calls': parallelToolCalls,
  if (prediction != null) 'prediction': prediction?.toJson(),
  if (presencePenalty.isPresent) 'presence_penalty': presencePenalty.value,
  if (reasoningEffort.isPresent) 'reasoning_effort': reasoningEffort.value?.toJson(),
  if (responseFormat != null) 'response_format': responseFormat?.toJson(),
  if (seed.isPresent) 'seed': seed.value,
  if (serviceTier.isPresent) 'service_tier': serviceTier.value?.toJson(),
  if (stop != null) 'stop': stop?.toJson(),
  if (store.isPresent) 'store': store.value,
  if (stream.isPresent) 'stream': stream.value,
  if (streamOptions != null) 'stream_options': streamOptions?.toJson(),
  if (temperature.isPresent) 'temperature': temperature.value,
  if (toolChoice != null) 'tool_choice': toolChoice?.toJson(),
  if (tools != null) 'tools': tools?.map((e) => e.toJson()).toList(),
  if (topLogprobs.isPresent) 'top_logprobs': topLogprobs.value,
  if (topP.isPresent) 'top_p': topP.value,
  'user': ?user,
  if (webSearchOptions != null) 'web_search_options': webSearchOptions?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('messages'); } 
Messages51 copyWith({Messages51AudioVariant1? Function()? audio, Messages51ChatTemplateKwargs? Function()? chatTemplateKwargs, Omittable<double?>? frequencyPenalty, Messages51FunctionCall? Function()? functionCall, List<Messages51Functions>? Function()? functions, Omittable<Map<String,dynamic>?>? logitBias, Omittable<bool?>? logprobs, Omittable<int?>? maxCompletionTokens, Omittable<int?>? maxTokens, List<Messages51Messages>? messages, Omittable<Map<String,dynamic>?>? metadata, Omittable<List<Messages51Modalities>?>? modalities, String? Function()? model, Omittable<int?>? n, bool Function()? parallelToolCalls, Messages51PredictionContent? Function()? prediction, Omittable<double?>? presencePenalty, Omittable<Messages51ReasoningEffort?>? reasoningEffort, Messages51ResponseFormatVariant1? Function()? responseFormat, Omittable<int?>? seed, Omittable<Messages51ServiceTier?>? serviceTier, Messages51Stop? Function()? stop, Omittable<bool?>? store, Omittable<bool?>? stream, Messages51StreamOptionsVariant1? Function()? streamOptions, Omittable<double?>? temperature, Messages51ToolChoiceVariant1? Function()? toolChoice, List<Messages51Tools>? Function()? tools, Omittable<int?>? topLogprobs, Omittable<double?>? topP, String? Function()? user, Messages51WebSearchOptionsVariant1? Function()? webSearchOptions, }) { return Messages51(
  audio: audio != null ? audio() : this.audio,
  chatTemplateKwargs: chatTemplateKwargs != null ? chatTemplateKwargs() : this.chatTemplateKwargs,
  frequencyPenalty: frequencyPenalty ?? this.frequencyPenalty,
  functionCall: functionCall != null ? functionCall() : this.functionCall,
  functions: functions != null ? functions() : this.functions,
  logitBias: logitBias ?? this.logitBias,
  logprobs: logprobs ?? this.logprobs,
  maxCompletionTokens: maxCompletionTokens ?? this.maxCompletionTokens,
  maxTokens: maxTokens ?? this.maxTokens,
  messages: messages ?? this.messages,
  metadata: metadata ?? this.metadata,
  modalities: modalities ?? this.modalities,
  model: model != null ? model() : this.model,
  n: n ?? this.n,
  parallelToolCalls: parallelToolCalls != null ? parallelToolCalls() : this.parallelToolCalls,
  prediction: prediction != null ? prediction() : this.prediction,
  presencePenalty: presencePenalty ?? this.presencePenalty,
  reasoningEffort: reasoningEffort ?? this.reasoningEffort,
  responseFormat: responseFormat != null ? responseFormat() : this.responseFormat,
  seed: seed ?? this.seed,
  serviceTier: serviceTier ?? this.serviceTier,
  stop: stop != null ? stop() : this.stop,
  store: store ?? this.store,
  stream: stream ?? this.stream,
  streamOptions: streamOptions != null ? streamOptions() : this.streamOptions,
  temperature: temperature ?? this.temperature,
  toolChoice: toolChoice != null ? toolChoice() : this.toolChoice,
  tools: tools != null ? tools() : this.tools,
  topLogprobs: topLogprobs ?? this.topLogprobs,
  topP: topP ?? this.topP,
  user: user != null ? user() : this.user,
  webSearchOptions: webSearchOptions != null ? webSearchOptions() : this.webSearchOptions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages51 &&
          audio == other.audio &&
          chatTemplateKwargs == other.chatTemplateKwargs &&
          frequencyPenalty == other.frequencyPenalty &&
          functionCall == other.functionCall &&
          listEquals(functions, other.functions) &&
          logitBias == other.logitBias &&
          logprobs == other.logprobs &&
          maxCompletionTokens == other.maxCompletionTokens &&
          maxTokens == other.maxTokens &&
          listEquals(messages, other.messages) &&
          metadata == other.metadata &&
          modalities.isPresent == other.modalities.isPresent &&
          listEquals(modalities.value, other.modalities.value) &&
          model == other.model &&
          n == other.n &&
          parallelToolCalls == other.parallelToolCalls &&
          prediction == other.prediction &&
          presencePenalty == other.presencePenalty &&
          reasoningEffort == other.reasoningEffort &&
          responseFormat == other.responseFormat &&
          seed == other.seed &&
          serviceTier == other.serviceTier &&
          stop == other.stop &&
          store == other.store &&
          stream == other.stream &&
          streamOptions == other.streamOptions &&
          temperature == other.temperature &&
          toolChoice == other.toolChoice &&
          listEquals(tools, other.tools) &&
          topLogprobs == other.topLogprobs &&
          topP == other.topP &&
          user == other.user &&
          webSearchOptions == other.webSearchOptions; } 
@override int get hashCode { return Object.hashAll([audio, chatTemplateKwargs, frequencyPenalty, functionCall, Object.hashAll(functions ?? const []), logitBias, logprobs, maxCompletionTokens, maxTokens, Object.hashAll(messages), metadata, Object.hashAll(modalities.value ?? const []), model, n, parallelToolCalls, prediction, presencePenalty, reasoningEffort, responseFormat, seed, serviceTier, stop, store, stream, streamOptions, temperature, toolChoice, Object.hashAll(tools ?? const []), topLogprobs, topP, user, webSearchOptions]); } 
@override String toString() { return 'Messages51(audio: $audio, chatTemplateKwargs: $chatTemplateKwargs, frequencyPenalty: $frequencyPenalty, functionCall: $functionCall, functions: $functions, logitBias: $logitBias, logprobs: $logprobs, maxCompletionTokens: $maxCompletionTokens, maxTokens: $maxTokens, messages: $messages, metadata: $metadata, modalities: $modalities, model: $model, n: $n, parallelToolCalls: $parallelToolCalls, prediction: $prediction, presencePenalty: $presencePenalty, reasoningEffort: $reasoningEffort, responseFormat: $responseFormat, seed: $seed, serviceTier: $serviceTier, stop: $stop, store: $store, stream: $stream, streamOptions: $streamOptions, temperature: $temperature, toolChoice: $toolChoice, tools: $tools, topLogprobs: $topLogprobs, topP: $topP, user: $user, webSearchOptions: $webSearchOptions)'; } 
 }
