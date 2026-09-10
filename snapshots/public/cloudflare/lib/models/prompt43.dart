// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'prompt43_audio_variant1.dart';import 'prompt43_chat_template_kwargs.dart';import 'prompt43_function_call.dart';import 'prompt43_function_call_variant2.dart';import 'prompt43_functions.dart';import 'prompt43_prediction_content.dart';import 'prompt43_response_format_variant1.dart';import 'prompt43_response_format_variant1_json_object.dart';import 'prompt43_response_format_variant1_json_schema.dart';import 'prompt43_response_format_variant1_text.dart';import 'prompt43_stop.dart';import 'prompt43_stream_options_variant1.dart';import 'prompt43_tool_choice_variant1.dart';import 'prompt43_tool_choice_variant1_allowed_tools.dart';import 'prompt43_tool_choice_variant1_custom.dart';import 'prompt43_tool_choice_variant1_function.dart';import 'prompt43_tools.dart';import 'prompt43_tools_custom.dart';import 'prompt43_tools_function.dart';import 'prompt43_web_search_options_variant1.dart';@immutable final class Prompt43Modalities {const Prompt43Modalities._(this.value);

factory Prompt43Modalities.fromJson(String json) { return switch (json) {
  'text' => text,
  'audio' => audio,
  _ => Prompt43Modalities._(json),
}; }

static const Prompt43Modalities text = Prompt43Modalities._('text');

static const Prompt43Modalities audio = Prompt43Modalities._('audio');

static const List<Prompt43Modalities> values = [text, audio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Prompt43Modalities && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Prompt43Modalities($value)'; } 
 }
@immutable final class Prompt43ReasoningEffort {const Prompt43ReasoningEffort._(this.value);

factory Prompt43ReasoningEffort.fromJson(String json) { return switch (json) {
  'low' => low,
  'medium' => medium,
  'high' => high,
  _ => Prompt43ReasoningEffort._(json),
}; }

static const Prompt43ReasoningEffort low = Prompt43ReasoningEffort._('low');

static const Prompt43ReasoningEffort medium = Prompt43ReasoningEffort._('medium');

static const Prompt43ReasoningEffort high = Prompt43ReasoningEffort._('high');

static const List<Prompt43ReasoningEffort> values = [low, medium, high];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Prompt43ReasoningEffort && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Prompt43ReasoningEffort($value)'; } 
 }
@immutable final class Prompt43ServiceTier {const Prompt43ServiceTier._(this.value);

factory Prompt43ServiceTier.fromJson(String json) { return switch (json) {
  'auto' => auto,
  'default' => $default,
  'flex' => flex,
  'scale' => scale,
  'priority' => priority,
  _ => Prompt43ServiceTier._(json),
}; }

static const Prompt43ServiceTier auto = Prompt43ServiceTier._('auto');

static const Prompt43ServiceTier $default = Prompt43ServiceTier._('default');

static const Prompt43ServiceTier flex = Prompt43ServiceTier._('flex');

static const Prompt43ServiceTier scale = Prompt43ServiceTier._('scale');

static const Prompt43ServiceTier priority = Prompt43ServiceTier._('priority');

static const List<Prompt43ServiceTier> values = [auto, $default, flex, scale, priority];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is Prompt43ServiceTier && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'Prompt43ServiceTier($value)'; } 
 }
