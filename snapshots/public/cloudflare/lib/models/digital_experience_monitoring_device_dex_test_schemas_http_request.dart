// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'digital_experience_monitoring_device_dex_test_schemas_data.dart';import 'digital_experience_monitoring_device_dex_test_schemas_description.dart';import 'digital_experience_monitoring_device_dex_test_schemas_enabled.dart';import 'digital_experience_monitoring_device_dex_test_schemas_interval.dart';import 'digital_experience_monitoring_device_dex_test_schemas_name.dart';import 'digital_experience_monitoring_dex_target_policy.dart';@immutable final class DigitalExperienceMonitoringDeviceDexTestSchemasHttpRequest {const DigitalExperienceMonitoringDeviceDexTestSchemasHttpRequest({required this.data, required this.enabled, required this.interval, required this.name, this.description, this.targetPolicies, this.targeted, });

factory DigitalExperienceMonitoringDeviceDexTestSchemasHttpRequest.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringDeviceDexTestSchemasHttpRequest(
  data: DigitalExperienceMonitoringDeviceDexTestSchemasData.fromJson(json['data'] as Map<String, dynamic>),
  description: json['description'] != null ? DigitalExperienceMonitoringDeviceDexTestSchemasDescription.fromJson(json['description'] as String) : null,
  enabled: DigitalExperienceMonitoringDeviceDexTestSchemasEnabled.fromJson(json['enabled'] as bool),
  interval: DigitalExperienceMonitoringDeviceDexTestSchemasInterval.fromJson(json['interval'] as String),
  name: DigitalExperienceMonitoringDeviceDexTestSchemasName.fromJson(json['name'] as String),
  targetPolicies: (json['target_policies'] as List<dynamic>?)?.map((e) => DigitalExperienceMonitoringDexTargetPolicy.fromJson(e as Map<String, dynamic>)).toList(),
  targeted: json['targeted'] as bool?,
); }

final DigitalExperienceMonitoringDeviceDexTestSchemasData data;

/// Additional details about the test.
final DigitalExperienceMonitoringDeviceDexTestSchemasDescription? description;

/// Determines whether or not the test is active.
final DigitalExperienceMonitoringDeviceDexTestSchemasEnabled enabled;

/// How often the test will run.
final DigitalExperienceMonitoringDeviceDexTestSchemasInterval interval;

/// The name of the DEX test. Must be unique.
final DigitalExperienceMonitoringDeviceDexTestSchemasName name;

/// DEX rules targeted by this test
final List<DigitalExperienceMonitoringDexTargetPolicy>? targetPolicies;

final bool? targeted;

Map<String, dynamic> toJson() { return {
  'data': data.toJson(),
  if (description != null) 'description': description?.toJson(),
  'enabled': enabled.toJson(),
  'interval': interval.toJson(),
  'name': name.toJson(),
  if (targetPolicies != null) 'target_policies': targetPolicies?.map((e) => e.toJson()).toList(),
  'targeted': ?targeted,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('data') &&
      json.containsKey('enabled') &&
      json.containsKey('interval') &&
      json.containsKey('name'); } 
DigitalExperienceMonitoringDeviceDexTestSchemasHttpRequest copyWith({DigitalExperienceMonitoringDeviceDexTestSchemasData? data, DigitalExperienceMonitoringDeviceDexTestSchemasDescription? Function()? description, DigitalExperienceMonitoringDeviceDexTestSchemasEnabled? enabled, DigitalExperienceMonitoringDeviceDexTestSchemasInterval? interval, DigitalExperienceMonitoringDeviceDexTestSchemasName? name, List<DigitalExperienceMonitoringDexTargetPolicy>? Function()? targetPolicies, bool? Function()? targeted, }) { return DigitalExperienceMonitoringDeviceDexTestSchemasHttpRequest(
  data: data ?? this.data,
  description: description != null ? description() : this.description,
  enabled: enabled ?? this.enabled,
  interval: interval ?? this.interval,
  name: name ?? this.name,
  targetPolicies: targetPolicies != null ? targetPolicies() : this.targetPolicies,
  targeted: targeted != null ? targeted() : this.targeted,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringDeviceDexTestSchemasHttpRequest &&
          data == other.data &&
          description == other.description &&
          enabled == other.enabled &&
          interval == other.interval &&
          name == other.name &&
          listEquals(targetPolicies, other.targetPolicies) &&
          targeted == other.targeted; } 
@override int get hashCode { return Object.hash(data, description, enabled, interval, name, Object.hashAll(targetPolicies ?? const []), targeted); } 
@override String toString() { return 'DigitalExperienceMonitoringDeviceDexTestSchemasHttpRequest(data: $data, description: $description, enabled: $enabled, interval: $interval, name: $name, targetPolicies: $targetPolicies, targeted: $targeted)'; } 
 }
