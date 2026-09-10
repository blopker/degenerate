// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'reasoning_effort.dart';/// The sampling parameters for the model.
@immutable final class EvalGraderScoreModelSamplingParams {const EvalGraderScoreModelSamplingParams({this.seed = const Omittable.absent(), this.topP = const Omittable.absent(), this.temperature = const Omittable.absent(), this.maxCompletionsTokens = const Omittable.absent(), this.reasoningEffort = const Omittable.absent(), });

factory EvalGraderScoreModelSamplingParams.fromJson(Map<String, dynamic> json) { return EvalGraderScoreModelSamplingParams(
  seed: json.containsKey('seed') ? Omittable(json['seed'] != null ? (json['seed'] as num).toInt() : null) : const Omittable.absent(),
  topP: json.containsKey('top_p') ? Omittable(json['top_p'] != null ? (json['top_p'] as num).toDouble() : null) : const Omittable.absent(),
  temperature: json.containsKey('temperature') ? Omittable(json['temperature'] != null ? (json['temperature'] as num).toDouble() : null) : const Omittable.absent(),
  maxCompletionsTokens: json.containsKey('max_completions_tokens') ? Omittable(json['max_completions_tokens'] != null ? (json['max_completions_tokens'] as num).toInt() : null) : const Omittable.absent(),
  reasoningEffort: json.containsKey('reasoning_effort') ? Omittable(json['reasoning_effort'] != null ? ReasoningEffort.fromJson(json['reasoning_effort'] as String) : null) : const Omittable.absent(),
); }

/// A seed value to initialize the randomness, during sampling.
/// 
final Omittable<int?> seed;

/// An alternative to temperature for nucleus sampling; 1.0 includes all tokens.
/// 
final Omittable<double?> topP;

/// A higher temperature increases randomness in the outputs.
/// 
final Omittable<double?> temperature;

/// The maximum number of tokens the grader model may generate in its response.
/// 
final Omittable<int?> maxCompletionsTokens;

final Omittable<ReasoningEffort?> reasoningEffort;

Map<String, dynamic> toJson() { return {
  if (seed.isPresent) 'seed': seed.value,
  if (topP.isPresent) 'top_p': topP.value,
  if (temperature.isPresent) 'temperature': temperature.value,
  if (maxCompletionsTokens.isPresent) 'max_completions_tokens': maxCompletionsTokens.value,
  if (reasoningEffort.isPresent) 'reasoning_effort': reasoningEffort.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'seed', 'top_p', 'temperature', 'max_completions_tokens', 'reasoning_effort'}.contains(key)); } 
EvalGraderScoreModelSamplingParams copyWith({Omittable<int?>? seed, Omittable<double?>? topP, Omittable<double?>? temperature, Omittable<int?>? maxCompletionsTokens, Omittable<ReasoningEffort?>? reasoningEffort, }) { return EvalGraderScoreModelSamplingParams(
  seed: seed ?? this.seed,
  topP: topP ?? this.topP,
  temperature: temperature ?? this.temperature,
  maxCompletionsTokens: maxCompletionsTokens ?? this.maxCompletionsTokens,
  reasoningEffort: reasoningEffort ?? this.reasoningEffort,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EvalGraderScoreModelSamplingParams &&
          seed == other.seed &&
          topP == other.topP &&
          temperature == other.temperature &&
          maxCompletionsTokens == other.maxCompletionsTokens &&
          reasoningEffort == other.reasoningEffort; } 
@override int get hashCode { return Object.hash(seed, topP, temperature, maxCompletionsTokens, reasoningEffort); } 
@override String toString() { return 'EvalGraderScoreModelSamplingParams(seed: $seed, topP: $topP, temperature: $temperature, maxCompletionsTokens: $maxCompletionsTokens, reasoningEffort: $reasoningEffort)'; } 
 }
