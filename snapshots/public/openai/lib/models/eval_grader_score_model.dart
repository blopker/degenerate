// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'eval_grader_score_model_sampling_params.dart';import 'eval_item.dart';/// The object type, which is always `score_model`.
final class EvalGraderScoreModelType {const EvalGraderScoreModelType._(this.value);

factory EvalGraderScoreModelType.fromJson(String json) { return switch (json) {
  'score_model' => scoreModel,
  _ => EvalGraderScoreModelType._(json),
}; }

static const EvalGraderScoreModelType scoreModel = EvalGraderScoreModelType._('score_model');

static const List<EvalGraderScoreModelType> values = [scoreModel];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EvalGraderScoreModelType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EvalGraderScoreModelType($value)'; } 
 }
final class EvalGraderScoreModel {const EvalGraderScoreModel({required this.type, required this.name, required this.model, this.samplingParams, required this.input, this.range, this.passThreshold, });

factory EvalGraderScoreModel.fromJson(Map<String, dynamic> json) { return EvalGraderScoreModel(
  type: EvalGraderScoreModelType.fromJson(json['type'] as String),
  name: json['name'] as String,
  model: json['model'] as String,
  samplingParams: json['sampling_params'] != null ? EvalGraderScoreModelSamplingParams.fromJson(json['sampling_params'] as Map<String, dynamic>) : null,
  input: (json['input'] as List<dynamic>).map((e) => EvalItem.fromJson(e as Map<String, dynamic>)).toList(),
  range: (json['range'] as List<dynamic>?)?.map((e) => (e as num).toDouble()).toList(),
  passThreshold: json['pass_threshold'] != null ? (json['pass_threshold'] as num).toDouble() : null,
); }

/// The object type, which is always `score_model`.
final EvalGraderScoreModelType type;

/// The name of the grader.
final String name;

/// The model to use for the evaluation.
final String model;

/// The sampling parameters for the model.
final EvalGraderScoreModelSamplingParams? samplingParams;

/// The input messages evaluated by the grader. Supports text, output text, input image, and input audio content blocks, and may include template strings.
/// 
final List<EvalItem> input;

/// The range of the score. Defaults to `[0, 1]`.
final List<double>? range;

/// The threshold for the score.
final double? passThreshold;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'name': name,
  'model': model,
  if (samplingParams != null) 'sampling_params': samplingParams?.toJson(),
  'input': input.map((e) => e.toJson()).toList(),
  'range': ?range,
  'pass_threshold': ?passThreshold,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('model') && json['model'] is String &&
      json.containsKey('input'); } 
EvalGraderScoreModel copyWith({EvalGraderScoreModelType? type, String? name, String? model, EvalGraderScoreModelSamplingParams Function()? samplingParams, List<EvalItem>? input, List<double> Function()? range, double Function()? passThreshold, }) { return EvalGraderScoreModel(
  type: type ?? this.type,
  name: name ?? this.name,
  model: model ?? this.model,
  samplingParams: samplingParams != null ? samplingParams() : this.samplingParams,
  input: input ?? this.input,
  range: range != null ? range() : this.range,
  passThreshold: passThreshold != null ? passThreshold() : this.passThreshold,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EvalGraderScoreModel &&
          type == other.type &&
          name == other.name &&
          model == other.model &&
          samplingParams == other.samplingParams &&
          listEquals(input, other.input) &&
          listEquals(range, other.range) &&
          passThreshold == other.passThreshold; } 
@override int get hashCode { return Object.hash(type, name, model, samplingParams, Object.hashAll(input), Object.hashAll(range ?? const []), passThreshold); } 
@override String toString() { return 'EvalGraderScoreModel(type: $type, name: $name, model: $model, samplingParams: $samplingParams, input: $input, range: $range, passThreshold: $passThreshold)'; } 
 }
