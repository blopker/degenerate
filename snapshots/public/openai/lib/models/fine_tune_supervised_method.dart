// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'fine_tune_supervised_hyperparameters.dart';/// Configuration for the supervised fine-tuning method.
@immutable final class FineTuneSupervisedMethod {const FineTuneSupervisedMethod({this.hyperparameters});

factory FineTuneSupervisedMethod.fromJson(Map<String, dynamic> json) { return FineTuneSupervisedMethod(
  hyperparameters: json['hyperparameters'] != null ? FineTuneSupervisedHyperparameters.fromJson(json['hyperparameters'] as Map<String, dynamic>) : null,
); }

final FineTuneSupervisedHyperparameters? hyperparameters;

Map<String, dynamic> toJson() { return {
  if (hyperparameters != null) 'hyperparameters': hyperparameters?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'hyperparameters'}.contains(key)); } 
FineTuneSupervisedMethod copyWith({FineTuneSupervisedHyperparameters Function()? hyperparameters}) { return FineTuneSupervisedMethod(
  hyperparameters: hyperparameters != null ? hyperparameters() : this.hyperparameters,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FineTuneSupervisedMethod &&
          hyperparameters == other.hyperparameters; } 
@override int get hashCode { return hyperparameters.hashCode; } 
@override String toString() { return 'FineTuneSupervisedMethod(hyperparameters: $hyperparameters)'; } 
 }
