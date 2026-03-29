// GENERATED CODE - DO NOT MODIFY BY HAND

final class GetOrgAnalyticsResponseDataRecordingStatsDayStats {const GetOrgAnalyticsResponseDataRecordingStatsDayStats({this.day, this.totalRecordingMinutes, this.totalRecordings, });

factory GetOrgAnalyticsResponseDataRecordingStatsDayStats.fromJson(Map<String, dynamic> json) { return GetOrgAnalyticsResponseDataRecordingStatsDayStats(
  day: json['day'] as String?,
  totalRecordingMinutes: json['total_recording_minutes'] != null ? (json['total_recording_minutes'] as num).toInt() : null,
  totalRecordings: json['total_recordings'] != null ? (json['total_recordings'] as num).toInt() : null,
); }

final String? day;

/// Total recording minutes for a specific day
final int? totalRecordingMinutes;

/// Total number of recordings for a specific day
final int? totalRecordings;

Map<String, dynamic> toJson() { return {
  'day': ?day,
  'total_recording_minutes': ?totalRecordingMinutes,
  'total_recordings': ?totalRecordings,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
GetOrgAnalyticsResponseDataRecordingStatsDayStats copyWith({String Function()? day, int Function()? totalRecordingMinutes, int Function()? totalRecordings, }) { return GetOrgAnalyticsResponseDataRecordingStatsDayStats(
  day: day != null ? day() : this.day,
  totalRecordingMinutes: totalRecordingMinutes != null ? totalRecordingMinutes() : this.totalRecordingMinutes,
  totalRecordings: totalRecordings != null ? totalRecordings() : this.totalRecordings,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GetOrgAnalyticsResponseDataRecordingStatsDayStats &&
          day == other.day &&
          totalRecordingMinutes == other.totalRecordingMinutes &&
          totalRecordings == other.totalRecordings; } 
@override int get hashCode { return Object.hash(day, totalRecordingMinutes, totalRecordings); } 
@override String toString() { return 'GetOrgAnalyticsResponseDataRecordingStatsDayStats(day: $day, totalRecordingMinutes: $totalRecordingMinutes, totalRecordings: $totalRecordings)'; } 
 }
