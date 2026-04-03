// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'digital_experience_monitoring_test_stat_pct_over_time_slots.dart';@immutable final class DigitalExperienceMonitoringTestStatPctOverTime {const DigitalExperienceMonitoringTestStatPctOverTime({required this.slots, this.avg, this.max, this.min, });

factory DigitalExperienceMonitoringTestStatPctOverTime.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringTestStatPctOverTime(
  avg: json['avg'] != null ? (json['avg'] as num).toDouble() : null,
  max: json['max'] != null ? (json['max'] as num).toDouble() : null,
  min: json['min'] != null ? (json['min'] as num).toDouble() : null,
  slots: (json['slots'] as List<dynamic>).map((e) => DigitalExperienceMonitoringTestStatPctOverTimeSlots.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// average observed in the time period
final double? avg;

/// highest observed in the time period
final double? max;

/// lowest  observed in the time period
final double? min;

final List<DigitalExperienceMonitoringTestStatPctOverTimeSlots> slots;

Map<String, dynamic> toJson() { return {
  'avg': ?avg,
  'max': ?max,
  'min': ?min,
  'slots': slots.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('slots'); } 
DigitalExperienceMonitoringTestStatPctOverTime copyWith({double? Function()? avg, double? Function()? max, double? Function()? min, List<DigitalExperienceMonitoringTestStatPctOverTimeSlots>? slots, }) { return DigitalExperienceMonitoringTestStatPctOverTime(
  avg: avg != null ? avg() : this.avg,
  max: max != null ? max() : this.max,
  min: min != null ? min() : this.min,
  slots: slots ?? this.slots,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringTestStatPctOverTime &&
          avg == other.avg &&
          max == other.max &&
          min == other.min &&
          listEquals(slots, other.slots); } 
@override int get hashCode { return Object.hash(avg, max, min, Object.hashAll(slots)); } 
@override String toString() { return 'DigitalExperienceMonitoringTestStatPctOverTime(avg: $avg, max: $max, min: $min, slots: $slots)'; } 
 }
