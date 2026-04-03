// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'messages13_functions.dart';import 'messages13_messages.dart';import 'messages13_tools.dart';import 'messages13_tools_variant1.dart';import 'messages13_tools_variant2.dart';@immutable final class Messages13 {const Messages13({required this.messages, this.frequencyPenalty, this.functions, this.guidedJson, this.maxTokens = 256, this.presencePenalty, this.raw = false, this.repetitionPenalty, this.seed, this.stream = false, this.temperature = 0.6, this.tools, this.topK, this.topP, });

factory Messages13.fromJson(Map<String, dynamic> json) { return Messages13(
  frequencyPenalty: json['frequency_penalty'] != null ? (json['frequency_penalty'] as num).toDouble() : null,
  functions: (json['functions'] as List<dynamic>?)?.map((e) => Messages13Functions.fromJson(e as Map<String, dynamic>)).toList(),
  guidedJson: (json['guided_json'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
  maxTokens: json.containsKey('max_tokens') ? (json['max_tokens'] as num).toInt() : 256,
  messages: (json['messages'] as List<dynamic>).map((e) => Messages13Messages.fromJson(e as Map<String, dynamic>)).toList(),
  presencePenalty: json['presence_penalty'] != null ? (json['presence_penalty'] as num).toDouble() : null,
  raw: json.containsKey('raw') ? json['raw'] as bool : false,
  repetitionPenalty: json['repetition_penalty'] != null ? (json['repetition_penalty'] as num).toDouble() : null,
  seed: json['seed'] != null ? (json['seed'] as num).toInt() : null,
  stream: json.containsKey('stream') ? json['stream'] as bool : false,
  temperature: json.containsKey('temperature') ? (json['temperature'] as num).toDouble() : 0.6,
  tools: (json['tools'] as List<dynamic>?)?.map((e) => OneOf2.parse(e, fromA: (v) => Messages13ToolsVariant1.fromJson(v as Map<String, dynamic>), fromB: (v) => Messages13ToolsVariant2.fromJson(v as Map<String, dynamic>),)).toList(),
  topK: json['top_k'] != null ? (json['top_k'] as num).toInt() : null,
  topP: json['top_p'] != null ? (json['top_p'] as num).toDouble() : null,
); }

/// Decreases the likelihood of the model repeating the same lines verbatim.
final double? frequencyPenalty;

final List<Messages13Functions>? functions;

/// JSON schema that should be fufilled for the response.
final Map<String,dynamic>? guidedJson;

/// The maximum number of tokens to generate in the response.
final int maxTokens;

/// An array of message objects representing the conversation history.
final List<Messages13Messages> messages;

/// Increases the likelihood of the model introducing new topics.
final double? presencePenalty;

/// If true, a chat template is not applied and you must adhere to the specific model's expected formatting.
final bool raw;

/// Penalty for repeated tokens; higher values discourage repetition.
final double? repetitionPenalty;

/// Random seed for reproducibility of the generation.
final int? seed;

/// If true, the response will be streamed back incrementally using SSE, Server Sent Events.
final bool stream;

/// Controls the randomness of the output; higher values produce more random results.
final double temperature;

/// A list of tools available for the assistant to use.
final List<Messages13Tools>? tools;

/// Limits the AI to choose from the top 'k' most probable words. Lower values make responses more focused; higher values introduce more variety and potential surprises.
final int? topK;

/// Adjusts the creativity of the AI's responses by controlling how many possible words it considers. Lower values make outputs more predictable; higher values allow for more varied and creative responses.
final double? topP;

Map<String, dynamic> toJson() { return {
  'frequency_penalty': ?frequencyPenalty,
  if (functions != null) 'functions': functions?.map((e) => e.toJson()).toList(),
  'guided_json': ?guidedJson,
  'max_tokens': maxTokens,
  'messages': messages.map((e) => e.toJson()).toList(),
  'presence_penalty': ?presencePenalty,
  'raw': raw,
  'repetition_penalty': ?repetitionPenalty,
  'seed': ?seed,
  'stream': stream,
  'temperature': temperature,
  if (tools != null) 'tools': tools?.map((e) => e.toJson()).toList(),
  'top_k': ?topK,
  'top_p': ?topP,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('messages'); } 
Messages13 copyWith({double Function()? frequencyPenalty, List<Messages13Functions> Function()? functions, Map<String, dynamic> Function()? guidedJson, int Function()? maxTokens, List<Messages13Messages>? messages, double Function()? presencePenalty, bool Function()? raw, double Function()? repetitionPenalty, int Function()? seed, bool Function()? stream, double Function()? temperature, List<Messages13Tools> Function()? tools, int Function()? topK, double Function()? topP, }) { return Messages13(
  frequencyPenalty: frequencyPenalty != null ? frequencyPenalty() : this.frequencyPenalty,
  functions: functions != null ? functions() : this.functions,
  guidedJson: guidedJson != null ? guidedJson() : this.guidedJson,
  maxTokens: maxTokens != null ? maxTokens() : this.maxTokens,
  messages: messages ?? this.messages,
  presencePenalty: presencePenalty != null ? presencePenalty() : this.presencePenalty,
  raw: raw != null ? raw() : this.raw,
  repetitionPenalty: repetitionPenalty != null ? repetitionPenalty() : this.repetitionPenalty,
  seed: seed != null ? seed() : this.seed,
  stream: stream != null ? stream() : this.stream,
  temperature: temperature != null ? temperature() : this.temperature,
  tools: tools != null ? tools() : this.tools,
  topK: topK != null ? topK() : this.topK,
  topP: topP != null ? topP() : this.topP,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages13 &&
          frequencyPenalty == other.frequencyPenalty &&
          listEquals(functions, other.functions) &&
          guidedJson == other.guidedJson &&
          maxTokens == other.maxTokens &&
          listEquals(messages, other.messages) &&
          presencePenalty == other.presencePenalty &&
          raw == other.raw &&
          repetitionPenalty == other.repetitionPenalty &&
          seed == other.seed &&
          stream == other.stream &&
          temperature == other.temperature &&
          listEquals(tools, other.tools) &&
          topK == other.topK &&
          topP == other.topP; } 
@override int get hashCode { return Object.hash(frequencyPenalty, Object.hashAll(functions ?? const []), guidedJson, maxTokens, Object.hashAll(messages), presencePenalty, raw, repetitionPenalty, seed, stream, temperature, Object.hashAll(tools ?? const []), topK, topP); } 
@override String toString() { return 'Messages13(frequencyPenalty: $frequencyPenalty, functions: $functions, guidedJson: $guidedJson, maxTokens: $maxTokens, messages: $messages, presencePenalty: $presencePenalty, raw: $raw, repetitionPenalty: $repetitionPenalty, seed: $seed, stream: $stream, temperature: $temperature, tools: $tools, topK: $topK, topP: $topP)'; } 
 }
