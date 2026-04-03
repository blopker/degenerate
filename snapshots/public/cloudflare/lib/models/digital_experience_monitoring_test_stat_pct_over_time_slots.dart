// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DigitalExperienceMonitoringTestStatPctOverTimeSlots {const DigitalExperienceMonitoringTestStatPctOverTimeSlots({required this.timestamp, required this.value, });

factory DigitalExperienceMonitoringTestStatPctOverTimeSlots.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringTestStatPctOverTimeSlots(
  timestamp: json['timestamp'] as String,
  value: (json['value'] as num).toDouble(),
); }

final String timestamp;

final double value;

Map<String, dynamic> toJson() { return {
  'timestamp': timestamp,
  'value': value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('timestamp') && json['timestamp'] is String &&
      json.containsKey('value') && json['value'] is num; } 
DigitalExperienceMonitoringTestStatPctOverTimeSlots copyWith({String? timestamp, double? value, }) { return DigitalExperienceMonitoringTestStatPctOverTimeSlots(
  timestamp: timestamp ?? this.timestamp,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringTestStatPctOverTimeSlots &&
          timestamp == other.timestamp &&
          value == other.value; } 
@override int get hashCode { return Object.hash(timestamp, value); } 
@override String toString() { return 'DigitalExperienceMonitoringTestStatPctOverTimeSlots(timestamp: $timestamp, value: $value)'; } 
 }
