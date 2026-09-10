// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'digital_experience_monitoring_tests_response_tests_http_results.dart';import 'digital_experience_monitoring_tests_response_tests_http_results_by_colo.dart';import 'digital_experience_monitoring_tests_response_tests_target_policies.dart';import 'digital_experience_monitoring_tests_response_tests_traceroute_results.dart';import 'digital_experience_monitoring_tests_response_tests_traceroute_results_by_colo.dart';import 'digital_experience_monitoring_uuid.dart';/// test type, http or traceroute
@immutable final class DigitalExperienceMonitoringTestsResponseTestsKind {const DigitalExperienceMonitoringTestsResponseTestsKind._(this.value);

factory DigitalExperienceMonitoringTestsResponseTestsKind.fromJson(String json) { return switch (json) {
  'http' => http,
  'traceroute' => traceroute,
  _ => DigitalExperienceMonitoringTestsResponseTestsKind._(json),
}; }

static const DigitalExperienceMonitoringTestsResponseTestsKind http = DigitalExperienceMonitoringTestsResponseTestsKind._('http');

static const DigitalExperienceMonitoringTestsResponseTestsKind traceroute = DigitalExperienceMonitoringTestsResponseTestsKind._('traceroute');

static const List<DigitalExperienceMonitoringTestsResponseTestsKind> values = [http, traceroute];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DigitalExperienceMonitoringTestsResponseTestsKind && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DigitalExperienceMonitoringTestsResponseTestsKind($value)'; } 
 }
