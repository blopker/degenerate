// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_action.dart';import 'firewall_match.dart';import 'firewall_period.dart';import 'firewall_threshold.dart';@immutable final class RateLimitsForAZoneUpdateARateLimitRequest {const RateLimitsForAZoneUpdateARateLimitRequest({required this.action, required this.match, required this.period, required this.threshold, });

factory RateLimitsForAZoneUpdateARateLimitRequest.fromJson(Map<String, dynamic> json) { return RateLimitsForAZoneUpdateARateLimitRequest(
  action: FirewallAction.fromJson(json['action'] as Map<String, dynamic>),
  match: FirewallMatch.fromJson(json['match'] as Map<String, dynamic>),
  period: FirewallPeriod.fromJson(json['period'] as num),
  threshold: FirewallThreshold.fromJson(json['threshold'] as num),
); }

final FirewallAction action;

final FirewallMatch match;

/// The time in seconds (an integer value) to count matching traffic. If the count exceeds the configured threshold within this period, Cloudflare will perform the configured action.
final FirewallPeriod period;

/// The threshold that will trigger the configured mitigation action. Configure this value along with the `period` property to establish a threshold per period.
final FirewallThreshold threshold;

Map<String, dynamic> toJson() { return {
  'action': action.toJson(),
  'match': match.toJson(),
  'period': period.toJson(),
  'threshold': threshold.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('action') &&
      json.containsKey('match') &&
      json.containsKey('period') &&
      json.containsKey('threshold'); } 
RateLimitsForAZoneUpdateARateLimitRequest copyWith({FirewallAction? action, FirewallMatch? match, FirewallPeriod? period, FirewallThreshold? threshold, }) { return RateLimitsForAZoneUpdateARateLimitRequest(
  action: action ?? this.action,
  match: match ?? this.match,
  period: period ?? this.period,
  threshold: threshold ?? this.threshold,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RateLimitsForAZoneUpdateARateLimitRequest &&
          action == other.action &&
          match == other.match &&
          period == other.period &&
          threshold == other.threshold; } 
@override int get hashCode { return Object.hash(action, match, period, threshold); } 
@override String toString() { return 'RateLimitsForAZoneUpdateARateLimitRequest(action: $action, match: $match, period: $period, threshold: $threshold)'; } 
 }
