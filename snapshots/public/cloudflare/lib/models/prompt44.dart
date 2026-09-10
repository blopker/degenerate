// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'prompt44_response_format.dart';@immutable final class Prompt44 {const Prompt44({required this.prompt, this.frequencyPenalty, this.lora, this.maxTokens, this.presencePenalty, this.raw, this.repetitionPenalty, this.responseFormat, this.seed, this.stream, this.temperature, this.topK, this.topP, });

factory Prompt44.fromJson(Map<String, dynamic> json) { return Prompt44(
  frequencyPenalty: json['frequency_penalty'] != null ? (json['frequency_penalty'] as num).toDouble() : null,
  lora: json['lora'] as String?,
  maxTokens: json['max_tokens'] != null ? (json['max_tokens'] as num).toInt() : null,
  presencePenalty: json['presence_penalty'] != null ? (json['presence_penalty'] as num).toDouble() : null,
  prompt: json['prompt'] as String,
  raw: json['raw'] as bool?,
  repetitionPenalty: json['repetition_penalty'] != null ? (json['repetition_penalty'] as num).toDouble() : null,
  responseFormat: json['response_format'] != null ? Prompt44ResponseFormat.fromJson(json['response_format'] as Map<String, dynamic>) : null,
  seed: json['seed'] != null ? (json['seed'] as num).toInt() : null,
  stream: json['stream'] as bool?,
  temperature: json['temperature'] != null ? (json['temperature'] as num).toDouble() : null,
  topK: json['top_k'] != null ? (json['top_k'] as num).toInt() : null,
  topP: json['top_p'] != null ? (json['top_p'] as num).toDouble() : null,
); }

/// Decreases the likelihood of the model repeating the same lines verbatim.
final double? frequencyPenalty;

/// Name of the LoRA (Low-Rank Adaptation) model to fine-tune the base model.
final String? lora;

/// The maximum number of tokens to generate in the response.
final int? maxTokens;

/// Increases the likelihood of the model introducing new topics.
final double? presencePenalty;

/// The input text prompt for the model to generate a response.
final String prompt;

/// If true, a chat template is not applied and you must adhere to the specific model's expected formatting.
final bool? raw;

/// Penalty for repeated tokens; higher values discourage repetition.
final double? repetitionPenalty;

final Prompt44ResponseFormat? responseFormat;

/// Random seed for reproducibility of the generation.
final int? seed;

/// If true, the response will be streamed back incrementally using SSE, Server Sent Events.
final bool? stream;

/// Controls the randomness of the output; higher values produce more random results.
final double? temperature;

/// Limits the AI to choose from the top 'k' most probable words. Lower values make responses more focused; higher values introduce more variety and potential surprises.
final int? topK;

/// Adjusts the creativity of the AI's responses by controlling how many possible words it considers. Lower values make outputs more predictable; higher values allow for more varied and creative responses.
final double? topP;

/// The value with the schema default applied when absent.
int get maxTokensOrDefault { return maxTokens ?? 256; } 
/// The value with the schema default applied when absent.
bool get rawOrDefault { return raw ?? false; } 
/// The value with the schema default applied when absent.
bool get streamOrDefault { return stream ?? false; } 
/// The value with the schema default applied when absent.
double get temperatureOrDefault { return temperature ?? 0.6; } 
Map<String, dynamic> toJson() { return {
  'frequency_penalty': ?frequencyPenalty,
  'lora': ?lora,
  'max_tokens': ?maxTokens,
  'presence_penalty': ?presencePenalty,
  'prompt': prompt,
  'raw': ?raw,
  'repetition_penalty': ?repetitionPenalty,
  if (responseFormat != null) 'response_format': responseFormat?.toJson(),
  'seed': ?seed,
  'stream': ?stream,
  'temperature': ?temperature,
  'top_k': ?topK,
  'top_p': ?topP,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('prompt') && json['prompt'] is String; } 
Prompt44 copyWith({double? Function()? frequencyPenalty, String? Function()? lora, int? Function()? maxTokens, double? Function()? presencePenalty, String? prompt, bool? Function()? raw, double? Function()? repetitionPenalty, Prompt44ResponseFormat? Function()? responseFormat, int? Function()? seed, bool? Function()? stream, double? Function()? temperature, int? Function()? topK, double? Function()? topP, }) { return Prompt44(
  frequencyPenalty: frequencyPenalty != null ? frequencyPenalty() : this.frequencyPenalty,
  lora: lora != null ? lora() : this.lora,
  maxTokens: maxTokens != null ? maxTokens() : this.maxTokens,
  presencePenalty: presencePenalty != null ? presencePenalty() : this.presencePenalty,
  prompt: prompt ?? this.prompt,
  raw: raw != null ? raw() : this.raw,
  repetitionPenalty: repetitionPenalty != null ? repetitionPenalty() : this.repetitionPenalty,
  responseFormat: responseFormat != null ? responseFormat() : this.responseFormat,
  seed: seed != null ? seed() : this.seed,
  stream: stream != null ? stream() : this.stream,
  temperature: temperature != null ? temperature() : this.temperature,
  topK: topK != null ? topK() : this.topK,
  topP: topP != null ? topP() : this.topP,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Prompt44 &&
          frequencyPenalty == other.frequencyPenalty &&
          lora == other.lora &&
          maxTokens == other.maxTokens &&
          presencePenalty == other.presencePenalty &&
          prompt == other.prompt &&
          raw == other.raw &&
          repetitionPenalty == other.repetitionPenalty &&
          responseFormat == other.responseFormat &&
          seed == other.seed &&
          stream == other.stream &&
          temperature == other.temperature &&
          topK == other.topK &&
          topP == other.topP; } 
@override int get hashCode { return Object.hash(frequencyPenalty, lora, maxTokens, presencePenalty, prompt, raw, repetitionPenalty, responseFormat, seed, stream, temperature, topK, topP); } 
@override String toString() { return 'Prompt44(frequencyPenalty: $frequencyPenalty, lora: $lora, maxTokens: $maxTokens, presencePenalty: $presencePenalty, prompt: $prompt, raw: $raw, repetitionPenalty: $repetitionPenalty, responseFormat: $responseFormat, seed: $seed, stream: $stream, temperature: $temperature, topK: $topK, topP: $topP)'; } 
 }
