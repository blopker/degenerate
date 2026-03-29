// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'digital_experience_monitoring_http_details_response_http_stats.dart';import 'digital_experience_monitoring_http_details_response_http_stats_by_colo.dart';import 'digital_experience_monitoring_http_details_response_target_policies.dart';final class DigitalExperienceMonitoringHttpDetailsResponse {const DigitalExperienceMonitoringHttpDetailsResponse({this.host, this.httpStats, this.httpStatsByColo, this.interval, this.kind, this.method, this.name, this.targetPolicies, this.targeted, });

factory DigitalExperienceMonitoringHttpDetailsResponse.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringHttpDetailsResponse(
  host: json['host'] as String?,
  httpStats: json['httpStats'] != null ? DigitalExperienceMonitoringHttpDetailsResponseHttpStats.fromJson(json['httpStats'] as Map<String, dynamic>) : null,
  httpStatsByColo: (json['httpStatsByColo'] as List<dynamic>?)?.map((e) => DigitalExperienceMonitoringHttpDetailsResponseHttpStatsByColo.fromJson(e as Map<String, dynamic>)).toList(),
  interval: json['interval'] as String?,
  kind: json['kind'],
  method: json['method'] as String?,
  name: json['name'] as String?,
  targetPolicies: (json['target_policies'] as List<dynamic>?)?.map((e) => DigitalExperienceMonitoringHttpDetailsResponseTargetPolicies.fromJson(e as Map<String, dynamic>)).toList(),
  targeted: json['targeted'] as bool?,
); }

/// The url of the HTTP synthetic application test
final String? host;

final DigitalExperienceMonitoringHttpDetailsResponseHttpStats? httpStats;

final List<DigitalExperienceMonitoringHttpDetailsResponseHttpStatsByColo>? httpStatsByColo;

/// The interval at which the HTTP synthetic application test is set to run.
final String? interval;

final dynamic kind;

/// The HTTP method to use when running the test
final String? method;

/// The name of the HTTP synthetic application test
final String? name;

final List<DigitalExperienceMonitoringHttpDetailsResponseTargetPolicies>? targetPolicies;

final bool? targeted;

Map<String, dynamic> toJson() { return {
  'host': ?host,
  if (httpStats != null) 'httpStats': httpStats?.toJson(),
  if (httpStatsByColo != null) 'httpStatsByColo': httpStatsByColo?.map((e) => e.toJson()).toList(),
  'interval': ?interval,
  'kind': ?kind,
  'method': ?method,
  'name': ?name,
  if (targetPolicies != null) 'target_policies': targetPolicies?.map((e) => e.toJson()).toList(),
  'targeted': ?targeted,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'host', 'httpStats', 'httpStatsByColo', 'interval', 'kind', 'method', 'name', 'target_policies', 'targeted'}.contains(key)); } 
DigitalExperienceMonitoringHttpDetailsResponse copyWith({String Function()? host, DigitalExperienceMonitoringHttpDetailsResponseHttpStats? Function()? httpStats, List<DigitalExperienceMonitoringHttpDetailsResponseHttpStatsByColo> Function()? httpStatsByColo, String Function()? interval, dynamic Function()? kind, String Function()? method, String Function()? name, List<DigitalExperienceMonitoringHttpDetailsResponseTargetPolicies>? Function()? targetPolicies, bool Function()? targeted, }) { return DigitalExperienceMonitoringHttpDetailsResponse(
  host: host != null ? host() : this.host,
  httpStats: httpStats != null ? httpStats() : this.httpStats,
  httpStatsByColo: httpStatsByColo != null ? httpStatsByColo() : this.httpStatsByColo,
  interval: interval != null ? interval() : this.interval,
  kind: kind != null ? kind() : this.kind,
  method: method != null ? method() : this.method,
  name: name != null ? name() : this.name,
  targetPolicies: targetPolicies != null ? targetPolicies() : this.targetPolicies,
  targeted: targeted != null ? targeted() : this.targeted,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringHttpDetailsResponse &&
          host == other.host &&
          httpStats == other.httpStats &&
          listEquals(httpStatsByColo, other.httpStatsByColo) &&
          interval == other.interval &&
          kind == other.kind &&
          method == other.method &&
          name == other.name &&
          listEquals(targetPolicies, other.targetPolicies) &&
          targeted == other.targeted; } 
@override int get hashCode { return Object.hash(host, httpStats, Object.hashAll(httpStatsByColo ?? const []), interval, kind, method, name, Object.hashAll(targetPolicies ?? const []), targeted); } 
@override String toString() { return 'DigitalExperienceMonitoringHttpDetailsResponse(host: $host, httpStats: $httpStats, httpStatsByColo: $httpStatsByColo, interval: $interval, kind: $kind, method: $method, name: $name, targetPolicies: $targetPolicies, targeted: $targeted)'; } 
 }
