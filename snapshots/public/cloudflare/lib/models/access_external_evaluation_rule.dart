// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_external_evaluation_rule_external_evaluation.dart';/// Create Allow or Block policies which evaluate the user based on custom criteria.
final class AccessExternalEvaluationRule {const AccessExternalEvaluationRule({required this.externalEvaluation});

factory AccessExternalEvaluationRule.fromJson(Map<String, dynamic> json) { return AccessExternalEvaluationRule(
  externalEvaluation: AccessExternalEvaluationRuleExternalEvaluation.fromJson(json['external_evaluation'] as Map<String, dynamic>),
); }

final AccessExternalEvaluationRuleExternalEvaluation externalEvaluation;

Map<String, dynamic> toJson() { return {
  'external_evaluation': externalEvaluation.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('external_evaluation'); } 
AccessExternalEvaluationRule copyWith({AccessExternalEvaluationRuleExternalEvaluation? externalEvaluation}) { return AccessExternalEvaluationRule(
  externalEvaluation: externalEvaluation ?? this.externalEvaluation,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessExternalEvaluationRule &&
          externalEvaluation == other.externalEvaluation; } 
@override int get hashCode { return externalEvaluation.hashCode; } 
@override String toString() { return 'AccessExternalEvaluationRule(externalEvaluation: $externalEvaluation)'; } 
 }
