// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RealtimekitDaywiseStats {const RealtimekitDaywiseStats({this.date, this.recordingsMinutesConsumed, this.sessionsCount, this.sessionsMinutesConsumed, });

factory RealtimekitDaywiseStats.fromJson(Map<String, dynamic> json) { return RealtimekitDaywiseStats(
  date: json['date'] as String?,
  recordingsMinutesConsumed: json['recordings_minutes_consumed'] != null ? (json['recordings_minutes_consumed'] as num).toDouble() : null,
  sessionsCount: json['sessions_count'] != null ? (json['sessions_count'] as num).toDouble() : null,
  sessionsMinutesConsumed: json['sessions_minutes_consumed'] != null ? (json['sessions_minutes_consumed'] as num).toDouble() : null,
); }

/// Date in YYYY-MM-DD format
final String? date;

/// Total recordings minutes consumed across all sessions in the given time period.
final double? recordingsMinutesConsumed;

/// Number of sessions_count happened in the given time period
final double? sessionsCount;

/// Total meetings minutes consumed across all sessions in the given time period.
final double? sessionsMinutesConsumed;

Map<String, dynamic> toJson() { return {
  'date': ?date,
  'recordings_minutes_consumed': ?recordingsMinutesConsumed,
  'sessions_count': ?sessionsCount,
  'sessions_minutes_consumed': ?sessionsMinutesConsumed,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'date', 'recordings_minutes_consumed', 'sessions_count', 'sessions_minutes_consumed'}.contains(key)); } 
RealtimekitDaywiseStats copyWith({String Function()? date, double Function()? recordingsMinutesConsumed, double Function()? sessionsCount, double Function()? sessionsMinutesConsumed, }) { return RealtimekitDaywiseStats(
  date: date != null ? date() : this.date,
  recordingsMinutesConsumed: recordingsMinutesConsumed != null ? recordingsMinutesConsumed() : this.recordingsMinutesConsumed,
  sessionsCount: sessionsCount != null ? sessionsCount() : this.sessionsCount,
  sessionsMinutesConsumed: sessionsMinutesConsumed != null ? sessionsMinutesConsumed() : this.sessionsMinutesConsumed,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimekitDaywiseStats &&
          date == other.date &&
          recordingsMinutesConsumed == other.recordingsMinutesConsumed &&
          sessionsCount == other.sessionsCount &&
          sessionsMinutesConsumed == other.sessionsMinutesConsumed; } 
@override int get hashCode { return Object.hash(date, recordingsMinutesConsumed, sessionsCount, sessionsMinutesConsumed); } 
@override String toString() { return 'RealtimekitDaywiseStats(date: $date, recordingsMinutesConsumed: $recordingsMinutesConsumed, sessionsCount: $sessionsCount, sessionsMinutesConsumed: $sessionsMinutesConsumed)'; } 
 }
