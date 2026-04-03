// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'digital_experience_monitoring_fleet_status_over_time_response_result_device_stats.dart';@immutable final class DigitalExperienceMonitoringFleetStatusOverTimeResponseResult {const DigitalExperienceMonitoringFleetStatusOverTimeResponseResult({this.deviceStats});

factory DigitalExperienceMonitoringFleetStatusOverTimeResponseResult.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringFleetStatusOverTimeResponseResult(
  deviceStats: json['deviceStats'] != null ? DigitalExperienceMonitoringFleetStatusOverTimeResponseResultDeviceStats.fromJson(json['deviceStats'] as Map<String, dynamic>) : null,
); }

final DigitalExperienceMonitoringFleetStatusOverTimeResponseResultDeviceStats? deviceStats;

Map<String, dynamic> toJson() { return {
  if (deviceStats != null) 'deviceStats': deviceStats?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'deviceStats'}.contains(key)); } 
DigitalExperienceMonitoringFleetStatusOverTimeResponseResult copyWith({DigitalExperienceMonitoringFleetStatusOverTimeResponseResultDeviceStats Function()? deviceStats}) { return DigitalExperienceMonitoringFleetStatusOverTimeResponseResult(
  deviceStats: deviceStats != null ? deviceStats() : this.deviceStats,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringFleetStatusOverTimeResponseResult &&
          deviceStats == other.deviceStats; } 
@override int get hashCode { return deviceStats.hashCode; } 
@override String toString() { return 'DigitalExperienceMonitoringFleetStatusOverTimeResponseResult(deviceStats: $deviceStats)'; } 
 }
