// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'digital_experience_monitoring_timing_aggregates.dart';@immutable final class DigitalExperienceMonitoringTestsResponseTestsHttpResults {const DigitalExperienceMonitoringTestsResponseTestsHttpResults({required this.resourceFetchTime});

factory DigitalExperienceMonitoringTestsResponseTestsHttpResults.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringTestsResponseTestsHttpResults(
  resourceFetchTime: DigitalExperienceMonitoringTimingAggregates.fromJson(json['resourceFetchTime'] as Map<String, dynamic>),
); }

final DigitalExperienceMonitoringTimingAggregates resourceFetchTime;

Map<String, dynamic> toJson() { return {
  'resourceFetchTime': resourceFetchTime.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('resourceFetchTime'); } 
DigitalExperienceMonitoringTestsResponseTestsHttpResults copyWith({DigitalExperienceMonitoringTimingAggregates? resourceFetchTime}) { return DigitalExperienceMonitoringTestsResponseTestsHttpResults(
  resourceFetchTime: resourceFetchTime ?? this.resourceFetchTime,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringTestsResponseTestsHttpResults &&
          resourceFetchTime == other.resourceFetchTime; } 
@override int get hashCode { return resourceFetchTime.hashCode; } 
@override String toString() { return 'DigitalExperienceMonitoringTestsResponseTestsHttpResults(resourceFetchTime: $resourceFetchTime)'; } 
 }
