// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'reasoning_effort.dart';/// A summary of the reasoning performed by the model. This can be
/// useful for debugging and understanding the model's reasoning process.
/// One of `auto`, `concise`, or `detailed`.
/// 
/// `concise` is supported for `computer-use-preview` models and all reasoning models after `gpt-5`.
/// 
@immutable final class ReasoningSummary {const ReasoningSummary._(this.value);

factory ReasoningSummary.fromJson(String json) { return switch (json) {
  'auto' => auto,
  'concise' => concise,
  'detailed' => detailed,
  _ => ReasoningSummary._(json),
}; }

static const ReasoningSummary auto = ReasoningSummary._('auto');

static const ReasoningSummary concise = ReasoningSummary._('concise');

static const ReasoningSummary detailed = ReasoningSummary._('detailed');

static const List<ReasoningSummary> values = [auto, concise, detailed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReasoningSummary && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ReasoningSummary($value)'; } 
 }
/// **Deprecated:** use `summary` instead.
/// 
/// A summary of the reasoning performed by the model. This can be
/// useful for debugging and understanding the model's reasoning process.
/// One of `auto`, `concise`, or `detailed`.
/// 
@immutable final class ReasoningGenerateSummary {const ReasoningGenerateSummary._(this.value);

factory ReasoningGenerateSummary.fromJson(String json) { return switch (json) {
  'auto' => auto,
  'concise' => concise,
  'detailed' => detailed,
  _ => ReasoningGenerateSummary._(json),
}; }

static const ReasoningGenerateSummary auto = ReasoningGenerateSummary._('auto');

static const ReasoningGenerateSummary concise = ReasoningGenerateSummary._('concise');

static const ReasoningGenerateSummary detailed = ReasoningGenerateSummary._('detailed');

static const List<ReasoningGenerateSummary> values = [auto, concise, detailed];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReasoningGenerateSummary && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ReasoningGenerateSummary($value)'; } 
 }
/// **gpt-5 and o-series models only**
/// 
/// Configuration options for
/// [reasoning models](https://platform.openai.com/docs/guides/reasoning).
/// 
@immutable final class Reasoning {const Reasoning({this.effort = const Omittable.absent(), this.summary = const Omittable.absent(), this.generateSummary = const Omittable.absent(), });

factory Reasoning.fromJson(Map<String, dynamic> json) { return Reasoning(
  effort: json.containsKey('effort') ? Omittable(json['effort'] != null ? ReasoningEffort.fromJson(json['effort'] as String) : null) : const Omittable.absent(),
  summary: json.containsKey('summary') ? Omittable(json['summary'] != null ? ReasoningSummary.fromJson(json['summary'] as String) : null) : const Omittable.absent(),
  generateSummary: json.containsKey('generate_summary') ? Omittable(json['generate_summary'] != null ? ReasoningGenerateSummary.fromJson(json['generate_summary'] as String) : null) : const Omittable.absent(),
); }

final Omittable<ReasoningEffort?> effort;

/// A summary of the reasoning performed by the model. This can be
/// useful for debugging and understanding the model's reasoning process.
/// One of `auto`, `concise`, or `detailed`.
/// 
/// `concise` is supported for `computer-use-preview` models and all reasoning models after `gpt-5`.
/// 
final Omittable<ReasoningSummary?> summary;

/// **Deprecated:** use `summary` instead.
/// 
/// A summary of the reasoning performed by the model. This can be
/// useful for debugging and understanding the model's reasoning process.
/// One of `auto`, `concise`, or `detailed`.
/// 
final Omittable<ReasoningGenerateSummary?> generateSummary;

Map<String, dynamic> toJson() { return {
  if (effort.isPresent) 'effort': effort.value?.toJson(),
  if (summary.isPresent) 'summary': summary.value?.toJson(),
  if (generateSummary.isPresent) 'generate_summary': generateSummary.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'effort', 'summary', 'generate_summary'}.contains(key)); } 
Reasoning copyWith({Omittable<ReasoningEffort?>? effort, Omittable<ReasoningSummary?>? summary, Omittable<ReasoningGenerateSummary?>? generateSummary, }) { return Reasoning(
  effort: effort ?? this.effort,
  summary: summary ?? this.summary,
  generateSummary: generateSummary ?? this.generateSummary,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Reasoning &&
          effort == other.effort &&
          summary == other.summary &&
          generateSummary == other.generateSummary; } 
@override int get hashCode { return Object.hash(effort, summary, generateSummary); } 
@override String toString() { return 'Reasoning(effort: $effort, summary: $summary, generateSummary: $generateSummary)'; } 
 }
