// GENERATED CODE - DO NOT MODIFY BY HAND

import 'shield_operation_feature_confidence_intervals_confidence_intervals_suggested_threshold.dart';import 'shield_timestamp.dart';final class ShieldOperationFeatureConfidenceIntervalsConfidenceIntervals {const ShieldOperationFeatureConfidenceIntervalsConfidenceIntervals({this.lastUpdated, this.suggestedThreshold, });

factory ShieldOperationFeatureConfidenceIntervalsConfidenceIntervals.fromJson(Map<String, dynamic> json) { return ShieldOperationFeatureConfidenceIntervalsConfidenceIntervals(
  lastUpdated: json['last_updated'] != null ? ShieldTimestamp.fromJson(json['last_updated'] as String) : null,
  suggestedThreshold: json['suggested_threshold'] != null ? ShieldOperationFeatureConfidenceIntervalsConfidenceIntervalsSuggestedThreshold.fromJson(json['suggested_threshold'] as Map<String, dynamic>) : null,
); }

final ShieldTimestamp? lastUpdated;

final ShieldOperationFeatureConfidenceIntervalsConfidenceIntervalsSuggestedThreshold? suggestedThreshold;

Map<String, dynamic> toJson() { return {
  if (lastUpdated != null) 'last_updated': lastUpdated?.toJson(),
  if (suggestedThreshold != null) 'suggested_threshold': suggestedThreshold?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'last_updated', 'suggested_threshold'}.contains(key)); } 
ShieldOperationFeatureConfidenceIntervalsConfidenceIntervals copyWith({ShieldTimestamp Function()? lastUpdated, ShieldOperationFeatureConfidenceIntervalsConfidenceIntervalsSuggestedThreshold Function()? suggestedThreshold, }) { return ShieldOperationFeatureConfidenceIntervalsConfidenceIntervals(
  lastUpdated: lastUpdated != null ? lastUpdated() : this.lastUpdated,
  suggestedThreshold: suggestedThreshold != null ? suggestedThreshold() : this.suggestedThreshold,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldOperationFeatureConfidenceIntervalsConfidenceIntervals &&
          lastUpdated == other.lastUpdated &&
          suggestedThreshold == other.suggestedThreshold; } 
@override int get hashCode { return Object.hash(lastUpdated, suggestedThreshold); } 
@override String toString() { return 'ShieldOperationFeatureConfidenceIntervalsConfidenceIntervals(lastUpdated: $lastUpdated, suggestedThreshold: $suggestedThreshold)'; } 
 }