@immutable final class Prompt43 {const Prompt43({required this.prompt, this.audio, this.chatTemplateKwargs, this.frequencyPenalty = const Omittable.absent(), this.functionCall, this.functions, this.logitBias = const Omittable.absent(), this.logprobs = const Omittable.absent(), this.maxCompletionTokens = const Omittable.absent(), this.maxTokens = const Omittable.absent(), this.metadata = const Omittable.absent(), this.modalities = const Omittable.absent(), this.model, this.n = const Omittable.absent(), this.parallelToolCalls = true, this.prediction, this.presencePenalty = const Omittable.absent(), this.reasoningEffort = const Omittable.absent(), this.responseFormat, this.seed = const Omittable.absent(), this.serviceTier = const Omittable.absent(), this.stop, this.store = const Omittable.absent(), this.stream = const Omittable.absent(), this.streamOptions, this.temperature = const Omittable.absent(), this.toolChoice, this.tools, this.topLogprobs = const Omittable.absent(), this.topP = const Omittable.absent(), this.user, this.webSearchOptions, });

factory Prompt43.fromJson(Map<String, dynamic> json) { return Prompt43(
  audio: json['audio'] != null ? Prompt43AudioVariant1.fromJson(json['audio'] as Map<String, dynamic>) : null,
  chatTemplateKwargs: json['chat_template_kwargs'] != null ? Prompt43ChatTemplateKwargs.fromJson(json['chat_template_kwargs'] as Map<String, dynamic>) : null,
  frequencyPenalty: json.containsKey('frequency_penalty') ? Omittable(json['frequency_penalty'] != null ? (json['frequency_penalty'] as num).toDouble() : null) : const Omittable.absent(),
  functionCall: json['function_call'] != null ? OneOf2.parse(json['function_call'], fromA: (v) => Prompt43FunctionCallVariant1.fromJson(v as String), fromB: (v) => Prompt43FunctionCallVariant2.fromJson(v as Map<String, dynamic>),) : null,
  functions: (json['functions'] as List<dynamic>?)?.map((e) => Prompt43Functions.fromJson(e as Map<String, dynamic>)).toList(),
  logitBias: json.containsKey('logit_bias') ? Omittable(json['logit_bias'] as Map<String, dynamic>?) : const Omittable.absent(),
  logprobs: json.containsKey('logprobs') ? Omittable(json['logprobs'] as bool?) : const Omittable.absent(),
  maxCompletionTokens: json.containsKey('max_completion_tokens') ? Omittable(json['max_completion_tokens'] != null ? (json['max_completion_tokens'] as num).toInt() : null) : const Omittable.absent(),
  maxTokens: json.containsKey('max_tokens') ? Omittable(json['max_tokens'] != null ? (json['max_tokens'] as num).toInt() : null) : const Omittable.absent(),
  metadata: json.containsKey('metadata') ? Omittable(json['metadata'] as Map<String, dynamic>?) : const Omittable.absent(),
  modalities: json.containsKey('modalities') ? Omittable((json['modalities'] as List<dynamic>?)?.map((e) => Prompt43Modalities.fromJson(e as String)).toList()) : const Omittable.absent(),
  model: json['model'] as String?,
  n: json.containsKey('n') ? Omittable(json['n'] != null ? (json['n'] as num).toInt() : null) : const Omittable.absent(),
  parallelToolCalls: json.containsKey('parallel_tool_calls') ? json['parallel_tool_calls'] as bool : true,
  prediction: json['prediction'] != null ? Prompt43PredictionContent.fromJson(json['prediction'] as Map<String, dynamic>) : null,
  presencePenalty: json.containsKey('presence_penalty') ? Omittable(json['presence_penalty'] != null ? (json['presence_penalty'] as num).toDouble() : null) : const Omittable.absent(),
  prompt: json['prompt'] as String,
  reasoningEffort: json.containsKey('reasoning_effort') ? Omittable(json['reasoning_effort'] != null ? Prompt43ReasoningEffort.fromJson(json['reasoning_effort'] as String) : null) : const Omittable.absent(),
  responseFormat: json['response_format'] != null ? OneOf3.parse(json['response_format'], fromA: (v) => Prompt43ResponseFormatVariant1Text.fromJson(v as Map<String, dynamic>), fromB: (v) => Prompt43ResponseFormatVariant1JsonObject.fromJson(v as Map<String, dynamic>), fromC: (v) => Prompt43ResponseFormatVariant1JsonSchema.fromJson(v as Map<String, dynamic>),) : null,
  seed: json.containsKey('seed') ? Omittable(json['seed'] != null ? (json['seed'] as num).toInt() : null) : const Omittable.absent(),
  serviceTier: json.containsKey('service_tier') ? Omittable(json['service_tier'] != null ? Prompt43ServiceTier.fromJson(json['service_tier'] as String) : null) : const Omittable.absent(),
  stop: json['stop'] != null ? OneOf2.parse(json['stop'], fromA: (v) => v as String, fromB: (v) => (v as List<dynamic>).map((e) => e as String).toList(),) : null,
  store: json.containsKey('store') ? Omittable(json['store'] as bool?) : const Omittable.absent(),
  stream: json.containsKey('stream') ? Omittable(json['stream'] as bool?) : const Omittable.absent(),
  streamOptions: json['stream_options'] != null ? Prompt43StreamOptionsVariant1.fromJson(json['stream_options'] as Map<String, dynamic>) : null,
  temperature: json.containsKey('temperature') ? Omittable(json['temperature'] != null ? (json['temperature'] as num).toDouble() : null) : const Omittable.absent(),
  toolChoice: json['tool_choice'] != null ? OneOf4.parse(json['tool_choice'], fromA: (v) => Prompt43ToolChoiceVariant1Variant1.fromJson(v as String), fromB: (v) => Prompt43ToolChoiceVariant1Function.fromJson(v as Map<String, dynamic>), fromC: (v) => Prompt43ToolChoiceVariant1Custom.fromJson(v as Map<String, dynamic>), fromD: (v) => Prompt43ToolChoiceVariant1AllowedTools.fromJson(v as Map<String, dynamic>),) : null,
  tools: (json['tools'] as List<dynamic>?)?.map((e) => OneOf2.parse(e, fromA: (v) => Prompt43ToolsFunction.fromJson(v as Map<String, dynamic>), fromB: (v) => Prompt43ToolsCustom.fromJson(v as Map<String, dynamic>),)).toList(),
  topLogprobs: json.containsKey('top_logprobs') ? Omittable(json['top_logprobs'] != null ? (json['top_logprobs'] as num).toInt() : null) : const Omittable.absent(),
  topP: json.containsKey('top_p') ? Omittable(json['top_p'] != null ? (json['top_p'] as num).toDouble() : null) : const Omittable.absent(),
  user: json['user'] as String?,
  webSearchOptions: json['web_search_options'] != null ? Prompt43WebSearchOptionsVariant1.fromJson(json['web_search_options'] as Map<String, dynamic>) : null,
); }

/// Parameters for audio output. Required when modalities includes 'audio'.
final Prompt43AudioVariant1? audio;

final Prompt43ChatTemplateKwargs? chatTemplateKwargs;

final Omittable<double?> frequencyPenalty;

final Prompt43FunctionCall? functionCall;

final List<Prompt43Functions>? functions;

final Omittable<Map<String,dynamic>?> logitBias;

final Omittable<bool?> logprobs;

final Omittable<int?> maxCompletionTokens;

final Omittable<int?> maxTokens;

final Omittable<Map<String,dynamic>?> metadata;

final Omittable<List<Prompt43Modalities>?> modalities;

/// ID of the model to use (e.g. '@cf/zai-org/glm-4.7-flash, etc').
final String? model;

final Omittable<int?> n;

/// Whether to enable parallel function calling during tool use.
final bool parallelToolCalls;

final Prompt43PredictionContent? prediction;

final Omittable<double?> presencePenalty;

/// The input text prompt for the model to generate a response.
final String prompt;

final Omittable<Prompt43ReasoningEffort?> reasoningEffort;

/// Specifies the format the model must output.
final Prompt43ResponseFormatVariant1? responseFormat;

final Omittable<int?> seed;

final Omittable<Prompt43ServiceTier?> serviceTier;

final Prompt43Stop? stop;

final Omittable<bool?> store;

final Omittable<bool?> stream;

final Prompt43StreamOptionsVariant1? streamOptions;

final Omittable<double?> temperature;

/// Controls which (if any) tool is called by the model. 'none' = no tools, 'auto' = model decides, 'required' = must call a tool.
final Prompt43ToolChoiceVariant1? toolChoice;

/// A list of tools the model may call.
final List<Prompt43Tools>? tools;

final Omittable<int?> topLogprobs;

final Omittable<double?> topP;

/// A unique identifier representing your end-user, for abuse monitoring.
final String? user;

/// Options for the web search tool (when using built-in web search).
final Prompt43WebSearchOptionsVariant1? webSearchOptions;

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
  if (metadata.isPresent) 'metadata': metadata.value,
  if (modalities.isPresent) 'modalities': modalities.value?.map((e) => e.toJson()).toList(),
  'model': ?model,
  if (n.isPresent) 'n': n.value,
  'parallel_tool_calls': parallelToolCalls,
  if (prediction != null) 'prediction': prediction?.toJson(),
  if (presencePenalty.isPresent) 'presence_penalty': presencePenalty.value,
  'prompt': prompt,
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
static bool canParse(Map<String, dynamic> json) { return json.containsKey('prompt') && json['prompt'] is String; } 
Prompt43 copyWith({Prompt43AudioVariant1? Function()? audio, Prompt43ChatTemplateKwargs? Function()? chatTemplateKwargs, Omittable<double?>? frequencyPenalty, Prompt43FunctionCall? Function()? functionCall, List<Prompt43Functions>? Function()? functions, Omittable<Map<String,dynamic>?>? logitBias, Omittable<bool?>? logprobs, Omittable<int?>? maxCompletionTokens, Omittable<int?>? maxTokens, Omittable<Map<String,dynamic>?>? metadata, Omittable<List<Prompt43Modalities>?>? modalities, String? Function()? model, Omittable<int?>? n, bool Function()? parallelToolCalls, Prompt43PredictionContent? Function()? prediction, Omittable<double?>? presencePenalty, String? prompt, Omittable<Prompt43ReasoningEffort?>? reasoningEffort, Prompt43ResponseFormatVariant1? Function()? responseFormat, Omittable<int?>? seed, Omittable<Prompt43ServiceTier?>? serviceTier, Prompt43Stop? Function()? stop, Omittable<bool?>? store, Omittable<bool?>? stream, Prompt43StreamOptionsVariant1? Function()? streamOptions, Omittable<double?>? temperature, Prompt43ToolChoiceVariant1? Function()? toolChoice, List<Prompt43Tools>? Function()? tools, Omittable<int?>? topLogprobs, Omittable<double?>? topP, String? Function()? user, Prompt43WebSearchOptionsVariant1? Function()? webSearchOptions, }) { return Prompt43(
  audio: audio != null ? audio() : this.audio,
  chatTemplateKwargs: chatTemplateKwargs != null ? chatTemplateKwargs() : this.chatTemplateKwargs,
  frequencyPenalty: frequencyPenalty ?? this.frequencyPenalty,
  functionCall: functionCall != null ? functionCall() : this.functionCall,
  functions: functions != null ? functions() : this.functions,
  logitBias: logitBias ?? this.logitBias,
  logprobs: logprobs ?? this.logprobs,
  maxCompletionTokens: maxCompletionTokens ?? this.maxCompletionTokens,
  maxTokens: maxTokens ?? this.maxTokens,
  metadata: metadata ?? this.metadata,
  modalities: modalities ?? this.modalities,
  model: model != null ? model() : this.model,
  n: n ?? this.n,
  parallelToolCalls: parallelToolCalls != null ? parallelToolCalls() : this.parallelToolCalls,
  prediction: prediction != null ? prediction() : this.prediction,
  presencePenalty: presencePenalty ?? this.presencePenalty,
  prompt: prompt ?? this.prompt,
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
      other is Prompt43 &&
          audio == other.audio &&
          chatTemplateKwargs == other.chatTemplateKwargs &&
          frequencyPenalty == other.frequencyPenalty &&
          functionCall == other.functionCall &&
          listEquals(functions, other.functions) &&
          logitBias == other.logitBias &&
          logprobs == other.logprobs &&
          maxCompletionTokens == other.maxCompletionTokens &&
          maxTokens == other.maxTokens &&
          metadata == other.metadata &&
          modalities.isPresent == other.modalities.isPresent &&
          listEquals(modalities.value, other.modalities.value) &&
          model == other.model &&
          n == other.n &&
          parallelToolCalls == other.parallelToolCalls &&
          prediction == other.prediction &&
          presencePenalty == other.presencePenalty &&
          prompt == other.prompt &&
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
@override int get hashCode { return Object.hashAll([audio, chatTemplateKwargs, frequencyPenalty, functionCall, Object.hashAll(functions ?? const []), logitBias, logprobs, maxCompletionTokens, maxTokens, metadata, Object.hashAll(modalities.value ?? const []), model, n, parallelToolCalls, prediction, presencePenalty, prompt, reasoningEffort, responseFormat, seed, serviceTier, stop, store, stream, streamOptions, temperature, toolChoice, Object.hashAll(tools ?? const []), topLogprobs, topP, user, webSearchOptions]); } 
@override String toString() { return 'Prompt43(audio: $audio, chatTemplateKwargs: $chatTemplateKwargs, frequencyPenalty: $frequencyPenalty, functionCall: $functionCall, functions: $functions, logitBias: $logitBias, logprobs: $logprobs, maxCompletionTokens: $maxCompletionTokens, maxTokens: $maxTokens, metadata: $metadata, modalities: $modalities, model: $model, n: $n, parallelToolCalls: $parallelToolCalls, prediction: $prediction, presencePenalty: $presencePenalty, prompt: $prompt, reasoningEffort: $reasoningEffort, responseFormat: $responseFormat, seed: $seed, serviceTier: $serviceTier, stop: $stop, store: $store, stream: $stream, streamOptions: $streamOptions, temperature: $temperature, toolChoice: $toolChoice, tools: $tools, topLogprobs: $topLogprobs, topP: $topP, user: $user, webSearchOptions: $webSearchOptions)'; } 
 }
