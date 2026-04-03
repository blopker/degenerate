// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The type of grader.
@immutable final class EvalGraderTextSimilarityType {const EvalGraderTextSimilarityType._(this.value);

factory EvalGraderTextSimilarityType.fromJson(String json) { return switch (json) {
  'text_similarity' => textSimilarity,
  _ => EvalGraderTextSimilarityType._(json),
}; }

static const EvalGraderTextSimilarityType textSimilarity = EvalGraderTextSimilarityType._('text_similarity');

static const List<EvalGraderTextSimilarityType> values = [textSimilarity];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EvalGraderTextSimilarityType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EvalGraderTextSimilarityType($value)'; } 
 }
/// The evaluation metric to use. One of `cosine`, `fuzzy_match`, `bleu`,
/// `gleu`, `meteor`, `rouge_1`, `rouge_2`, `rouge_3`, `rouge_4`, `rouge_5`,
/// or `rouge_l`.
/// 
@immutable final class EvalGraderTextSimilarityEvaluationMetric {const EvalGraderTextSimilarityEvaluationMetric._(this.value);

factory EvalGraderTextSimilarityEvaluationMetric.fromJson(String json) { return switch (json) {
  'cosine' => cosine,
  'fuzzy_match' => fuzzyMatch,
  'bleu' => bleu,
  'gleu' => gleu,
  'meteor' => meteor,
  'rouge_1' => rouge1,
  'rouge_2' => rouge2,
  'rouge_3' => rouge3,
  'rouge_4' => rouge4,
  'rouge_5' => rouge5,
  'rouge_l' => rougeL,
  _ => EvalGraderTextSimilarityEvaluationMetric._(json),
}; }

static const EvalGraderTextSimilarityEvaluationMetric cosine = EvalGraderTextSimilarityEvaluationMetric._('cosine');

static const EvalGraderTextSimilarityEvaluationMetric fuzzyMatch = EvalGraderTextSimilarityEvaluationMetric._('fuzzy_match');

static const EvalGraderTextSimilarityEvaluationMetric bleu = EvalGraderTextSimilarityEvaluationMetric._('bleu');

static const EvalGraderTextSimilarityEvaluationMetric gleu = EvalGraderTextSimilarityEvaluationMetric._('gleu');

static const EvalGraderTextSimilarityEvaluationMetric meteor = EvalGraderTextSimilarityEvaluationMetric._('meteor');

static const EvalGraderTextSimilarityEvaluationMetric rouge1 = EvalGraderTextSimilarityEvaluationMetric._('rouge_1');

static const EvalGraderTextSimilarityEvaluationMetric rouge2 = EvalGraderTextSimilarityEvaluationMetric._('rouge_2');

static const EvalGraderTextSimilarityEvaluationMetric rouge3 = EvalGraderTextSimilarityEvaluationMetric._('rouge_3');

static const EvalGraderTextSimilarityEvaluationMetric rouge4 = EvalGraderTextSimilarityEvaluationMetric._('rouge_4');

static const EvalGraderTextSimilarityEvaluationMetric rouge5 = EvalGraderTextSimilarityEvaluationMetric._('rouge_5');

static const EvalGraderTextSimilarityEvaluationMetric rougeL = EvalGraderTextSimilarityEvaluationMetric._('rouge_l');

static const List<EvalGraderTextSimilarityEvaluationMetric> values = [cosine, fuzzyMatch, bleu, gleu, meteor, rouge1, rouge2, rouge3, rouge4, rouge5, rougeL];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EvalGraderTextSimilarityEvaluationMetric && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EvalGraderTextSimilarityEvaluationMetric($value)'; } 
 }
@immutable final class EvalGraderTextSimilarity {const EvalGraderTextSimilarity({required this.name, required this.input, required this.reference, required this.evaluationMetric, required this.passThreshold, this.type = EvalGraderTextSimilarityType.textSimilarity, });

factory EvalGraderTextSimilarity.fromJson(Map<String, dynamic> json) { return EvalGraderTextSimilarity(
  type: EvalGraderTextSimilarityType.fromJson(json['type'] as String),
  name: json['name'] as String,
  input: json['input'] as String,
  reference: json['reference'] as String,
  evaluationMetric: EvalGraderTextSimilarityEvaluationMetric.fromJson(json['evaluation_metric'] as String),
  passThreshold: (json['pass_threshold'] as num).toDouble(),
); }

/// The type of grader.
final EvalGraderTextSimilarityType type;

/// The name of the grader.
final String name;

/// The text being graded.
final String input;

/// The text being graded against.
final String reference;

/// The evaluation metric to use. One of `cosine`, `fuzzy_match`, `bleu`,
/// `gleu`, `meteor`, `rouge_1`, `rouge_2`, `rouge_3`, `rouge_4`, `rouge_5`,
/// or `rouge_l`.
/// 
final EvalGraderTextSimilarityEvaluationMetric evaluationMetric;

/// The threshold for the score.
final double passThreshold;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'name': name,
  'input': input,
  'reference': reference,
  'evaluation_metric': evaluationMetric.toJson(),
  'pass_threshold': passThreshold,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('input') && json['input'] is String &&
      json.containsKey('reference') && json['reference'] is String &&
      json.containsKey('evaluation_metric') &&
      json.containsKey('pass_threshold') && json['pass_threshold'] is num; } 
EvalGraderTextSimilarity copyWith({EvalGraderTextSimilarityType? type, String? name, String? input, String? reference, EvalGraderTextSimilarityEvaluationMetric? evaluationMetric, double? passThreshold, }) { return EvalGraderTextSimilarity(
  type: type ?? this.type,
  name: name ?? this.name,
  input: input ?? this.input,
  reference: reference ?? this.reference,
  evaluationMetric: evaluationMetric ?? this.evaluationMetric,
  passThreshold: passThreshold ?? this.passThreshold,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EvalGraderTextSimilarity &&
          type == other.type &&
          name == other.name &&
          input == other.input &&
          reference == other.reference &&
          evaluationMetric == other.evaluationMetric &&
          passThreshold == other.passThreshold; } 
@override int get hashCode { return Object.hash(type, name, input, reference, evaluationMetric, passThreshold); } 
@override String toString() { return 'EvalGraderTextSimilarity(type: $type, name: $name, input: $input, reference: $reference, evaluationMetric: $evaluationMetric, passThreshold: $passThreshold)'; } 
 }
