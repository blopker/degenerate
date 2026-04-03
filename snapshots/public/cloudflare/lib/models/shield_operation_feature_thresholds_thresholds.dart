// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_timestamp.dart';/// The total number of auth-ids seen across this calculation.
extension type const ShieldAuthIdTokens(int value) {
factory ShieldAuthIdTokens.fromJson(num json) => ShieldAuthIdTokens(json.toInt());

num toJson() => value;

}
/// The number of data points used for the threshold suggestion calculation.
extension type const ShieldDataPoints(int value) {
factory ShieldDataPoints.fromJson(num json) => ShieldDataPoints(json.toInt());

num toJson() => value;

}
/// The p50 quantile of requests (in period_seconds).
extension type const ShieldP50(int value) {
factory ShieldP50.fromJson(num json) => ShieldP50(json.toInt());

num toJson() => value;

}
/// The p90 quantile of requests (in period_seconds).
extension type const ShieldP90(int value) {
factory ShieldP90.fromJson(num json) => ShieldP90(json.toInt());

num toJson() => value;

}
/// The p99 quantile of requests (in period_seconds).
extension type const ShieldP99(int value) {
factory ShieldP99.fromJson(num json) => ShieldP99(json.toInt());

num toJson() => value;

}
/// The period over which this threshold is suggested.
extension type const ShieldPeriodSeconds(int value) {
factory ShieldPeriodSeconds.fromJson(num json) => ShieldPeriodSeconds(json.toInt());

num toJson() => value;

}
/// The estimated number of requests covered by these calculations.
extension type const ShieldRequests(int value) {
factory ShieldRequests.fromJson(num json) => ShieldRequests(json.toInt());

num toJson() => value;

}
/// The suggested threshold in requests done by the same auth_id or period_seconds.
extension type const ShieldSuggestedThreshold(int value) {
factory ShieldSuggestedThreshold.fromJson(num json) => ShieldSuggestedThreshold(json.toInt());

num toJson() => value;

}
@immutable final class ShieldOperationFeatureThresholdsThresholds {const ShieldOperationFeatureThresholdsThresholds({this.authIdTokens, this.dataPoints, this.lastUpdated, this.p50, this.p90, this.p99, this.periodSeconds, this.requests, this.suggestedThreshold, });

factory ShieldOperationFeatureThresholdsThresholds.fromJson(Map<String, dynamic> json) { return ShieldOperationFeatureThresholdsThresholds(
  authIdTokens: json['auth_id_tokens'] != null ? ShieldAuthIdTokens.fromJson(json['auth_id_tokens'] as num) : null,
  dataPoints: json['data_points'] != null ? ShieldDataPoints.fromJson(json['data_points'] as num) : null,
  lastUpdated: json['last_updated'] != null ? ShieldTimestamp.fromJson(json['last_updated'] as String) : null,
  p50: json['p50'] != null ? ShieldP50.fromJson(json['p50'] as num) : null,
  p90: json['p90'] != null ? ShieldP90.fromJson(json['p90'] as num) : null,
  p99: json['p99'] != null ? ShieldP99.fromJson(json['p99'] as num) : null,
  periodSeconds: json['period_seconds'] != null ? ShieldPeriodSeconds.fromJson(json['period_seconds'] as num) : null,
  requests: json['requests'] != null ? ShieldRequests.fromJson(json['requests'] as num) : null,
  suggestedThreshold: json['suggested_threshold'] != null ? ShieldSuggestedThreshold.fromJson(json['suggested_threshold'] as num) : null,
); }

/// The total number of auth-ids seen across this calculation.
final ShieldAuthIdTokens? authIdTokens;

/// The number of data points used for the threshold suggestion calculation.
final ShieldDataPoints? dataPoints;

final ShieldTimestamp? lastUpdated;

final ShieldP50? p50;

final ShieldP90? p90;

final ShieldP99? p99;

final ShieldPeriodSeconds? periodSeconds;

final ShieldRequests? requests;

final ShieldSuggestedThreshold? suggestedThreshold;

Map<String, dynamic> toJson() { return {
  if (authIdTokens != null) 'auth_id_tokens': authIdTokens?.toJson(),
  if (dataPoints != null) 'data_points': dataPoints?.toJson(),
  if (lastUpdated != null) 'last_updated': lastUpdated?.toJson(),
  if (p50 != null) 'p50': p50?.toJson(),
  if (p90 != null) 'p90': p90?.toJson(),
  if (p99 != null) 'p99': p99?.toJson(),
  if (periodSeconds != null) 'period_seconds': periodSeconds?.toJson(),
  if (requests != null) 'requests': requests?.toJson(),
  if (suggestedThreshold != null) 'suggested_threshold': suggestedThreshold?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'auth_id_tokens', 'data_points', 'last_updated', 'p50', 'p90', 'p99', 'period_seconds', 'requests', 'suggested_threshold'}.contains(key)); } 
ShieldOperationFeatureThresholdsThresholds copyWith({ShieldAuthIdTokens Function()? authIdTokens, ShieldDataPoints Function()? dataPoints, ShieldTimestamp Function()? lastUpdated, ShieldP50 Function()? p50, ShieldP90 Function()? p90, ShieldP99 Function()? p99, ShieldPeriodSeconds Function()? periodSeconds, ShieldRequests Function()? requests, ShieldSuggestedThreshold Function()? suggestedThreshold, }) { return ShieldOperationFeatureThresholdsThresholds(
  authIdTokens: authIdTokens != null ? authIdTokens() : this.authIdTokens,
  dataPoints: dataPoints != null ? dataPoints() : this.dataPoints,
  lastUpdated: lastUpdated != null ? lastUpdated() : this.lastUpdated,
  p50: p50 != null ? p50() : this.p50,
  p90: p90 != null ? p90() : this.p90,
  p99: p99 != null ? p99() : this.p99,
  periodSeconds: periodSeconds != null ? periodSeconds() : this.periodSeconds,
  requests: requests != null ? requests() : this.requests,
  suggestedThreshold: suggestedThreshold != null ? suggestedThreshold() : this.suggestedThreshold,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldOperationFeatureThresholdsThresholds &&
          authIdTokens == other.authIdTokens &&
          dataPoints == other.dataPoints &&
          lastUpdated == other.lastUpdated &&
          p50 == other.p50 &&
          p90 == other.p90 &&
          p99 == other.p99 &&
          periodSeconds == other.periodSeconds &&
          requests == other.requests &&
          suggestedThreshold == other.suggestedThreshold; } 
@override int get hashCode { return Object.hash(authIdTokens, dataPoints, lastUpdated, p50, p90, p99, periodSeconds, requests, suggestedThreshold); } 
@override String toString() { return 'ShieldOperationFeatureThresholdsThresholds(authIdTokens: $authIdTokens, dataPoints: $dataPoints, lastUpdated: $lastUpdated, p50: $p50, p90: $p90, p99: $p99, periodSeconds: $periodSeconds, requests: $requests, suggestedThreshold: $suggestedThreshold)'; } 
 }
