// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'digital_experience_monitoring_test_stat_pct_over_time_slots.dart';@immutable final class DigitalExperienceMonitoringTestStatPctOverTime {const DigitalExperienceMonitoringTestStatPctOverTime({required this.slots, this.avg = const Omittable.absent(), this.max = const Omittable.absent(), this.min = const Omittable.absent(), });

factory DigitalExperienceMonitoringTestStatPctOverTime.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringTestStatPctOverTime(
  avg: json.containsKey('avg') ? Omittable(json['avg'] != null ? (json['avg'] as num).toDouble() : null) : const Omittable.absent(),
  max: json.containsKey('max') ? Omittable(json['max'] != null ? (json['max'] as num).toDouble() : null) : const Omittable.absent(),
  min: json.containsKey('min') ? Omittable(json['min'] != null ? (json['min'] as num).toDouble() : null) : const Omittable.absent(),
  slots: (json['slots'] as List<dynamic>).map((e) => DigitalExperienceMonitoringTestStatPctOverTimeSlots.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// average observed in the time period
final Omittable<double?> avg;

/// highest observed in the time period
final Omittable<double?> max;

/// lowest  observed in the time period
final Omittable<double?> min;

final List<DigitalExperienceMonitoringTestStatPctOverTimeSlots> slots;

Map<String, dynamic> toJson() { return {
  if (avg.isPresent) 'avg': avg.value,
  if (max.isPresent) 'max': max.value,
  if (min.isPresent) 'min': min.value,
  'slots': slots.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('slots'); } 
DigitalExperienceMonitoringTestStatPctOverTime copyWith({Omittable<double?>? avg, Omittable<double?>? max, Omittable<double?>? min, List<DigitalExperienceMonitoringTestStatPctOverTimeSlots>? slots, }) { return DigitalExperienceMonitoringTestStatPctOverTime(
  avg: avg ?? this.avg,
  max: max ?? this.max,
  min: min ?? this.min,
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
