// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'grader_multi.dart';import 'grader_python.dart';import 'grader_score_model.dart';import 'grader_string_check.dart';import 'grader_text_similarity.dart';import 'validate_grader_response_grader.dart';@immutable final class ValidateGraderResponse {const ValidateGraderResponse({this.grader});

factory ValidateGraderResponse.fromJson(Map<String, dynamic> json) { return ValidateGraderResponse(
  grader: json['grader'] != null ? OneOf5.parse(json['grader'], fromA: (v) => GraderStringCheck.fromJson(v as Map<String, dynamic>), fromB: (v) => GraderTextSimilarity.fromJson(v as Map<String, dynamic>), fromC: (v) => GraderPython.fromJson(v as Map<String, dynamic>), fromD: (v) => GraderScoreModel.fromJson(v as Map<String, dynamic>), fromE: (v) => GraderMulti.fromJson(v as Map<String, dynamic>),) : null,
); }

/// The grader used for the fine-tuning job.
final ValidateGraderResponseGrader? grader;

Map<String, dynamic> toJson() { return {
  if (grader != null) 'grader': grader?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'grader'}.contains(key)); } 
ValidateGraderResponse copyWith({ValidateGraderResponseGrader Function()? grader}) { return ValidateGraderResponse(
  grader: grader != null ? grader() : this.grader,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ValidateGraderResponse &&
          grader == other.grader; } 
@override int get hashCode { return grader.hashCode; } 
@override String toString() { return 'ValidateGraderResponse(grader: $grader)'; } 
 }
