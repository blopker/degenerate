// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_operation_feature_confidence_intervals_confidence_intervals_suggested_threshold_confidence_intervals.dart';@immutable final class ShieldOperationFeatureConfidenceIntervalsConfidenceIntervalsSuggestedThreshold {const ShieldOperationFeatureConfidenceIntervalsConfidenceIntervalsSuggestedThreshold({this.confidenceIntervals, this.mean, });

factory ShieldOperationFeatureConfidenceIntervalsConfidenceIntervalsSuggestedThreshold.fromJson(Map<String, dynamic> json) { return ShieldOperationFeatureConfidenceIntervalsConfidenceIntervalsSuggestedThreshold(
  confidenceIntervals: json['confidence_intervals'] != null ? ShieldOperationFeatureConfidenceIntervalsConfidenceIntervalsSuggestedThresholdConfidenceIntervals.fromJson(json['confidence_intervals'] as Map<String, dynamic>) : null,
  mean: json['mean'] != null ? (json['mean'] as num).toDouble() : null,
); }

final ShieldOperationFeatureConfidenceIntervalsConfidenceIntervalsSuggestedThresholdConfidenceIntervals? confidenceIntervals;

/// Suggested threshold.
final double? mean;

Map<String, dynamic> toJson() { return {
  if (confidenceIntervals != null) 'confidence_intervals': confidenceIntervals?.toJson(),
  'mean': ?mean,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'confidence_intervals', 'mean'}.contains(key)); } 
ShieldOperationFeatureConfidenceIntervalsConfidenceIntervalsSuggestedThreshold copyWith({ShieldOperationFeatureConfidenceIntervalsConfidenceIntervalsSuggestedThresholdConfidenceIntervals Function()? confidenceIntervals, double Function()? mean, }) { return ShieldOperationFeatureConfidenceIntervalsConfidenceIntervalsSuggestedThreshold(
  confidenceIntervals: confidenceIntervals != null ? confidenceIntervals() : this.confidenceIntervals,
  mean: mean != null ? mean() : this.mean,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldOperationFeatureConfidenceIntervalsConfidenceIntervalsSuggestedThreshold &&
          confidenceIntervals == other.confidenceIntervals &&
          mean == other.mean; } 
@override int get hashCode { return Object.hash(confidenceIntervals, mean); } 
@override String toString() { return 'ShieldOperationFeatureConfidenceIntervalsConfidenceIntervalsSuggestedThreshold(confidenceIntervals: $confidenceIntervals, mean: $mean)'; } 
 }
