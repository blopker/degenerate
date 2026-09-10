// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'digital_experience_monitoring_traceroute_details_response_target_policies.dart';import 'digital_experience_monitoring_traceroute_details_response_traceroute_stats.dart';import 'digital_experience_monitoring_traceroute_details_response_traceroute_stats_by_colo.dart';@immutable final class DigitalExperienceMonitoringTracerouteDetailsResponse {const DigitalExperienceMonitoringTracerouteDetailsResponse({required this.host, required this.interval, required this.kind, required this.name, this.targetPolicies = const Omittable.absent(), this.targeted, this.tracerouteStats = const Omittable.absent(), this.tracerouteStatsByColo, });

factory DigitalExperienceMonitoringTracerouteDetailsResponse.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringTracerouteDetailsResponse(
  host: json['host'] as String,
  interval: json['interval'] as String,
  kind: json['kind'],
  name: json['name'] as String,
  targetPolicies: json.containsKey('target_policies') ? Omittable((json['target_policies'] as List<dynamic>?)?.map((e) => DigitalExperienceMonitoringTracerouteDetailsResponseTargetPolicies.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
  targeted: json['targeted'] as bool?,
  tracerouteStats: json.containsKey('tracerouteStats') ? Omittable(json['tracerouteStats'] != null ? DigitalExperienceMonitoringTracerouteDetailsResponseTracerouteStats.fromJson(json['tracerouteStats'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  tracerouteStatsByColo: (json['tracerouteStatsByColo'] as List<dynamic>?)?.map((e) => DigitalExperienceMonitoringTracerouteDetailsResponseTracerouteStatsByColo.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The host of the Traceroute synthetic application test
final String host;

/// The interval at which the Traceroute synthetic application test is set to run.
final String interval;

final dynamic kind;

/// The name of the Traceroute synthetic application test
final String name;

final Omittable<List<DigitalExperienceMonitoringTracerouteDetailsResponseTargetPolicies>?> targetPolicies;

final bool? targeted;

final Omittable<DigitalExperienceMonitoringTracerouteDetailsResponseTracerouteStats?> tracerouteStats;

final List<DigitalExperienceMonitoringTracerouteDetailsResponseTracerouteStatsByColo>? tracerouteStatsByColo;

Map<String, dynamic> toJson() { return {
  'host': host,
  'interval': interval,
  'kind': kind,
  'name': name,
  if (targetPolicies.isPresent) 'target_policies': targetPolicies.value?.map((e) => e.toJson()).toList(),
  'targeted': ?targeted,
  if (tracerouteStats.isPresent) 'tracerouteStats': tracerouteStats.value?.toJson(),
  if (tracerouteStatsByColo != null) 'tracerouteStatsByColo': tracerouteStatsByColo?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('host') && json['host'] is String &&
      json.containsKey('interval') && json['interval'] is String &&
      json.containsKey('kind') &&
      json.containsKey('name') && json['name'] is String; } 
DigitalExperienceMonitoringTracerouteDetailsResponse copyWith({String? host, String? interval, dynamic Function()? kind, String? name, Omittable<List<DigitalExperienceMonitoringTracerouteDetailsResponseTargetPolicies>?>? targetPolicies, bool? Function()? targeted, Omittable<DigitalExperienceMonitoringTracerouteDetailsResponseTracerouteStats?>? tracerouteStats, List<DigitalExperienceMonitoringTracerouteDetailsResponseTracerouteStatsByColo>? Function()? tracerouteStatsByColo, }) { return DigitalExperienceMonitoringTracerouteDetailsResponse(
  host: host ?? this.host,
  interval: interval ?? this.interval,
  kind: kind != null ? kind() : this.kind,
  name: name ?? this.name,
  targetPolicies: targetPolicies ?? this.targetPolicies,
  targeted: targeted != null ? targeted() : this.targeted,
  tracerouteStats: tracerouteStats ?? this.tracerouteStats,
  tracerouteStatsByColo: tracerouteStatsByColo != null ? tracerouteStatsByColo() : this.tracerouteStatsByColo,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringTracerouteDetailsResponse &&
          host == other.host &&
          interval == other.interval &&
          kind == other.kind &&
          name == other.name &&
          targetPolicies.isPresent == other.targetPolicies.isPresent &&
          listEquals(targetPolicies.value, other.targetPolicies.value) &&
          targeted == other.targeted &&
          tracerouteStats == other.tracerouteStats &&
          listEquals(tracerouteStatsByColo, other.tracerouteStatsByColo); } 
@override int get hashCode { return Object.hash(host, interval, kind, name, Object.hashAll(targetPolicies.value ?? const []), targeted, tracerouteStats, Object.hashAll(tracerouteStatsByColo ?? const [])); } 
@override String toString() { return 'DigitalExperienceMonitoringTracerouteDetailsResponse(host: $host, interval: $interval, kind: $kind, name: $name, targetPolicies: $targetPolicies, targeted: $targeted, tracerouteStats: $tracerouteStats, tracerouteStatsByColo: $tracerouteStatsByColo)'; } 
 }
