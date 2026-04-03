// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Operating System.
@immutable final class TeamsDevicesDomainJoinedInputRequestOperatingSystem {const TeamsDevicesDomainJoinedInputRequestOperatingSystem._(this.value);

factory TeamsDevicesDomainJoinedInputRequestOperatingSystem.fromJson(String json) { return switch (json) {
  'windows' => windows,
  _ => TeamsDevicesDomainJoinedInputRequestOperatingSystem._(json),
}; }

static const TeamsDevicesDomainJoinedInputRequestOperatingSystem windows = TeamsDevicesDomainJoinedInputRequestOperatingSystem._('windows');

static const List<TeamsDevicesDomainJoinedInputRequestOperatingSystem> values = [windows];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TeamsDevicesDomainJoinedInputRequestOperatingSystem && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TeamsDevicesDomainJoinedInputRequestOperatingSystem($value)'; } 
 }
@immutable final class TeamsDevicesDomainJoinedInputRequest {const TeamsDevicesDomainJoinedInputRequest({required this.operatingSystem, this.domain, });

factory TeamsDevicesDomainJoinedInputRequest.fromJson(Map<String, dynamic> json) { return TeamsDevicesDomainJoinedInputRequest(
  domain: json['domain'] as String?,
  operatingSystem: TeamsDevicesDomainJoinedInputRequestOperatingSystem.fromJson(json['operating_system'] as String),
); }

/// Domain.
final String? domain;

/// Operating System.
final TeamsDevicesDomainJoinedInputRequestOperatingSystem operatingSystem;

Map<String, dynamic> toJson() { return {
  'domain': ?domain,
  'operating_system': operatingSystem.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('operating_system'); } 
TeamsDevicesDomainJoinedInputRequest copyWith({String Function()? domain, TeamsDevicesDomainJoinedInputRequestOperatingSystem? operatingSystem, }) { return TeamsDevicesDomainJoinedInputRequest(
  domain: domain != null ? domain() : this.domain,
  operatingSystem: operatingSystem ?? this.operatingSystem,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesDomainJoinedInputRequest &&
          domain == other.domain &&
          operatingSystem == other.operatingSystem; } 
@override int get hashCode { return Object.hash(domain, operatingSystem); } 
@override String toString() { return 'TeamsDevicesDomainJoinedInputRequest(domain: $domain, operatingSystem: $operatingSystem)'; } 
 }
