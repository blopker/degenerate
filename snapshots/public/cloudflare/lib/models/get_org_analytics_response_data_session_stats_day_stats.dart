// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetOrgAnalyticsResponseDataSessionStatsDayStats {const GetOrgAnalyticsResponseDataSessionStatsDayStats({this.day, this.totalSessionMinutes, this.totalSessions, });

factory GetOrgAnalyticsResponseDataSessionStatsDayStats.fromJson(Map<String, dynamic> json) { return GetOrgAnalyticsResponseDataSessionStatsDayStats(
  day: json['day'] as String?,
  totalSessionMinutes: json['total_session_minutes'] != null ? (json['total_session_minutes'] as num).toDouble() : null,
  totalSessions: json['total_sessions'] != null ? (json['total_sessions'] as num).toInt() : null,
); }

final String? day;

/// Total session minutes for a specific day
final double? totalSessionMinutes;

/// Total number of sessions for a specific day
final int? totalSessions;

Map<String, dynamic> toJson() { return {
  'day': ?day,
  'total_session_minutes': ?totalSessionMinutes,
  'total_sessions': ?totalSessions,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'day', 'total_session_minutes', 'total_sessions'}.contains(key)); } 
GetOrgAnalyticsResponseDataSessionStatsDayStats copyWith({String Function()? day, double Function()? totalSessionMinutes, int Function()? totalSessions, }) { return GetOrgAnalyticsResponseDataSessionStatsDayStats(
  day: day != null ? day() : this.day,
  totalSessionMinutes: totalSessionMinutes != null ? totalSessionMinutes() : this.totalSessionMinutes,
  totalSessions: totalSessions != null ? totalSessions() : this.totalSessions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetOrgAnalyticsResponseDataSessionStatsDayStats &&
          day == other.day &&
          totalSessionMinutes == other.totalSessionMinutes &&
          totalSessions == other.totalSessions; } 
@override int get hashCode { return Object.hash(day, totalSessionMinutes, totalSessions); } 
@override String toString() { return 'GetOrgAnalyticsResponseDataSessionStatsDayStats(day: $day, totalSessionMinutes: $totalSessionMinutes, totalSessions: $totalSessions)'; } 
 }
