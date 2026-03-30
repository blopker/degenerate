// GENERATED CODE - DO NOT MODIFY BY HAND

import 'digital_experience_monitoring_fleet_status_live_response_result_device_stats.dart';final class DigitalExperienceMonitoringFleetStatusLiveResponseResult {const DigitalExperienceMonitoringFleetStatusLiveResponseResult({this.deviceStats});

factory DigitalExperienceMonitoringFleetStatusLiveResponseResult.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringFleetStatusLiveResponseResult(
  deviceStats: json['deviceStats'] != null ? DigitalExperienceMonitoringFleetStatusLiveResponseResultDeviceStats.fromJson(json['deviceStats'] as Map<String, dynamic>) : null,
); }

final DigitalExperienceMonitoringFleetStatusLiveResponseResultDeviceStats? deviceStats;

Map<String, dynamic> toJson() { return {
  if (deviceStats != null) 'deviceStats': deviceStats?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'deviceStats'}.contains(key)); } 
DigitalExperienceMonitoringFleetStatusLiveResponseResult copyWith({DigitalExperienceMonitoringFleetStatusLiveResponseResultDeviceStats Function()? deviceStats}) { return DigitalExperienceMonitoringFleetStatusLiveResponseResult(
  deviceStats: deviceStats != null ? deviceStats() : this.deviceStats,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringFleetStatusLiveResponseResult &&
          deviceStats == other.deviceStats; } 
@override int get hashCode { return deviceStats.hashCode; } 
@override String toString() { return 'DigitalExperienceMonitoringFleetStatusLiveResponseResult(deviceStats: $deviceStats)'; } 
 }
