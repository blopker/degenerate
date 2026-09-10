// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'digital_experience_monitoring_aggregate_time_period.dart';@immutable final class DigitalExperienceMonitoringAggregateStat {const DigitalExperienceMonitoringAggregateStat({required this.timePeriod, this.avgMs = const Omittable.absent(), this.deltaPct = const Omittable.absent(), });

factory DigitalExperienceMonitoringAggregateStat.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringAggregateStat(
  avgMs: json.containsKey('avgMs') ? Omittable(json['avgMs'] != null ? (json['avgMs'] as num).toInt() : null) : const Omittable.absent(),
  deltaPct: json.containsKey('deltaPct') ? Omittable(json['deltaPct'] != null ? (json['deltaPct'] as num).toDouble() : null) : const Omittable.absent(),
  timePeriod: DigitalExperienceMonitoringAggregateTimePeriod.fromJson(json['timePeriod'] as Map<String, dynamic>),
); }

final Omittable<int?> avgMs;

final Omittable<double?> deltaPct;

final DigitalExperienceMonitoringAggregateTimePeriod timePeriod;

Map<String, dynamic> toJson() { return {
  if (avgMs.isPresent) 'avgMs': avgMs.value,
  if (deltaPct.isPresent) 'deltaPct': deltaPct.value,
  'timePeriod': timePeriod.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('timePeriod'); } 
DigitalExperienceMonitoringAggregateStat copyWith({Omittable<int?>? avgMs, Omittable<double?>? deltaPct, DigitalExperienceMonitoringAggregateTimePeriod? timePeriod, }) { return DigitalExperienceMonitoringAggregateStat(
  avgMs: avgMs ?? this.avgMs,
  deltaPct: deltaPct ?? this.deltaPct,
  timePeriod: timePeriod ?? this.timePeriod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringAggregateStat &&
          avgMs == other.avgMs &&
          deltaPct == other.deltaPct &&
          timePeriod == other.timePeriod; } 
@override int get hashCode { return Object.hash(avgMs, deltaPct, timePeriod); } 
@override String toString() { return 'DigitalExperienceMonitoringAggregateStat(avgMs: $avgMs, deltaPct: $deltaPct, timePeriod: $timePeriod)'; } 
 }
