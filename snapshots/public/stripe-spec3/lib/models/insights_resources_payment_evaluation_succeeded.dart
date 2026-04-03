// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'insights_resources_payment_evaluation_succeeded_card.dart';/// Details of a succeeded outcome attached to this payment evaluation.
@immutable final class InsightsResourcesPaymentEvaluationSucceeded {const InsightsResourcesPaymentEvaluationSucceeded({this.card});

factory InsightsResourcesPaymentEvaluationSucceeded.fromJson(Map<String, dynamic> json) { return InsightsResourcesPaymentEvaluationSucceeded(
  card: json['card'] != null ? InsightsResourcesPaymentEvaluationSucceededCard.fromJson(json['card'] as Map<String, dynamic>) : null,
); }

final InsightsResourcesPaymentEvaluationSucceededCard? card;

Map<String, dynamic> toJson() { return {
  if (card != null) 'card': card?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'card'}.contains(key)); } 
InsightsResourcesPaymentEvaluationSucceeded copyWith({InsightsResourcesPaymentEvaluationSucceededCard Function()? card}) { return InsightsResourcesPaymentEvaluationSucceeded(
  card: card != null ? card() : this.card,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InsightsResourcesPaymentEvaluationSucceeded &&
          card == other.card; } 
@override int get hashCode { return card.hashCode; } 
@override String toString() { return 'InsightsResourcesPaymentEvaluationSucceeded(card: $card)'; } 
 }
