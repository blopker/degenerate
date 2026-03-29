// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'fine_tune_reinforcement_hyperparameters.dart';import 'fine_tune_reinforcement_method_grader.dart';import 'grader_multi.dart';import 'grader_python.dart';import 'grader_score_model.dart';import 'grader_string_check.dart';import 'grader_text_similarity.dart';/// Configuration for the reinforcement fine-tuning method.
final class FineTuneReinforcementMethod {const FineTuneReinforcementMethod({required this.grader, this.hyperparameters, });

factory FineTuneReinforcementMethod.fromJson(Map<String, dynamic> json) { return FineTuneReinforcementMethod(
  grader: OneOf5.parse(json['grader'], fromA: (v) => GraderStringCheck.fromJson(v as Map<String, dynamic>), fromB: (v) => GraderTextSimilarity.fromJson(v as Map<String, dynamic>), fromC: (v) => GraderPython.fromJson(v as Map<String, dynamic>), fromD: (v) => GraderScoreModel.fromJson(v as Map<String, dynamic>), fromE: (v) => GraderMulti.fromJson(v as Map<String, dynamic>),),
  hyperparameters: json['hyperparameters'] != null ? FineTuneReinforcementHyperparameters.fromJson(json['hyperparameters'] as Map<String, dynamic>) : null,
); }

/// The grader used for the fine-tuning job.
final FineTuneReinforcementMethodGrader grader;

final FineTuneReinforcementHyperparameters? hyperparameters;

Map<String, dynamic> toJson() { return {
  'grader': grader.toJson(),
  if (hyperparameters != null) 'hyperparameters': hyperparameters?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('grader'); } 
FineTuneReinforcementMethod copyWith({FineTuneReinforcementMethodGrader? grader, FineTuneReinforcementHyperparameters Function()? hyperparameters, }) { return FineTuneReinforcementMethod(
  grader: grader ?? this.grader,
  hyperparameters: hyperparameters != null ? hyperparameters() : this.hyperparameters,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FineTuneReinforcementMethod &&
          grader == other.grader &&
          hyperparameters == other.hyperparameters; } 
@override int get hashCode { return Object.hash(grader, hyperparameters); } 
@override String toString() { return 'FineTuneReinforcementMethod(grader: $grader, hyperparameters: $hyperparameters)'; } 
 }
