// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DigitalExperienceMonitoringTestsResponseOverviewMetrics {const DigitalExperienceMonitoringTestsResponseOverviewMetrics({required this.testsTotal, this.avgHttpAvailabilityPct = const Omittable.absent(), this.avgTracerouteAvailabilityPct = const Omittable.absent(), });

factory DigitalExperienceMonitoringTestsResponseOverviewMetrics.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringTestsResponseOverviewMetrics(
  avgHttpAvailabilityPct: json.containsKey('avgHttpAvailabilityPct') ? Omittable(json['avgHttpAvailabilityPct'] != null ? (json['avgHttpAvailabilityPct'] as num).toDouble() : null) : const Omittable.absent(),
  avgTracerouteAvailabilityPct: json.containsKey('avgTracerouteAvailabilityPct') ? Omittable(json['avgTracerouteAvailabilityPct'] != null ? (json['avgTracerouteAvailabilityPct'] as num).toDouble() : null) : const Omittable.absent(),
  testsTotal: (json['testsTotal'] as num).toInt(),
); }

/// percentage availability for all HTTP test results in response
final Omittable<double?> avgHttpAvailabilityPct;

/// percentage availability for all traceroutes results in response
final Omittable<double?> avgTracerouteAvailabilityPct;

/// number of  tests.
final int testsTotal;

Map<String, dynamic> toJson() { return {
  if (avgHttpAvailabilityPct.isPresent) 'avgHttpAvailabilityPct': avgHttpAvailabilityPct.value,
  if (avgTracerouteAvailabilityPct.isPresent) 'avgTracerouteAvailabilityPct': avgTracerouteAvailabilityPct.value,
  'testsTotal': testsTotal,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('testsTotal') && json['testsTotal'] is num; } 
DigitalExperienceMonitoringTestsResponseOverviewMetrics copyWith({Omittable<double?>? avgHttpAvailabilityPct, Omittable<double?>? avgTracerouteAvailabilityPct, int? testsTotal, }) { return DigitalExperienceMonitoringTestsResponseOverviewMetrics(
  avgHttpAvailabilityPct: avgHttpAvailabilityPct ?? this.avgHttpAvailabilityPct,
  avgTracerouteAvailabilityPct: avgTracerouteAvailabilityPct ?? this.avgTracerouteAvailabilityPct,
  testsTotal: testsTotal ?? this.testsTotal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringTestsResponseOverviewMetrics &&
          avgHttpAvailabilityPct == other.avgHttpAvailabilityPct &&
          avgTracerouteAvailabilityPct == other.avgTracerouteAvailabilityPct &&
          testsTotal == other.testsTotal; } 
@override int get hashCode { return Object.hash(avgHttpAvailabilityPct, avgTracerouteAvailabilityPct, testsTotal); } 
@override String toString() { return 'DigitalExperienceMonitoringTestsResponseOverviewMetrics(avgHttpAvailabilityPct: $avgHttpAvailabilityPct, avgTracerouteAvailabilityPct: $avgTracerouteAvailabilityPct, testsTotal: $testsTotal)'; } 
 }
