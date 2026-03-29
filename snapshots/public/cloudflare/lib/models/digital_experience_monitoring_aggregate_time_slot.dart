// GENERATED CODE - DO NOT MODIFY BY HAND

final class DigitalExperienceMonitoringAggregateTimeSlot {const DigitalExperienceMonitoringAggregateTimeSlot({required this.avgMs, required this.timestamp, });

factory DigitalExperienceMonitoringAggregateTimeSlot.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringAggregateTimeSlot(
  avgMs: (json['avgMs'] as num).toInt(),
  timestamp: json['timestamp'] as String,
); }

final int avgMs;

final String timestamp;

Map<String, dynamic> toJson() { return {
  'avgMs': avgMs,
  'timestamp': timestamp,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('avgMs') && json['avgMs'] is num &&
      json.containsKey('timestamp') && json['timestamp'] is String; } 
DigitalExperienceMonitoringAggregateTimeSlot copyWith({int? avgMs, String? timestamp, }) { return DigitalExperienceMonitoringAggregateTimeSlot(
  avgMs: avgMs ?? this.avgMs,
  timestamp: timestamp ?? this.timestamp,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringAggregateTimeSlot &&
          avgMs == other.avgMs &&
          timestamp == other.timestamp; } 
@override int get hashCode { return Object.hash(avgMs, timestamp); } 
@override String toString() { return 'DigitalExperienceMonitoringAggregateTimeSlot(avgMs: $avgMs, timestamp: $timestamp)'; } 
 }
