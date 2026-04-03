// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_confidence_intervals_bounds.dart';@immutable final class ShieldOperationFeatureConfidenceIntervalsConfidenceIntervalsSuggestedThresholdConfidenceIntervals {const ShieldOperationFeatureConfidenceIntervalsConfidenceIntervalsSuggestedThresholdConfidenceIntervals({this.p90, this.p95, this.p99, });

factory ShieldOperationFeatureConfidenceIntervalsConfidenceIntervalsSuggestedThresholdConfidenceIntervals.fromJson(Map<String, dynamic> json) { return ShieldOperationFeatureConfidenceIntervalsConfidenceIntervalsSuggestedThresholdConfidenceIntervals(
  p90: json['p90'] != null ? ShieldConfidenceIntervalsBounds.fromJson(json['p90'] as Map<String, dynamic>) : null,
  p95: json['p95'] != null ? ShieldConfidenceIntervalsBounds.fromJson(json['p95'] as Map<String, dynamic>) : null,
  p99: json['p99'] != null ? ShieldConfidenceIntervalsBounds.fromJson(json['p99'] as Map<String, dynamic>) : null,
); }

final ShieldConfidenceIntervalsBounds? p90;

final ShieldConfidenceIntervalsBounds? p95;

final ShieldConfidenceIntervalsBounds? p99;

Map<String, dynamic> toJson() { return {
  if (p90 != null) 'p90': p90?.toJson(),
  if (p95 != null) 'p95': p95?.toJson(),
  if (p99 != null) 'p99': p99?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'p90', 'p95', 'p99'}.contains(key)); } 
ShieldOperationFeatureConfidenceIntervalsConfidenceIntervalsSuggestedThresholdConfidenceIntervals copyWith({ShieldConfidenceIntervalsBounds Function()? p90, ShieldConfidenceIntervalsBounds Function()? p95, ShieldConfidenceIntervalsBounds Function()? p99, }) { return ShieldOperationFeatureConfidenceIntervalsConfidenceIntervalsSuggestedThresholdConfidenceIntervals(
  p90: p90 != null ? p90() : this.p90,
  p95: p95 != null ? p95() : this.p95,
  p99: p99 != null ? p99() : this.p99,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldOperationFeatureConfidenceIntervalsConfidenceIntervalsSuggestedThresholdConfidenceIntervals &&
          p90 == other.p90 &&
          p95 == other.p95 &&
          p99 == other.p99; } 
@override int get hashCode { return Object.hash(p90, p95, p99); } 
@override String toString() { return 'ShieldOperationFeatureConfidenceIntervalsConfidenceIntervalsSuggestedThresholdConfidenceIntervals(p90: $p90, p95: $p95, p99: $p99)'; } 
 }
