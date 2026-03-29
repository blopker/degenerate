// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetBgpIpsTimeseriesResponseResultMetaDelayAsnDataLatest {const RadarGetBgpIpsTimeseriesResponseResultMetaDelayAsnDataLatest({required this.entriesCount, required this.path, required this.timestamp, });

factory RadarGetBgpIpsTimeseriesResponseResultMetaDelayAsnDataLatest.fromJson(Map<String, dynamic> json) { return RadarGetBgpIpsTimeseriesResponseResultMetaDelayAsnDataLatest(
  entriesCount: (json['entries_count'] as num).toDouble(),
  path: json['path'] as String,
  timestamp: (json['timestamp'] as num).toDouble(),
); }

final double entriesCount;

final String path;

final double timestamp;

Map<String, dynamic> toJson() { return {
  'entries_count': entriesCount,
  'path': path,
  'timestamp': timestamp,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('entries_count') && json['entries_count'] is num &&
      json.containsKey('path') && json['path'] is String &&
      json.containsKey('timestamp') && json['timestamp'] is num; } 
RadarGetBgpIpsTimeseriesResponseResultMetaDelayAsnDataLatest copyWith({double? entriesCount, String? path, double? timestamp, }) { return RadarGetBgpIpsTimeseriesResponseResultMetaDelayAsnDataLatest(
  entriesCount: entriesCount ?? this.entriesCount,
  path: path ?? this.path,
  timestamp: timestamp ?? this.timestamp,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetBgpIpsTimeseriesResponseResultMetaDelayAsnDataLatest &&
          entriesCount == other.entriesCount &&
          path == other.path &&
          timestamp == other.timestamp; } 
@override int get hashCode { return Object.hash(entriesCount, path, timestamp); } 
@override String toString() { return 'RadarGetBgpIpsTimeseriesResponseResultMetaDelayAsnDataLatest(entriesCount: $entriesCount, path: $path, timestamp: $timestamp)'; } 
 }
