// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'async_batch2_requests_response_format.dart';@immutable final class AsyncBatch2Requests {const AsyncBatch2Requests({this.externalReference, this.frequencyPenalty, this.maxTokens, this.presencePenalty, this.prompt, this.repetitionPenalty, this.responseFormat, this.seed, this.stream, this.temperature, this.topP, });

factory AsyncBatch2Requests.fromJson(Map<String, dynamic> json) { return AsyncBatch2Requests(
  externalReference: json['external_reference'] as String?,
  frequencyPenalty: json['frequency_penalty'] != null ? (json['frequency_penalty'] as num).toDouble() : null,
  maxTokens: json['max_tokens'] != null ? (json['max_tokens'] as num).toInt() : null,
  presencePenalty: json['presence_penalty'] != null ? (json['presence_penalty'] as num).toDouble() : null,
  prompt: json['prompt'] as String?,
  repetitionPenalty: json['repetition_penalty'] != null ? (json['repetition_penalty'] as num).toDouble() : null,
  responseFormat: json['response_format'] != null ? AsyncBatch2RequestsResponseFormat.fromJson(json['response_format'] as Map<String, dynamic>) : null,
  seed: json['seed'] != null ? (json['seed'] as num).toInt() : null,
  stream: json['stream'] as bool?,
  temperature: json['temperature'] != null ? (json['temperature'] as num).toDouble() : null,
  topP: json['top_p'] != null ? (json['top_p'] as num).toDouble() : null,
); }

/// User-supplied reference. This field will be present in the response as well it can be used to reference the request and response. It's NOT validated to be unique.
final String? externalReference;

/// Decreases the likelihood of the model repeating the same lines verbatim.
final double? frequencyPenalty;

/// The maximum number of tokens to generate in the response.
final int? maxTokens;

/// Increases the likelihood of the model introducing new topics.
final double? presencePenalty;

/// Prompt for the text generation model
final String? prompt;

/// Penalty for repeated tokens; higher values discourage repetition.
final double? repetitionPenalty;

final AsyncBatch2RequestsResponseFormat? responseFormat;

/// Random seed for reproducibility of the generation.
final int? seed;

/// If true, the response will be streamed back incrementally using SSE, Server Sent Events.
final bool? stream;

/// Controls the randomness of the output; higher values produce more random results.
final double? temperature;

/// Adjusts the creativity of the AI's responses by controlling how many possible words it considers. Lower values make outputs more predictable; higher values allow for more varied and creative responses.
final double? topP;

/// The value with the schema default applied when absent.
int get maxTokensOrDefault { return maxTokens ?? 256; } 
/// The value with the schema default applied when absent.
bool get streamOrDefault { return stream ?? false; } 
/// The value with the schema default applied when absent.
double get temperatureOrDefault { return temperature ?? 0.6; } 
Map<String, dynamic> toJson() { return {
  'external_reference': ?externalReference,
  'frequency_penalty': ?frequencyPenalty,
  'max_tokens': ?maxTokens,
  'presence_penalty': ?presencePenalty,
  'prompt': ?prompt,
  'repetition_penalty': ?repetitionPenalty,
  if (responseFormat != null) 'response_format': responseFormat?.toJson(),
  'seed': ?seed,
  'stream': ?stream,
  'temperature': ?temperature,
  'top_p': ?topP,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'external_reference', 'frequency_penalty', 'max_tokens', 'presence_penalty', 'prompt', 'repetition_penalty', 'response_format', 'seed', 'stream', 'temperature', 'top_p'}.contains(key)); } 
AsyncBatch2Requests copyWith({String? Function()? externalReference, double? Function()? frequencyPenalty, int? Function()? maxTokens, double? Function()? presencePenalty, String? Function()? prompt, double? Function()? repetitionPenalty, AsyncBatch2RequestsResponseFormat? Function()? responseFormat, int? Function()? seed, bool? Function()? stream, double? Function()? temperature, double? Function()? topP, }) { return AsyncBatch2Requests(
  externalReference: externalReference != null ? externalReference() : this.externalReference,
  frequencyPenalty: frequencyPenalty != null ? frequencyPenalty() : this.frequencyPenalty,
  maxTokens: maxTokens != null ? maxTokens() : this.maxTokens,
  presencePenalty: presencePenalty != null ? presencePenalty() : this.presencePenalty,
  prompt: prompt != null ? prompt() : this.prompt,
  repetitionPenalty: repetitionPenalty != null ? repetitionPenalty() : this.repetitionPenalty,
  responseFormat: responseFormat != null ? responseFormat() : this.responseFormat,
  seed: seed != null ? seed() : this.seed,
  stream: stream != null ? stream() : this.stream,
  temperature: temperature != null ? temperature() : this.temperature,
  topP: topP != null ? topP() : this.topP,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AsyncBatch2Requests &&
          externalReference == other.externalReference &&
          frequencyPenalty == other.frequencyPenalty &&
          maxTokens == other.maxTokens &&
          presencePenalty == other.presencePenalty &&
          prompt == other.prompt &&
          repetitionPenalty == other.repetitionPenalty &&
          responseFormat == other.responseFormat &&
          seed == other.seed &&
          stream == other.stream &&
          temperature == other.temperature &&
          topP == other.topP; } 
@override int get hashCode { return Object.hash(externalReference, frequencyPenalty, maxTokens, presencePenalty, prompt, repetitionPenalty, responseFormat, seed, stream, temperature, topP); } 
@override String toString() { return 'AsyncBatch2Requests(externalReference: $externalReference, frequencyPenalty: $frequencyPenalty, maxTokens: $maxTokens, presencePenalty: $presencePenalty, prompt: $prompt, repetitionPenalty: $repetitionPenalty, responseFormat: $responseFormat, seed: $seed, stream: $stream, temperature: $temperature, topP: $topP)'; } 
 }