@immutable final class DigitalExperienceMonitoringTestsResponseTests {const DigitalExperienceMonitoringTestsResponseTests({required this.created, required this.description, required this.enabled, required this.host, required this.id, required this.interval, required this.kind, required this.name, required this.updated, this.httpResults = const Omittable.absent(), this.httpResultsByColo, this.method, this.targetPolicies = const Omittable.absent(), this.targeted, this.tracerouteResults = const Omittable.absent(), this.tracerouteResultsByColo, });

factory DigitalExperienceMonitoringTestsResponseTests.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringTestsResponseTests(
  created: json['created'] as String,
  description: json['description'] as String,
  enabled: json['enabled'] as bool,
  host: json['host'] as String,
  httpResults: json.containsKey('httpResults') ? Omittable(json['httpResults'] != null ? DigitalExperienceMonitoringTestsResponseTestsHttpResults.fromJson(json['httpResults'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  httpResultsByColo: (json['httpResultsByColo'] as List<dynamic>?)?.map((e) => DigitalExperienceMonitoringTestsResponseTestsHttpResultsByColo.fromJson(e as Map<String, dynamic>)).toList(),
  id: DigitalExperienceMonitoringUuid.fromJson(json['id'] as String),
  interval: json['interval'] as String,
  kind: DigitalExperienceMonitoringTestsResponseTestsKind.fromJson(json['kind'] as String),
  method: json['method'] as String?,
  name: json['name'] as String,
  targetPolicies: json.containsKey('target_policies') ? Omittable((json['target_policies'] as List<dynamic>?)?.map((e) => DigitalExperienceMonitoringTestsResponseTestsTargetPolicies.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
  targeted: json['targeted'] as bool?,
  tracerouteResults: json.containsKey('tracerouteResults') ? Omittable(json['tracerouteResults'] != null ? DigitalExperienceMonitoringTestsResponseTestsTracerouteResults.fromJson(json['tracerouteResults'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  tracerouteResultsByColo: (json['tracerouteResultsByColo'] as List<dynamic>?)?.map((e) => DigitalExperienceMonitoringTestsResponseTestsTracerouteResultsByColo.fromJson(e as Map<String, dynamic>)).toList(),
  updated: json['updated'] as String,
); }

/// date the test was created.
final String created;

/// the test description defined during configuration
final String description;

/// if true, then the test will run on targeted devices. Else, the test will not run.
final bool enabled;

final String host;

final Omittable<DigitalExperienceMonitoringTestsResponseTestsHttpResults?> httpResults;

final List<DigitalExperienceMonitoringTestsResponseTestsHttpResultsByColo>? httpResultsByColo;

final DigitalExperienceMonitoringUuid id;

/// The interval at which the synthetic application test is set to run.
final String interval;

/// test type, http or traceroute
final DigitalExperienceMonitoringTestsResponseTestsKind kind;

/// for HTTP, the method to use when running the test
final String? method;

/// name given to this test
final String name;

final Omittable<List<DigitalExperienceMonitoringTestsResponseTestsTargetPolicies>?> targetPolicies;

final bool? targeted;

final Omittable<DigitalExperienceMonitoringTestsResponseTestsTracerouteResults?> tracerouteResults;

final List<DigitalExperienceMonitoringTestsResponseTestsTracerouteResultsByColo>? tracerouteResultsByColo;

final String updated;

Map<String, dynamic> toJson() { return {
  'created': created,
  'description': description,
  'enabled': enabled,
  'host': host,
  if (httpResults.isPresent) 'httpResults': httpResults.value?.toJson(),
  if (httpResultsByColo != null) 'httpResultsByColo': httpResultsByColo?.map((e) => e.toJson()).toList(),
  'id': id.toJson(),
  'interval': interval,
  'kind': kind.toJson(),
  'method': ?method,
  'name': name,
  if (targetPolicies.isPresent) 'target_policies': targetPolicies.value?.map((e) => e.toJson()).toList(),
  'targeted': ?targeted,
  if (tracerouteResults.isPresent) 'tracerouteResults': tracerouteResults.value?.toJson(),
  if (tracerouteResultsByColo != null) 'tracerouteResultsByColo': tracerouteResultsByColo?.map((e) => e.toJson()).toList(),
  'updated': updated,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created') && json['created'] is String &&
      json.containsKey('description') && json['description'] is String &&
      json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('host') && json['host'] is String &&
      json.containsKey('id') &&
      json.containsKey('interval') && json['interval'] is String &&
      json.containsKey('kind') &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('updated') && json['updated'] is String; } 
DigitalExperienceMonitoringTestsResponseTests copyWith({String? created, String? description, bool? enabled, String? host, Omittable<DigitalExperienceMonitoringTestsResponseTestsHttpResults?>? httpResults, List<DigitalExperienceMonitoringTestsResponseTestsHttpResultsByColo>? Function()? httpResultsByColo, DigitalExperienceMonitoringUuid? id, String? interval, DigitalExperienceMonitoringTestsResponseTestsKind? kind, String? Function()? method, String? name, Omittable<List<DigitalExperienceMonitoringTestsResponseTestsTargetPolicies>?>? targetPolicies, bool? Function()? targeted, Omittable<DigitalExperienceMonitoringTestsResponseTestsTracerouteResults?>? tracerouteResults, List<DigitalExperienceMonitoringTestsResponseTestsTracerouteResultsByColo>? Function()? tracerouteResultsByColo, String? updated, }) { return DigitalExperienceMonitoringTestsResponseTests(
  created: created ?? this.created,
  description: description ?? this.description,
  enabled: enabled ?? this.enabled,
  host: host ?? this.host,
  httpResults: httpResults ?? this.httpResults,
  httpResultsByColo: httpResultsByColo != null ? httpResultsByColo() : this.httpResultsByColo,
  id: id ?? this.id,
  interval: interval ?? this.interval,
  kind: kind ?? this.kind,
  method: method != null ? method() : this.method,
  name: name ?? this.name,
  targetPolicies: targetPolicies ?? this.targetPolicies,
  targeted: targeted != null ? targeted() : this.targeted,
  tracerouteResults: tracerouteResults ?? this.tracerouteResults,
  tracerouteResultsByColo: tracerouteResultsByColo != null ? tracerouteResultsByColo() : this.tracerouteResultsByColo,
  updated: updated ?? this.updated,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringTestsResponseTests &&
          created == other.created &&
          description == other.description &&
          enabled == other.enabled &&
          host == other.host &&
          httpResults == other.httpResults &&
          listEquals(httpResultsByColo, other.httpResultsByColo) &&
          id == other.id &&
          interval == other.interval &&
          kind == other.kind &&
          method == other.method &&
          name == other.name &&
          targetPolicies.isPresent == other.targetPolicies.isPresent &&
          listEquals(targetPolicies.value, other.targetPolicies.value) &&
          targeted == other.targeted &&
          tracerouteResults == other.tracerouteResults &&
          listEquals(tracerouteResultsByColo, other.tracerouteResultsByColo) &&
          updated == other.updated; } 
@override int get hashCode { return Object.hash(created, description, enabled, host, httpResults, Object.hashAll(httpResultsByColo ?? const []), id, interval, kind, method, name, Object.hashAll(targetPolicies.value ?? const []), targeted, tracerouteResults, Object.hashAll(tracerouteResultsByColo ?? const []), updated); } 
@override String toString() { return 'DigitalExperienceMonitoringTestsResponseTests(created: $created, description: $description, enabled: $enabled, host: $host, httpResults: $httpResults, httpResultsByColo: $httpResultsByColo, id: $id, interval: $interval, kind: $kind, method: $method, name: $name, targetPolicies: $targetPolicies, targeted: $targeted, tracerouteResults: $tracerouteResults, tracerouteResultsByColo: $tracerouteResultsByColo, updated: $updated)'; } 
 }
