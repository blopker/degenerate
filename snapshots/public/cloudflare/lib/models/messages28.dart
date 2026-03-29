// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'messages28_functions.dart';import 'messages28_image.dart';import 'messages28_messages.dart';import 'messages28_tools.dart';import 'messages28_tools_variant1.dart';import 'messages28_tools_variant2.dart';final class Messages28 {const Messages28({this.frequencyPenalty, this.functions, this.image, this.maxTokens = 256, required this.messages, this.presencePenalty, this.repetitionPenalty, this.seed, this.stream = false, this.temperature = 0.6, this.tools, this.topK, this.topP, });

factory Messages28.fromJson(Map<String, dynamic> json) { return Messages28(
  frequencyPenalty: json['frequency_penalty'] != null ? (json['frequency_penalty'] as num).toDouble() : null,
  functions: (json['functions'] as List<dynamic>?)?.map((e) => Messages28Functions.fromJson(e as Map<String, dynamic>)).toList(),
  image: json['image'] != null ? OneOf2.parse(json['image'], fromA: (v) => (v as List<dynamic>).map((e) => (e as num).toDouble()).toList(), fromB: (v) => base64Decode(v as String),) : null,
  maxTokens: json.containsKey('max_tokens') ? (json['max_tokens'] as num).toInt() : 256,
  messages: (json['messages'] as List<dynamic>).map((e) => Messages28Messages.fromJson(e as Map<String, dynamic>)).toList(),
  presencePenalty: json['presence_penalty'] != null ? (json['presence_penalty'] as num).toDouble() : null,
  repetitionPenalty: json['repetition_penalty'] != null ? (json['repetition_penalty'] as num).toDouble() : null,
  seed: json['seed'] != null ? (json['seed'] as num).toInt() : null,
  stream: json.containsKey('stream') ? json['stream'] as bool : false,
  temperature: json.containsKey('temperature') ? (json['temperature'] as num).toDouble() : 0.6,
  tools: (json['tools'] as List<dynamic>?)?.map((e) => OneOf2.parse(e, fromA: (v) => Messages28ToolsVariant1.fromJson(v as Map<String, dynamic>), fromB: (v) => Messages28ToolsVariant2.fromJson(v as Map<String, dynamic>),)).toList(),
  topK: json['top_k'] != null ? (json['top_k'] as num).toInt() : null,
  topP: json['top_p'] != null ? (json['top_p'] as num).toDouble() : null,
); }

/// Decreases the likelihood of the model repeating the same lines verbatim.
final double? frequencyPenalty;

final List<Messages28Functions>? functions;

final Messages28Image? image;

/// The maximum number of tokens to generate in the response.
final int maxTokens;

/// An array of message objects representing the conversation history.
final List<Messages28Messages> messages;

/// Increases the likelihood of the model introducing new topics.
final double? presencePenalty;

/// Penalty for repeated tokens; higher values discourage repetition.
final double? repetitionPenalty;

/// Random seed for reproducibility of the generation.
final int? seed;

/// If true, the response will be streamed back incrementally.
final bool stream;

/// Controls the randomness of the output; higher values produce more random results.
final double temperature;

/// A list of tools available for the assistant to use.
final List<Messages28Tools>? tools;

/// Limits the AI to choose from the top 'k' most probable words. Lower values make responses more focused; higher values introduce more variety and potential surprises.
final int? topK;

/// Controls the creativity of the AI's responses by adjusting how many possible words it considers. Lower values make outputs more predictable; higher values allow for more varied and creative responses.
final double? topP;

Map<String, dynamic> toJson() { return {
  'frequency_penalty': ?frequencyPenalty,
  if (functions != null) 'functions': functions?.map((e) => e.toJson()).toList(),
  if (image != null) 'image': image?.toJson(),
  'max_tokens': maxTokens,
  'messages': messages.map((e) => e.toJson()).toList(),
  'presence_penalty': ?presencePenalty,
  'repetition_penalty': ?repetitionPenalty,
  'seed': ?seed,
  'stream': stream,
  'temperature': temperature,
  if (tools != null) 'tools': tools?.map((e) => e.toJson()).toList(),
  'top_k': ?topK,
  'top_p': ?topP,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('messages'); } 
Messages28 copyWith({double Function()? frequencyPenalty, List<Messages28Functions> Function()? functions, Messages28Image Function()? image, int Function()? maxTokens, List<Messages28Messages>? messages, double Function()? presencePenalty, double Function()? repetitionPenalty, int Function()? seed, bool Function()? stream, double Function()? temperature, List<Messages28Tools> Function()? tools, int Function()? topK, double Function()? topP, }) { return Messages28(
  frequencyPenalty: frequencyPenalty != null ? frequencyPenalty() : this.frequencyPenalty,
  functions: functions != null ? functions() : this.functions,
  image: image != null ? image() : this.image,
  maxTokens: maxTokens != null ? maxTokens() : this.maxTokens,
  messages: messages ?? this.messages,
  presencePenalty: presencePenalty != null ? presencePenalty() : this.presencePenalty,
  repetitionPenalty: repetitionPenalty != null ? repetitionPenalty() : this.repetitionPenalty,
  seed: seed != null ? seed() : this.seed,
  stream: stream != null ? stream() : this.stream,
  temperature: temperature != null ? temperature() : this.temperature,
  tools: tools != null ? tools() : this.tools,
  topK: topK != null ? topK() : this.topK,
  topP: topP != null ? topP() : this.topP,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Messages28 &&
          frequencyPenalty == other.frequencyPenalty &&
          listEquals(functions, other.functions) &&
          image == other.image &&
          maxTokens == other.maxTokens &&
          listEquals(messages, other.messages) &&
          presencePenalty == other.presencePenalty &&
          repetitionPenalty == other.repetitionPenalty &&
          seed == other.seed &&
          stream == other.stream &&
          temperature == other.temperature &&
          listEquals(tools, other.tools) &&
          topK == other.topK &&
          topP == other.topP; } 
@override int get hashCode { return Object.hash(frequencyPenalty, Object.hashAll(functions ?? const []), image, maxTokens, Object.hashAll(messages), presencePenalty, repetitionPenalty, seed, stream, temperature, Object.hashAll(tools ?? const []), topK, topP); } 
@override String toString() { return 'Messages28(frequencyPenalty: $frequencyPenalty, functions: $functions, image: $image, maxTokens: $maxTokens, messages: $messages, presencePenalty: $presencePenalty, repetitionPenalty: $repetitionPenalty, seed: $seed, stream: $stream, temperature: $temperature, tools: $tools, topK: $topK, topP: $topP)'; } 
 }
