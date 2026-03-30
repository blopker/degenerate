// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'digital_experience_monitoring_live_stat.dart';import 'digital_experience_monitoring_unique_devices_total.dart';final class DigitalExperienceMonitoringFleetStatusLiveResponseResultDeviceStats {const DigitalExperienceMonitoringFleetStatusLiveResponseResultDeviceStats({this.byColo, this.byMode, this.byPlatform, this.byStatus, this.byVersion, this.uniqueDevicesTotal, });

factory DigitalExperienceMonitoringFleetStatusLiveResponseResultDeviceStats.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringFleetStatusLiveResponseResultDeviceStats(
  byColo: (json['byColo'] as List<dynamic>?)?.map((e) => DigitalExperienceMonitoringLiveStat.fromJson(e as Map<String, dynamic>)).toList(),
  byMode: (json['byMode'] as List<dynamic>?)?.map((e) => DigitalExperienceMonitoringLiveStat.fromJson(e as Map<String, dynamic>)).toList(),
  byPlatform: (json['byPlatform'] as List<dynamic>?)?.map((e) => DigitalExperienceMonitoringLiveStat.fromJson(e as Map<String, dynamic>)).toList(),
  byStatus: (json['byStatus'] as List<dynamic>?)?.map((e) => DigitalExperienceMonitoringLiveStat.fromJson(e as Map<String, dynamic>)).toList(),
  byVersion: (json['byVersion'] as List<dynamic>?)?.map((e) => DigitalExperienceMonitoringLiveStat.fromJson(e as Map<String, dynamic>)).toList(),
  uniqueDevicesTotal: json['uniqueDevicesTotal'] != null ? DigitalExperienceMonitoringUniqueDevicesTotal.fromJson(json['uniqueDevicesTotal'] as num) : null,
); }

final List<DigitalExperienceMonitoringLiveStat>? byColo;

final List<DigitalExperienceMonitoringLiveStat>? byMode;

final List<DigitalExperienceMonitoringLiveStat>? byPlatform;

final List<DigitalExperienceMonitoringLiveStat>? byStatus;

final List<DigitalExperienceMonitoringLiveStat>? byVersion;

final DigitalExperienceMonitoringUniqueDevicesTotal? uniqueDevicesTotal;

Map<String, dynamic> toJson() { return {
  if (byColo != null) 'byColo': byColo?.map((e) => e.toJson()).toList(),
  if (byMode != null) 'byMode': byMode?.map((e) => e.toJson()).toList(),
  if (byPlatform != null) 'byPlatform': byPlatform?.map((e) => e.toJson()).toList(),
  if (byStatus != null) 'byStatus': byStatus?.map((e) => e.toJson()).toList(),
  if (byVersion != null) 'byVersion': byVersion?.map((e) => e.toJson()).toList(),
  if (uniqueDevicesTotal != null) 'uniqueDevicesTotal': uniqueDevicesTotal?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'byColo', 'byMode', 'byPlatform', 'byStatus', 'byVersion', 'uniqueDevicesTotal'}.contains(key)); } 
DigitalExperienceMonitoringFleetStatusLiveResponseResultDeviceStats copyWith({List<DigitalExperienceMonitoringLiveStat>? Function()? byColo, List<DigitalExperienceMonitoringLiveStat>? Function()? byMode, List<DigitalExperienceMonitoringLiveStat>? Function()? byPlatform, List<DigitalExperienceMonitoringLiveStat>? Function()? byStatus, List<DigitalExperienceMonitoringLiveStat>? Function()? byVersion, DigitalExperienceMonitoringUniqueDevicesTotal Function()? uniqueDevicesTotal, }) { return DigitalExperienceMonitoringFleetStatusLiveResponseResultDeviceStats(
  byColo: byColo != null ? byColo() : this.byColo,
  byMode: byMode != null ? byMode() : this.byMode,
  byPlatform: byPlatform != null ? byPlatform() : this.byPlatform,
  byStatus: byStatus != null ? byStatus() : this.byStatus,
  byVersion: byVersion != null ? byVersion() : this.byVersion,
  uniqueDevicesTotal: uniqueDevicesTotal != null ? uniqueDevicesTotal() : this.uniqueDevicesTotal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringFleetStatusLiveResponseResultDeviceStats &&
          listEquals(byColo, other.byColo) &&
          listEquals(byMode, other.byMode) &&
          listEquals(byPlatform, other.byPlatform) &&
          listEquals(byStatus, other.byStatus) &&
          listEquals(byVersion, other.byVersion) &&
          uniqueDevicesTotal == other.uniqueDevicesTotal; } 
@override int get hashCode { return Object.hash(Object.hashAll(byColo ?? const []), Object.hashAll(byMode ?? const []), Object.hashAll(byPlatform ?? const []), Object.hashAll(byStatus ?? const []), Object.hashAll(byVersion ?? const []), uniqueDevicesTotal); } 
@override String toString() { return 'DigitalExperienceMonitoringFleetStatusLiveResponseResultDeviceStats(byColo: $byColo, byMode: $byMode, byPlatform: $byPlatform, byStatus: $byStatus, byVersion: $byVersion, uniqueDevicesTotal: $uniqueDevicesTotal)'; } 
 }
