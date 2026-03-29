// GENERATED CODE - DO NOT MODIFY BY HAND

final class DigitalExperienceMonitoringTestsResponseOverviewMetrics {const DigitalExperienceMonitoringTestsResponseOverviewMetrics({this.avgHttpAvailabilityPct, this.avgTracerouteAvailabilityPct, required this.testsTotal, });

factory DigitalExperienceMonitoringTestsResponseOverviewMetrics.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringTestsResponseOverviewMetrics(
  avgHttpAvailabilityPct: json['avgHttpAvailabilityPct'] != null ? (json['avgHttpAvailabilityPct'] as num).toDouble() : null,
  avgTracerouteAvailabilityPct: json['avgTracerouteAvailabilityPct'] != null ? (json['avgTracerouteAvailabilityPct'] as num).toDouble() : null,
  testsTotal: (json['testsTotal'] as num).toInt(),
); }

/// percentage availability for all HTTP test results in response
final double? avgHttpAvailabilityPct;

/// percentage availability for all traceroutes results in response
final double? avgTracerouteAvailabilityPct;

/// number of  tests.
final int testsTotal;

Map<String, dynamic> toJson() { return {
  'avgHttpAvailabilityPct': ?avgHttpAvailabilityPct,
  'avgTracerouteAvailabilityPct': ?avgTracerouteAvailabilityPct,
  'testsTotal': testsTotal,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('testsTotal') && json['testsTotal'] is num; } 
DigitalExperienceMonitoringTestsResponseOverviewMetrics copyWith({double? Function()? avgHttpAvailabilityPct, double? Function()? avgTracerouteAvailabilityPct, int? testsTotal, }) { return DigitalExperienceMonitoringTestsResponseOverviewMetrics(
  avgHttpAvailabilityPct: avgHttpAvailabilityPct != null ? avgHttpAvailabilityPct() : this.avgHttpAvailabilityPct,
  avgTracerouteAvailabilityPct: avgTracerouteAvailabilityPct != null ? avgTracerouteAvailabilityPct() : this.avgTracerouteAvailabilityPct,
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
