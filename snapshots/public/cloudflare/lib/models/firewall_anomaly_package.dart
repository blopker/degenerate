// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_action_mode.dart';import 'firewall_identifier.dart';import 'firewall_sensitivity.dart';import 'firewall_status.dart';/// A summary of the purpose/function of the WAF package.
extension type const FirewallAnomalyDescription(String value) {
factory FirewallAnomalyDescription.fromJson(String json) => FirewallAnomalyDescription(json);

String toJson() => value;

}
/// When a WAF package uses anomaly detection, each rule is given a score when triggered. If the total score of all triggered rules exceeds the sensitivity defined on the WAF package, the action defined on the package will be taken.
extension type const FirewallAnomalyDetectionMode(String value) {
factory FirewallAnomalyDetectionMode.fromJson(String json) => FirewallAnomalyDetectionMode(json);

String toJson() => value;

}
/// The name of the WAF package.
extension type const FirewallAnomalyName(String value) {
factory FirewallAnomalyName.fromJson(String json) => FirewallAnomalyName(json);

String toJson() => value;

}
@immutable final class FirewallAnomalyPackage {const FirewallAnomalyPackage({required this.description, required this.detectionMode, required this.id, required this.name, required this.zoneId, required this.actionMode, required this.sensitivity, this.status, });

factory FirewallAnomalyPackage.fromJson(Map<String, dynamic> json) { return FirewallAnomalyPackage(
  description: FirewallAnomalyDescription.fromJson(json['description'] as String),
  detectionMode: FirewallAnomalyDetectionMode.fromJson(json['detection_mode'] as String),
  id: FirewallIdentifier.fromJson(json['id'] as String),
  name: FirewallAnomalyName.fromJson(json['name'] as String),
  status: json['status'] != null ? FirewallStatus.fromJson(json['status'] as String) : null,
  zoneId: FirewallIdentifier.fromJson(json['zone_id'] as String),
  actionMode: FirewallActionMode.fromJson(json['action_mode'] as String),
  sensitivity: FirewallSensitivity.fromJson(json['sensitivity'] as String),
); }

/// A summary of the purpose/function of the WAF package.
final FirewallAnomalyDescription description;

/// When a WAF package uses anomaly detection, each rule is given a score when triggered. If the total score of all triggered rules exceeds the sensitivity defined on the WAF package, the action defined on the package will be taken.
final FirewallAnomalyDetectionMode detectionMode;

final FirewallIdentifier id;

/// The name of the WAF package.
final FirewallAnomalyName name;

final FirewallStatus? status;

final FirewallIdentifier zoneId;

/// The default action performed by the rules in the WAF package.
final FirewallActionMode actionMode;

final FirewallSensitivity sensitivity;

Map<String, dynamic> toJson() { return {
  'description': description.toJson(),
  'detection_mode': detectionMode.toJson(),
  'id': id.toJson(),
  'name': name.toJson(),
  if (status != null) 'status': status?.toJson(),
  'zone_id': zoneId.toJson(),
  'action_mode': actionMode.toJson(),
  'sensitivity': sensitivity.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('description') &&
      json.containsKey('detection_mode') &&
      json.containsKey('id') &&
      json.containsKey('name') &&
      json.containsKey('zone_id') &&
      json.containsKey('action_mode') &&
      json.containsKey('sensitivity'); } 
FirewallAnomalyPackage copyWith({FirewallAnomalyDescription? description, FirewallAnomalyDetectionMode? detectionMode, FirewallIdentifier? id, FirewallAnomalyName? name, FirewallStatus Function()? status, FirewallIdentifier? zoneId, FirewallActionMode? actionMode, FirewallSensitivity? sensitivity, }) { return FirewallAnomalyPackage(
  description: description ?? this.description,
  detectionMode: detectionMode ?? this.detectionMode,
  id: id ?? this.id,
  name: name ?? this.name,
  status: status != null ? status() : this.status,
  zoneId: zoneId ?? this.zoneId,
  actionMode: actionMode ?? this.actionMode,
  sensitivity: sensitivity ?? this.sensitivity,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FirewallAnomalyPackage &&
          description == other.description &&
          detectionMode == other.detectionMode &&
          id == other.id &&
          name == other.name &&
          status == other.status &&
          zoneId == other.zoneId &&
          actionMode == other.actionMode &&
          sensitivity == other.sensitivity; } 
@override int get hashCode { return Object.hash(description, detectionMode, id, name, status, zoneId, actionMode, sensitivity); } 
@override String toString() { return 'FirewallAnomalyPackage(description: $description, detectionMode: $detectionMode, id: $id, name: $name, status: $status, zoneId: $zoneId, actionMode: $actionMode, sensitivity: $sensitivity)'; } 
 }
