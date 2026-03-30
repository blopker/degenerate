// GENERATED CODE - DO NOT MODIFY BY HAND

import 'firewall_identifier.dart';import 'firewall_status.dart';/// The mode that defines how rules within the package are evaluated during the course of a request. When a package uses anomaly detection mode (`anomaly` value), each rule is given a score when triggered. If the total score of all triggered rules exceeds the sensitivity defined in the WAF package, the action configured in the package will be performed. Traditional detection mode (`traditional` value) will decide the action to take when it is triggered by the request. If multiple rules are triggered, the action providing the highest protection will be applied (for example, a 'block' action will win over a 'challenge' action).
final class FirewallDetectionMode {const FirewallDetectionMode._(this.value);

factory FirewallDetectionMode.fromJson(String json) { return switch (json) {
  'anomaly' => anomaly,
  'traditional' => traditional,
  _ => FirewallDetectionMode._(json),
}; }

static const FirewallDetectionMode anomaly = FirewallDetectionMode._('anomaly');

static const FirewallDetectionMode traditional = FirewallDetectionMode._('traditional');

static const List<FirewallDetectionMode> values = [anomaly, traditional];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is FirewallDetectionMode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'FirewallDetectionMode($value)'; } 
 }
/// The name of the WAF package.
extension type const FirewallName(String value) {
factory FirewallName.fromJson(String json) => FirewallName(json);

String toJson() => value;

}
/// A summary of the purpose/function of the WAF package.
extension type const FirewallSchemasDescription(String value) {
factory FirewallSchemasDescription.fromJson(String json) => FirewallSchemasDescription(json);

String toJson() => value;

}
final class FirewallPackageDefinition {const FirewallPackageDefinition({required this.description, required this.detectionMode, required this.id, required this.name, this.status, required this.zoneId, });

factory FirewallPackageDefinition.fromJson(Map<String, dynamic> json) { return FirewallPackageDefinition(
  description: FirewallSchemasDescription.fromJson(json['description'] as String),
  detectionMode: FirewallDetectionMode.fromJson(json['detection_mode'] as String),
  id: FirewallIdentifier.fromJson(json['id'] as String),
  name: FirewallName.fromJson(json['name'] as String),
  status: json['status'] != null ? FirewallStatus.fromJson(json['status'] as String) : null,
  zoneId: FirewallIdentifier.fromJson(json['zone_id'] as String),
); }

final FirewallSchemasDescription description;

/// The mode that defines how rules within the package are evaluated during the course of a request. When a package uses anomaly detection mode (`anomaly` value), each rule is given a score when triggered. If the total score of all triggered rules exceeds the sensitivity defined in the WAF package, the action configured in the package will be performed. Traditional detection mode (`traditional` value) will decide the action to take when it is triggered by the request. If multiple rules are triggered, the action providing the highest protection will be applied (for example, a 'block' action will win over a 'challenge' action).
final FirewallDetectionMode detectionMode;

/// Defines an identifier.
final FirewallIdentifier id;

/// The name of the WAF package.
final FirewallName name;

final FirewallStatus? status;

/// Defines an identifier.
final FirewallIdentifier zoneId;

Map<String, dynamic> toJson() { return {
  'description': description.toJson(),
  'detection_mode': detectionMode.toJson(),
  'id': id.toJson(),
  'name': name.toJson(),
  if (status != null) 'status': status?.toJson(),
  'zone_id': zoneId.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('description') &&
      json.containsKey('detection_mode') &&
      json.containsKey('id') &&
      json.containsKey('name') &&
      json.containsKey('zone_id'); } 
FirewallPackageDefinition copyWith({FirewallSchemasDescription? description, FirewallDetectionMode? detectionMode, FirewallIdentifier? id, FirewallName? name, FirewallStatus Function()? status, FirewallIdentifier? zoneId, }) { return FirewallPackageDefinition(
  description: description ?? this.description,
  detectionMode: detectionMode ?? this.detectionMode,
  id: id ?? this.id,
  name: name ?? this.name,
  status: status != null ? status() : this.status,
  zoneId: zoneId ?? this.zoneId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FirewallPackageDefinition &&
          description == other.description &&
          detectionMode == other.detectionMode &&
          id == other.id &&
          name == other.name &&
          status == other.status &&
          zoneId == other.zoneId; } 
@override int get hashCode { return Object.hash(description, detectionMode, id, name, status, zoneId); } 
@override String toString() { return 'FirewallPackageDefinition(description: $description, detectionMode: $detectionMode, id: $id, name: $name, status: $status, zoneId: $zoneId)'; } 
 }
