// GENERATED CODE - DO NOT MODIFY BY HAND

final class UrlscannerGetScanResponse2DataPerformance {const UrlscannerGetScanResponse2DataPerformance({required this.duration, required this.entryType, required this.name, required this.startTime, });

factory UrlscannerGetScanResponse2DataPerformance.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanResponse2DataPerformance(
  duration: (json['duration'] as num).toDouble(),
  entryType: json['entryType'] as String,
  name: json['name'] as String,
  startTime: (json['startTime'] as num).toDouble(),
); }

final double duration;

final String entryType;

final String name;

final double startTime;

Map<String, dynamic> toJson() { return {
  'duration': duration,
  'entryType': entryType,
  'name': name,
  'startTime': startTime,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('duration') && json['duration'] is num &&
      json.containsKey('entryType') && json['entryType'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('startTime') && json['startTime'] is num; } 
UrlscannerGetScanResponse2DataPerformance copyWith({double? duration, String? entryType, String? name, double? startTime, }) { return UrlscannerGetScanResponse2DataPerformance(
  duration: duration ?? this.duration,
  entryType: entryType ?? this.entryType,
  name: name ?? this.name,
  startTime: startTime ?? this.startTime,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanResponse2DataPerformance &&
          duration == other.duration &&
          entryType == other.entryType &&
          name == other.name &&
          startTime == other.startTime; } 
@override int get hashCode { return Object.hash(duration, entryType, name, startTime); } 
@override String toString() { return 'UrlscannerGetScanResponse2DataPerformance(duration: $duration, entryType: $entryType, name: $name, startTime: $startTime)'; } 
 }
