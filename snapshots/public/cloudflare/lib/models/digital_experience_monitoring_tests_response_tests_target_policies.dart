// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'digital_experience_monitoring_uuid.dart';@immutable final class DigitalExperienceMonitoringTestsResponseTestsTargetPolicies {const DigitalExperienceMonitoringTestsResponseTestsTargetPolicies({required this.$default, required this.id, required this.name, });

factory DigitalExperienceMonitoringTestsResponseTestsTargetPolicies.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringTestsResponseTestsTargetPolicies(
  $default: json['default'] as bool,
  id: DigitalExperienceMonitoringUuid.fromJson(json['id'] as String),
  name: json['name'] as String,
); }

/// Whether the policy is the default for the account
final bool $default;

final DigitalExperienceMonitoringUuid id;

final String name;

Map<String, dynamic> toJson() { return {
  'default': $default,
  'id': id.toJson(),
  'name': name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('default') && json['default'] is bool &&
      json.containsKey('id') &&
      json.containsKey('name') && json['name'] is String; } 
DigitalExperienceMonitoringTestsResponseTestsTargetPolicies copyWith({bool? $default, DigitalExperienceMonitoringUuid? id, String? name, }) { return DigitalExperienceMonitoringTestsResponseTestsTargetPolicies(
  $default: $default ?? this.$default,
  id: id ?? this.id,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringTestsResponseTestsTargetPolicies &&
          $default == other.$default &&
          id == other.id &&
          name == other.name; } 
@override int get hashCode { return Object.hash($default, id, name); } 
@override String toString() { return 'DigitalExperienceMonitoringTestsResponseTestsTargetPolicies(\$default: ${$default}, id: $id, name: $name)'; } 
 }
