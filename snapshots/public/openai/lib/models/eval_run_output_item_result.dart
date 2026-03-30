// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// A single grader result for an evaluation run output item.
/// 
final class EvalRunOutputItemResult {const EvalRunOutputItemResult({required this.name, this.type, required this.score, required this.passed, this.sample, this.additionalProperties = const {}, });

factory EvalRunOutputItemResult.fromJson(Map<String, dynamic> json) { return EvalRunOutputItemResult(
  name: json['name'] as String,
  type: json['type'] as String?,
  score: (json['score'] as num).toDouble(),
  passed: json['passed'] as bool,
  sample: (json['sample'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
  additionalProperties: Map.fromEntries(json.entries.where((e) => !const {'name', 'type', 'score', 'passed', 'sample'}.contains(e.key))),
); }

/// The name of the grader.
final String name;

/// The grader type (for example, "string-check-grader").
final String? type;

/// The numeric score produced by the grader.
final double score;

/// Whether the grader considered the output a pass.
final bool passed;

/// Optional sample or intermediate data produced by the grader.
final Map<String,dynamic>? sample;

final Map<String,dynamic> additionalProperties;

Map<String, dynamic> toJson() { return {
  'name': name,
  'type': ?type,
  'score': score,
  'passed': passed,
  'sample': ?sample,
  ...additionalProperties,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') && json['name'] is String &&
      json.containsKey('score') && json['score'] is num &&
      json.containsKey('passed') && json['passed'] is bool; } 
EvalRunOutputItemResult copyWith({String? name, String Function()? type, double? score, bool? passed, Map<String, dynamic>? Function()? sample, Map<String, dynamic>? additionalProperties, }) { return EvalRunOutputItemResult(
  name: name ?? this.name,
  type: type != null ? type() : this.type,
  score: score ?? this.score,
  passed: passed ?? this.passed,
  sample: sample != null ? sample() : this.sample,
  additionalProperties: additionalProperties ?? this.additionalProperties,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EvalRunOutputItemResult &&
          name == other.name &&
          type == other.type &&
          score == other.score &&
          passed == other.passed &&
          sample == other.sample &&
          mapEquals(additionalProperties, other.additionalProperties); } 
@override int get hashCode { return Object.hash(name, type, score, passed, sample, Object.hashAll(additionalProperties.entries)); } 
@override String toString() { return 'EvalRunOutputItemResult(name: $name, type: $type, score: $score, passed: $passed, sample: $sample, additionalProperties: $additionalProperties)'; } 
 }
