// GENERATED CODE - DO NOT MODIFY BY HAND

import 'insights_resources_payment_evaluation_scorer.dart';/// Collection of scores and insights for this payment evaluation.
final class InsightsResourcesPaymentEvaluationInsights {const InsightsResourcesPaymentEvaluationInsights({required this.evaluatedAt, required this.fraudulentDispute, });

factory InsightsResourcesPaymentEvaluationInsights.fromJson(Map<String, dynamic> json) { return InsightsResourcesPaymentEvaluationInsights(
  evaluatedAt: (json['evaluated_at'] as num).toInt(),
  fraudulentDispute: InsightsResourcesPaymentEvaluationScorer.fromJson(json['fraudulent_dispute'] as Map<String, dynamic>),
); }

/// The timestamp when the evaluation was performed.
final int evaluatedAt;

final InsightsResourcesPaymentEvaluationScorer fraudulentDispute;

Map<String, dynamic> toJson() { return {
  'evaluated_at': evaluatedAt,
  'fraudulent_dispute': fraudulentDispute.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('evaluated_at') && json['evaluated_at'] is num &&
      json.containsKey('fraudulent_dispute'); } 
InsightsResourcesPaymentEvaluationInsights copyWith({int? evaluatedAt, InsightsResourcesPaymentEvaluationScorer? fraudulentDispute, }) { return InsightsResourcesPaymentEvaluationInsights(
  evaluatedAt: evaluatedAt ?? this.evaluatedAt,
  fraudulentDispute: fraudulentDispute ?? this.fraudulentDispute,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InsightsResourcesPaymentEvaluationInsights &&
          evaluatedAt == other.evaluatedAt &&
          fraudulentDispute == other.fraudulentDispute; } 
@override int get hashCode { return Object.hash(evaluatedAt, fraudulentDispute); } 
@override String toString() { return 'InsightsResourcesPaymentEvaluationInsights(evaluatedAt: $evaluatedAt, fraudulentDispute: $fraudulentDispute)'; } 
 }
