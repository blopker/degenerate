// GENERATED CODE - DO NOT MODIFY BY HAND

/// Operating System.
final class TeamsDevicesOsVersionInputRequestOperatingSystem {const TeamsDevicesOsVersionInputRequestOperatingSystem._(this.value);

factory TeamsDevicesOsVersionInputRequestOperatingSystem.fromJson(String json) { return switch (json) {
  'windows' => windows,
  _ => TeamsDevicesOsVersionInputRequestOperatingSystem._(json),
}; }

static const TeamsDevicesOsVersionInputRequestOperatingSystem windows = TeamsDevicesOsVersionInputRequestOperatingSystem._('windows');

static const List<TeamsDevicesOsVersionInputRequestOperatingSystem> values = [windows];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TeamsDevicesOsVersionInputRequestOperatingSystem && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TeamsDevicesOsVersionInputRequestOperatingSystem($value)'; } 
 }
/// Operator.
final class TeamsDevicesOsVersionInputRequestOperator {const TeamsDevicesOsVersionInputRequestOperator._(this.value);

factory TeamsDevicesOsVersionInputRequestOperator.fromJson(String json) { return switch (json) {
  '<' => $empty,
  '<=' => $empty2,
  '>' => $empty3,
  '>=' => $empty4,
  '==' => $empty5,
  _ => TeamsDevicesOsVersionInputRequestOperator._(json),
}; }

static const TeamsDevicesOsVersionInputRequestOperator $empty = TeamsDevicesOsVersionInputRequestOperator._('<');

static const TeamsDevicesOsVersionInputRequestOperator $empty2 = TeamsDevicesOsVersionInputRequestOperator._('<=');

static const TeamsDevicesOsVersionInputRequestOperator $empty3 = TeamsDevicesOsVersionInputRequestOperator._('>');

static const TeamsDevicesOsVersionInputRequestOperator $empty4 = TeamsDevicesOsVersionInputRequestOperator._('>=');

static const TeamsDevicesOsVersionInputRequestOperator $empty5 = TeamsDevicesOsVersionInputRequestOperator._('==');

static const List<TeamsDevicesOsVersionInputRequestOperator> values = [$empty, $empty2, $empty3, $empty4, $empty5];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TeamsDevicesOsVersionInputRequestOperator && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TeamsDevicesOsVersionInputRequestOperator($value)'; } 
 }
final class TeamsDevicesOsVersionInputRequest {const TeamsDevicesOsVersionInputRequest({required this.operatingSystem, required this.$operator, this.osDistroName, this.osDistroRevision, this.osVersionExtra, required this.version, });

factory TeamsDevicesOsVersionInputRequest.fromJson(Map<String, dynamic> json) { return TeamsDevicesOsVersionInputRequest(
  operatingSystem: TeamsDevicesOsVersionInputRequestOperatingSystem.fromJson(json['operating_system'] as String),
  $operator: TeamsDevicesOsVersionInputRequestOperator.fromJson(json['operator'] as String),
  osDistroName: json['os_distro_name'] as String?,
  osDistroRevision: json['os_distro_revision'] as String?,
  osVersionExtra: json['os_version_extra'] as String?,
  version: json['version'] as String,
); }

/// Operating System.
final TeamsDevicesOsVersionInputRequestOperatingSystem operatingSystem;

/// Operator.
final TeamsDevicesOsVersionInputRequestOperator $operator;

/// Operating System Distribution Name (linux only).
final String? osDistroName;

/// Version of OS Distribution (linux only).
final String? osDistroRevision;

/// Additional operating system version details. For Windows, the UBR (Update Build Revision). For Mac or iOS, the Product Version Extra. For Linux, the distribution name and version.
final String? osVersionExtra;

/// Version of OS.
final String version;

Map<String, dynamic> toJson() { return {
  'operating_system': operatingSystem.toJson(),
  'operator': $operator.toJson(),
  'os_distro_name': ?osDistroName,
  'os_distro_revision': ?osDistroRevision,
  'os_version_extra': ?osVersionExtra,
  'version': version,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('operating_system') &&
      json.containsKey('operator') &&
      json.containsKey('version') && json['version'] is String; } 
TeamsDevicesOsVersionInputRequest copyWith({TeamsDevicesOsVersionInputRequestOperatingSystem? operatingSystem, TeamsDevicesOsVersionInputRequestOperator? $operator, String Function()? osDistroName, String Function()? osDistroRevision, String Function()? osVersionExtra, String? version, }) { return TeamsDevicesOsVersionInputRequest(
  operatingSystem: operatingSystem ?? this.operatingSystem,
  $operator: $operator ?? this.$operator,
  osDistroName: osDistroName != null ? osDistroName() : this.osDistroName,
  osDistroRevision: osDistroRevision != null ? osDistroRevision() : this.osDistroRevision,
  osVersionExtra: osVersionExtra != null ? osVersionExtra() : this.osVersionExtra,
  version: version ?? this.version,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TeamsDevicesOsVersionInputRequest &&
          operatingSystem == other.operatingSystem &&
          $operator == other.$operator &&
          osDistroName == other.osDistroName &&
          osDistroRevision == other.osDistroRevision &&
          osVersionExtra == other.osVersionExtra &&
          version == other.version; } 
@override int get hashCode { return Object.hash(operatingSystem, $operator, osDistroName, osDistroRevision, osVersionExtra, version); } 
@override String toString() { return 'TeamsDevicesOsVersionInputRequest(operatingSystem: $operatingSystem, \$operator: ${$operator}, osDistroName: $osDistroName, osDistroRevision: $osDistroRevision, osVersionExtra: $osVersionExtra, version: $version)'; } 
 }
