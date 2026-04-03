// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'digital_experience_monitoring_test_stat_over_time.dart';import 'digital_experience_monitoring_test_stat_pct_over_time.dart';@immutable final class DigitalExperienceMonitoringTracerouteDetailsResponseTracerouteStats {const DigitalExperienceMonitoringTracerouteDetailsResponseTracerouteStats({required this.availabilityPct, required this.hopsCount, required this.packetLossPct, required this.roundTripTimeMs, required this.uniqueDevicesTotal, });

factory DigitalExperienceMonitoringTracerouteDetailsResponseTracerouteStats.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringTracerouteDetailsResponseTracerouteStats(
  availabilityPct: DigitalExperienceMonitoringTestStatPctOverTime.fromJson(json['availabilityPct'] as Map<String, dynamic>),
  hopsCount: DigitalExperienceMonitoringTestStatOverTime.fromJson(json['hopsCount'] as Map<String, dynamic>),
  packetLossPct: DigitalExperienceMonitoringTestStatPctOverTime.fromJson(json['packetLossPct'] as Map<String, dynamic>),
  roundTripTimeMs: DigitalExperienceMonitoringTestStatOverTime.fromJson(json['roundTripTimeMs'] as Map<String, dynamic>),
  uniqueDevicesTotal: (json['uniqueDevicesTotal'] as num).toInt(),
); }

final DigitalExperienceMonitoringTestStatPctOverTime availabilityPct;

final DigitalExperienceMonitoringTestStatOverTime hopsCount;

final DigitalExperienceMonitoringTestStatPctOverTime packetLossPct;

final DigitalExperienceMonitoringTestStatOverTime roundTripTimeMs;

/// Count of unique devices that have run this test in the given time period
final int uniqueDevicesTotal;

Map<String, dynamic> toJson() { return {
  'availabilityPct': availabilityPct.toJson(),
  'hopsCount': hopsCount.toJson(),
  'packetLossPct': packetLossPct.toJson(),
  'roundTripTimeMs': roundTripTimeMs.toJson(),
  'uniqueDevicesTotal': uniqueDevicesTotal,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('availabilityPct') &&
      json.containsKey('hopsCount') &&
      json.containsKey('packetLossPct') &&
      json.containsKey('roundTripTimeMs') &&
      json.containsKey('uniqueDevicesTotal') && json['uniqueDevicesTotal'] is num; } 
DigitalExperienceMonitoringTracerouteDetailsResponseTracerouteStats copyWith({DigitalExperienceMonitoringTestStatPctOverTime? availabilityPct, DigitalExperienceMonitoringTestStatOverTime? hopsCount, DigitalExperienceMonitoringTestStatPctOverTime? packetLossPct, DigitalExperienceMonitoringTestStatOverTime? roundTripTimeMs, int? uniqueDevicesTotal, }) { return DigitalExperienceMonitoringTracerouteDetailsResponseTracerouteStats(
  availabilityPct: availabilityPct ?? this.availabilityPct,
  hopsCount: hopsCount ?? this.hopsCount,
  packetLossPct: packetLossPct ?? this.packetLossPct,
  roundTripTimeMs: roundTripTimeMs ?? this.roundTripTimeMs,
  uniqueDevicesTotal: uniqueDevicesTotal ?? this.uniqueDevicesTotal,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringTracerouteDetailsResponseTracerouteStats &&
          availabilityPct == other.availabilityPct &&
          hopsCount == other.hopsCount &&
          packetLossPct == other.packetLossPct &&
          roundTripTimeMs == other.roundTripTimeMs &&
          uniqueDevicesTotal == other.uniqueDevicesTotal; } 
@override int get hashCode { return Object.hash(availabilityPct, hopsCount, packetLossPct, roundTripTimeMs, uniqueDevicesTotal); } 
@override String toString() { return 'DigitalExperienceMonitoringTracerouteDetailsResponseTracerouteStats(availabilityPct: $availabilityPct, hopsCount: $hopsCount, packetLossPct: $packetLossPct, roundTripTimeMs: $roundTripTimeMs, uniqueDevicesTotal: $uniqueDevicesTotal)'; } 
 }
