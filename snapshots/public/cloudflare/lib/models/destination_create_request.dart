// GENERATED CODE - DO NOT MODIFY BY HAND

import 'destination_create_request_configuration.dart';final class DestinationCreateRequest {const DestinationCreateRequest({required this.configuration, required this.enabled, required this.name, this.skipPreflightCheck, });

factory DestinationCreateRequest.fromJson(Map<String, dynamic> json) { return DestinationCreateRequest(
  configuration: DestinationCreateRequestConfiguration.fromJson(json['configuration'] as Map<String, dynamic>),
  enabled: json['enabled'] as bool,
  name: json['name'] as String,
  skipPreflightCheck: json['skipPreflightCheck'] as bool?,
); }

final DestinationCreateRequestConfiguration configuration;

final bool enabled;

final String name;

final bool? skipPreflightCheck;

Map<String, dynamic> toJson() { return {
  'configuration': configuration.toJson(),
  'enabled': enabled,
  'name': name,
  'skipPreflightCheck': ?skipPreflightCheck,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('configuration') &&
      json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('name') && json['name'] is String; } 
DestinationCreateRequest copyWith({DestinationCreateRequestConfiguration? configuration, bool? enabled, String? name, bool Function()? skipPreflightCheck, }) { return DestinationCreateRequest(
  configuration: configuration ?? this.configuration,
  enabled: enabled ?? this.enabled,
  name: name ?? this.name,
  skipPreflightCheck: skipPreflightCheck != null ? skipPreflightCheck() : this.skipPreflightCheck,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DestinationCreateRequest &&
          configuration == other.configuration &&
          enabled == other.enabled &&
          name == other.name &&
          skipPreflightCheck == other.skipPreflightCheck; } 
@override int get hashCode { return Object.hash(configuration, enabled, name, skipPreflightCheck); } 
@override String toString() { return 'DestinationCreateRequest(configuration: $configuration, enabled: $enabled, name: $name, skipPreflightCheck: $skipPreflightCheck)'; } 
 }
