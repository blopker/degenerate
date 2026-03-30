// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'digital_experience_monitoring_schemas_aggregate_stat.dart';import 'digital_experience_monitoring_unique_devices_total.dart';final class DigitalExperienceMonitoringFleetStatusOverTimeResponseResultDeviceStats {const DigitalExperienceMonitoringFleetStatusOverTimeResponseResultDeviceStats({this.byMode, this.byStatus, this.uniqueDevicesTotal, });

factory DigitalExperienceMonitoringFleetStatusOverTimeResponseResultDeviceStats.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringFleetStatusOverTimeResponseResultDeviceStats(
  byMode: (json['byMode'] as List<dynamic>?)?.map((e) => DigitalExperienceMonitoringSchemasAggregateStat.fromJson(e as Map<String, dynamic>)).toList(),
  byStatus: (json['byStatus'] as List<dynamic>?)?.map((e) => DigitalExperienceMonitoringSchemasAggregateStat.fromJson(e as Map<String, dynamic>)).toList(),
  uniqueDevicesTotal: json['uniqueDevicesTotal'] != null ? DigitalExperienceMonitoringUniqueDevicesTotal.fromJson(json['uniqueDevicesTotal'] as num) : null,
); }

final List<DigitalExperienceMonitoringSchemasAggregateStat>? byMode;

final List<DigitalExperienceMonitoringSchemasAggregateStat>? byStatus;

final DigitalExperienceMonitoringUniqueDevicesTotal? uniqueDevicesTotal;

Map<String, dynamic> toJson() { return {
  if (byMode != null) 'byMode': byMode?.map((e) => e.toJson()).toList(),
  if (byStatus != null) 'byStatus': byStatus?.map((e) => e.toJson()).toList(),
  if (uniqueDevicesTotal != null) 'uniqueDevicesTotal': uniqueDevicesTotal?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'byMode', 'byStatus', 'uniqueDevicesTotal'}.contains(key)); } 
DigitalExperienceMonitoringFleetStatusOverTimeResponseResultDeviceStats copyWith({List<DigitalExperienceMonitoringSchemasAggregateStat> Function()? byMode, List<DigitalExperienceMonitoringSchemasAggregateStat> Function()? byStatus, DigitalExperienceMonitoringUniqueDevicesTotal Function()? uniqueDevicesTotal, }) { return DigitalExperienceMonitoringFleetStatusOverTimeResponseResultDeviceStats(
  byMode: byMode != null ? byMode() : this.byMode,
  byStatus: byStatus != null ? byStatus() : this.byStatus,
  uniqueDevicesTotal: uniqueDevicesTotal != null ? uniqueDevicesTotal() : this.uniqueDevicesTotal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringFleetStatusOverTimeResponseResultDeviceStats &&
          listEquals(byMode, other.byMode) &&
          listEquals(byStatus, other.byStatus) &&
          uniqueDevicesTotal == other.uniqueDevicesTotal; } 
@override int get hashCode { return Object.hash(Object.hashAll(byMode ?? const []), Object.hashAll(byStatus ?? const []), uniqueDevicesTotal); } 
@override String toString() { return 'DigitalExperienceMonitoringFleetStatusOverTimeResponseResultDeviceStats(byMode: $byMode, byStatus: $byStatus, uniqueDevicesTotal: $uniqueDevicesTotal)'; } 
 }
