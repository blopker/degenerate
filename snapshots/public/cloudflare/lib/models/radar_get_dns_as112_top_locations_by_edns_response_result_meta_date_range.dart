// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetDnsAs112TopLocationsByEdnsResponseResultMetaDateRange {const RadarGetDnsAs112TopLocationsByEdnsResponseResultMetaDateRange({required this.endTime, required this.startTime, });

factory RadarGetDnsAs112TopLocationsByEdnsResponseResultMetaDateRange.fromJson(Map<String, dynamic> json) { return RadarGetDnsAs112TopLocationsByEdnsResponseResultMetaDateRange(
  endTime: DateTime.parse(json['endTime'] as String),
  startTime: DateTime.parse(json['startTime'] as String),
); }

/// Adjusted end of date range.
final DateTime endTime;

/// Adjusted start of date range.
final DateTime startTime;

Map<String, dynamic> toJson() { return {
  'endTime': endTime.toIso8601String(),
  'startTime': startTime.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('endTime') && json['endTime'] is String &&
      json.containsKey('startTime') && json['startTime'] is String; } 
RadarGetDnsAs112TopLocationsByEdnsResponseResultMetaDateRange copyWith({DateTime? endTime, DateTime? startTime, }) { return RadarGetDnsAs112TopLocationsByEdnsResponseResultMetaDateRange(
  endTime: endTime ?? this.endTime,
  startTime: startTime ?? this.startTime,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsAs112TopLocationsByEdnsResponseResultMetaDateRange &&
          endTime == other.endTime &&
          startTime == other.startTime; } 
@override int get hashCode { return Object.hash(endTime, startTime); } 
@override String toString() { return 'RadarGetDnsAs112TopLocationsByEdnsResponseResultMetaDateRange(endTime: $endTime, startTime: $startTime)'; } 
 }
