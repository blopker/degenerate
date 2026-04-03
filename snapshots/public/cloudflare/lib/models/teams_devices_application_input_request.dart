// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Operating system.
@immutable final class TeamsDevicesApplicationInputRequestOperatingSystem {const TeamsDevicesApplicationInputRequestOperatingSystem._(this.value);

factory TeamsDevicesApplicationInputRequestOperatingSystem.fromJson(String json) { return switch (json) {
  'windows' => windows,
  'linux' => linux,
  'mac' => mac,
  _ => TeamsDevicesApplicationInputRequestOperatingSystem._(json),
}; }

static const TeamsDevicesApplicationInputRequestOperatingSystem windows = TeamsDevicesApplicationInputRequestOperatingSystem._('windows');

static const TeamsDevicesApplicationInputRequestOperatingSystem linux = TeamsDevicesApplicationInputRequestOperatingSystem._('linux');

static const TeamsDevicesApplicationInputRequestOperatingSystem mac = TeamsDevicesApplicationInputRequestOperatingSystem._('mac');

static const List<TeamsDevicesApplicationInputRequestOperatingSystem> values = [windows, linux, mac];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TeamsDevicesApplicationInputRequestOperatingSystem && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TeamsDevicesApplicationInputRequestOperatingSystem($value)'; } 
 }
@immutable final class TeamsDevicesApplicationInputRequest {const TeamsDevicesApplicationInputRequest({required this.operatingSystem, required this.path, this.sha256, this.thumbprint, });

factory TeamsDevicesApplicationInputRequest.fromJson(Map<String, dynamic> json) { return TeamsDevicesApplicationInputRequest(
  operatingSystem: TeamsDevicesApplicationInputRequestOperatingSystem.fromJson(json['operating_system'] as String),
  path: json['path'] as String,
  sha256: json['sha256'] as String?,
  thumbprint: json['thumbprint'] as String?,
); }

/// Operating system.
final TeamsDevicesApplicationInputRequestOperatingSystem operatingSystem;

/// Path for the application.
final String path;

/// SHA-256.
final String? sha256;

/// Signing certificate thumbprint.
final String? thumbprint;

Map<String, dynamic> toJson() { return {
  'operating_system': operatingSystem.toJson(),
  'path': path,
  'sha256': ?sha256,
  'thumbprint': ?thumbprint,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('operating_system') &&
      json.containsKey('path') && json['path'] is String; } 
TeamsDevicesApplicationInputRequest copyWith({TeamsDevicesApplicationInputRequestOperatingSystem? operatingSystem, String? path, String Function()? sha256, String Function()? thumbprint, }) { return TeamsDevicesApplicationInputRequest(
  operatingSystem: operatingSystem ?? this.operatingSystem,
  path: path ?? this.path,
  sha256: sha256 != null ? sha256() : this.sha256,
  thumbprint: thumbprint != null ? thumbprint() : this.thumbprint,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesApplicationInputRequest &&
          operatingSystem == other.operatingSystem &&
          path == other.path &&
          sha256 == other.sha256 &&
          thumbprint == other.thumbprint; } 
@override int get hashCode { return Object.hash(operatingSystem, path, sha256, thumbprint); } 
@override String toString() { return 'TeamsDevicesApplicationInputRequest(operatingSystem: $operatingSystem, path: $path, sha256: $sha256, thumbprint: $thumbprint)'; } 
 }
