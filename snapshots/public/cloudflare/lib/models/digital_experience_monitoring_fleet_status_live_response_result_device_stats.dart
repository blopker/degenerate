// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'digital_experience_monitoring_live_stat.dart';import 'digital_experience_monitoring_unique_devices_total.dart';@immutable final class DigitalExperienceMonitoringFleetStatusLiveResponseResultDeviceStats {const DigitalExperienceMonitoringFleetStatusLiveResponseResultDeviceStats({this.byColo = const Omittable.absent(), this.byMode = const Omittable.absent(), this.byPlatform = const Omittable.absent(), this.byStatus = const Omittable.absent(), this.byVersion = const Omittable.absent(), this.uniqueDevicesTotal, });

factory DigitalExperienceMonitoringFleetStatusLiveResponseResultDeviceStats.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringFleetStatusLiveResponseResultDeviceStats(
  byColo: json.containsKey('byColo') ? Omittable((json['byColo'] as List<dynamic>?)?.map((e) => DigitalExperienceMonitoringLiveStat.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
  byMode: json.containsKey('byMode') ? Omittable((json['byMode'] as List<dynamic>?)?.map((e) => DigitalExperienceMonitoringLiveStat.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
  byPlatform: json.containsKey('byPlatform') ? Omittable((json['byPlatform'] as List<dynamic>?)?.map((e) => DigitalExperienceMonitoringLiveStat.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
  byStatus: json.containsKey('byStatus') ? Omittable((json['byStatus'] as List<dynamic>?)?.map((e) => DigitalExperienceMonitoringLiveStat.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
  byVersion: json.containsKey('byVersion') ? Omittable((json['byVersion'] as List<dynamic>?)?.map((e) => DigitalExperienceMonitoringLiveStat.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
  uniqueDevicesTotal: json['uniqueDevicesTotal'] != null ? DigitalExperienceMonitoringUniqueDevicesTotal.fromJson(json['uniqueDevicesTotal'] as num) : null,
); }

final Omittable<List<DigitalExperienceMonitoringLiveStat>?> byColo;

final Omittable<List<DigitalExperienceMonitoringLiveStat>?> byMode;

final Omittable<List<DigitalExperienceMonitoringLiveStat>?> byPlatform;

final Omittable<List<DigitalExperienceMonitoringLiveStat>?> byStatus;

final Omittable<List<DigitalExperienceMonitoringLiveStat>?> byVersion;

final DigitalExperienceMonitoringUniqueDevicesTotal? uniqueDevicesTotal;

Map<String, dynamic> toJson() { return {
  if (byColo.isPresent) 'byColo': byColo.value?.map((e) => e.toJson()).toList(),
  if (byMode.isPresent) 'byMode': byMode.value?.map((e) => e.toJson()).toList(),
  if (byPlatform.isPresent) 'byPlatform': byPlatform.value?.map((e) => e.toJson()).toList(),
  if (byStatus.isPresent) 'byStatus': byStatus.value?.map((e) => e.toJson()).toList(),
  if (byVersion.isPresent) 'byVersion': byVersion.value?.map((e) => e.toJson()).toList(),
  if (uniqueDevicesTotal != null) 'uniqueDevicesTotal': uniqueDevicesTotal?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'byColo', 'byMode', 'byPlatform', 'byStatus', 'byVersion', 'uniqueDevicesTotal'}.contains(key)); } 
DigitalExperienceMonitoringFleetStatusLiveResponseResultDeviceStats copyWith({Omittable<List<DigitalExperienceMonitoringLiveStat>?>? byColo, Omittable<List<DigitalExperienceMonitoringLiveStat>?>? byMode, Omittable<List<DigitalExperienceMonitoringLiveStat>?>? byPlatform, Omittable<List<DigitalExperienceMonitoringLiveStat>?>? byStatus, Omittable<List<DigitalExperienceMonitoringLiveStat>?>? byVersion, DigitalExperienceMonitoringUniqueDevicesTotal? Function()? uniqueDevicesTotal, }) { return DigitalExperienceMonitoringFleetStatusLiveResponseResultDeviceStats(
  byColo: byColo ?? this.byColo,
  byMode: byMode ?? this.byMode,
  byPlatform: byPlatform ?? this.byPlatform,
  byStatus: byStatus ?? this.byStatus,
  byVersion: byVersion ?? this.byVersion,
  uniqueDevicesTotal: uniqueDevicesTotal != null ? uniqueDevicesTotal() : this.uniqueDevicesTotal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringFleetStatusLiveResponseResultDeviceStats &&
          byColo.isPresent == other.byColo.isPresent &&
          listEquals(byColo.value, other.byColo.value) &&
          byMode.isPresent == other.byMode.isPresent &&
          listEquals(byMode.value, other.byMode.value) &&
          byPlatform.isPresent == other.byPlatform.isPresent &&
          listEquals(byPlatform.value, other.byPlatform.value) &&
          byStatus.isPresent == other.byStatus.isPresent &&
          listEquals(byStatus.value, other.byStatus.value) &&
          byVersion.isPresent == other.byVersion.isPresent &&
          listEquals(byVersion.value, other.byVersion.value) &&
          uniqueDevicesTotal == other.uniqueDevicesTotal; } 
@override int get hashCode { return Object.hash(Object.hashAll(byColo.value ?? const []), Object.hashAll(byMode.value ?? const []), Object.hashAll(byPlatform.value ?? const []), Object.hashAll(byStatus.value ?? const []), Object.hashAll(byVersion.value ?? const []), uniqueDevicesTotal); } 
@override String toString() { return 'DigitalExperienceMonitoringFleetStatusLiveResponseResultDeviceStats(byColo: $byColo, byMode: $byMode, byPlatform: $byPlatform, byStatus: $byStatus, byVersion: $byVersion, uniqueDevicesTotal: $uniqueDevicesTotal)'; } 
 }
