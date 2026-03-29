// GENERATED CODE - DO NOT MODIFY BY HAND

/// User intervention raised custom event details attached to this payment evaluation
final class InsightsResourcesPaymentEvaluationUserInterventionRaisedCustom {const InsightsResourcesPaymentEvaluationUserInterventionRaisedCustom({required this.type});

factory InsightsResourcesPaymentEvaluationUserInterventionRaisedCustom.fromJson(Map<String, dynamic> json) { return InsightsResourcesPaymentEvaluationUserInterventionRaisedCustom(
  type: json['type'] as String,
); }

/// Custom type of user intervention raised. The string must use a snake case description for the type of intervention performed.
final String type;

Map<String, dynamic> toJson() { return {
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
InsightsResourcesPaymentEvaluationUserInterventionRaisedCustom copyWith({String? type}) { return InsightsResourcesPaymentEvaluationUserInterventionRaisedCustom(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is InsightsResourcesPaymentEvaluationUserInterventionRaisedCustom &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'InsightsResourcesPaymentEvaluationUserInterventionRaisedCustom(type: $type)'; } 
 }
