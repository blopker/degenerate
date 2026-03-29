// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetBgpIpsTimeseriesResponseResultMetaDelayCountryDataLatest {const RadarGetBgpIpsTimeseriesResponseResultMetaDelayCountryDataLatest({required this.count, required this.timestamp, });

factory RadarGetBgpIpsTimeseriesResponseResultMetaDelayCountryDataLatest.fromJson(Map<String, dynamic> json) { return RadarGetBgpIpsTimeseriesResponseResultMetaDelayCountryDataLatest(
  count: (json['count'] as num).toDouble(),
  timestamp: (json['timestamp'] as num).toDouble(),
); }

final double count;

final double timestamp;

Map<String, dynamic> toJson() { return {
  'count': count,
  'timestamp': timestamp,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('count') && json['count'] is num &&
      json.containsKey('timestamp') && json['timestamp'] is num; } 
RadarGetBgpIpsTimeseriesResponseResultMetaDelayCountryDataLatest copyWith({double? count, double? timestamp, }) { return RadarGetBgpIpsTimeseriesResponseResultMetaDelayCountryDataLatest(
  count: count ?? this.count,
  timestamp: timestamp ?? this.timestamp,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetBgpIpsTimeseriesResponseResultMetaDelayCountryDataLatest &&
          count == other.count &&
          timestamp == other.timestamp; } 
@override int get hashCode { return Object.hash(count, timestamp); } 
@override String toString() { return 'RadarGetBgpIpsTimeseriesResponseResultMetaDelayCountryDataLatest(count: $count, timestamp: $timestamp)'; } 
 }
