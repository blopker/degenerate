// GENERATED CODE - DO NOT MODIFY BY HAND

import 'digital_experience_monitoring_timing_aggregates.dart';final class DigitalExperienceMonitoringTestsResponseTestsHttpResultsByColo {const DigitalExperienceMonitoringTestsResponseTestsHttpResultsByColo({required this.colo, required this.resourceFetchTime, });

factory DigitalExperienceMonitoringTestsResponseTestsHttpResultsByColo.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringTestsResponseTestsHttpResultsByColo(
  colo: json['colo'] as String,
  resourceFetchTime: DigitalExperienceMonitoringTimingAggregates.fromJson(json['resourceFetchTime'] as Map<String, dynamic>),
); }

/// Cloudflare colo
final String colo;

final DigitalExperienceMonitoringTimingAggregates resourceFetchTime;

Map<String, dynamic> toJson() { return {
  'colo': colo,
  'resourceFetchTime': resourceFetchTime.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('colo') && json['colo'] is String &&
      json.containsKey('resourceFetchTime'); } 
DigitalExperienceMonitoringTestsResponseTestsHttpResultsByColo copyWith({String? colo, DigitalExperienceMonitoringTimingAggregates? resourceFetchTime, }) { return DigitalExperienceMonitoringTestsResponseTestsHttpResultsByColo(
  colo: colo ?? this.colo,
  resourceFetchTime: resourceFetchTime ?? this.resourceFetchTime,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringTestsResponseTestsHttpResultsByColo &&
          colo == other.colo &&
          resourceFetchTime == other.resourceFetchTime; } 
@override int get hashCode { return Object.hash(colo, resourceFetchTime); } 
@override String toString() { return 'DigitalExperienceMonitoringTestsResponseTestsHttpResultsByColo(colo: $colo, resourceFetchTime: $resourceFetchTime)'; } 
 }
