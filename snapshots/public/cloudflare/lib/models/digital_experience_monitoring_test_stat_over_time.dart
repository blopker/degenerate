// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'digital_experience_monitoring_test_stat_over_time_slots.dart';@immutable final class DigitalExperienceMonitoringTestStatOverTime {const DigitalExperienceMonitoringTestStatOverTime({required this.slots, this.avg, this.max, this.min, });

factory DigitalExperienceMonitoringTestStatOverTime.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringTestStatOverTime(
  avg: json['avg'] != null ? (json['avg'] as num).toInt() : null,
  max: json['max'] != null ? (json['max'] as num).toInt() : null,
  min: json['min'] != null ? (json['min'] as num).toInt() : null,
  slots: (json['slots'] as List<dynamic>).map((e) => DigitalExperienceMonitoringTestStatOverTimeSlots.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// average observed in the time period
final int? avg;

/// highest observed in the time period
final int? max;

/// lowest observed in the time period
final int? min;

final List<DigitalExperienceMonitoringTestStatOverTimeSlots> slots;

Map<String, dynamic> toJson() { return {
  'avg': ?avg,
  'max': ?max,
  'min': ?min,
  'slots': slots.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('slots'); } 
DigitalExperienceMonitoringTestStatOverTime copyWith({int? Function()? avg, int? Function()? max, int? Function()? min, List<DigitalExperienceMonitoringTestStatOverTimeSlots>? slots, }) { return DigitalExperienceMonitoringTestStatOverTime(
  avg: avg != null ? avg() : this.avg,
  max: max != null ? max() : this.max,
  min: min != null ? min() : this.min,
  slots: slots ?? this.slots,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringTestStatOverTime &&
          avg == other.avg &&
          max == other.max &&
          min == other.min &&
          listEquals(slots, other.slots); } 
@override int get hashCode { return Object.hash(avg, max, min, Object.hashAll(slots)); } 
@override String toString() { return 'DigitalExperienceMonitoringTestStatOverTime(avg: $avg, max: $max, min: $min, slots: $slots)'; } 
 }
