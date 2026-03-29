// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_device_posture_check.dart';final class AccessSchemasDevicePostureRule {const AccessSchemasDevicePostureRule({this.check, this.data, this.description, this.error, this.id, this.ruleName, this.success, this.timestamp, this.type, });

factory AccessSchemasDevicePostureRule.fromJson(Map<String, dynamic> json) { return AccessSchemasDevicePostureRule(
  check: json['check'] != null ? AccessDevicePostureCheck.fromJson(json['check'] as Map<String, dynamic>) : null,
  data: (json['data'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
  description: json['description'] as String?,
  error: json['error'] as String?,
  id: json['id'] as String?,
  ruleName: json['rule_name'] as String?,
  success: json['success'] as bool?,
  timestamp: json['timestamp'] as String?,
  type: json['type'] as String?,
); }

final AccessDevicePostureCheck? check;

final Map<String,dynamic>? data;

final String? description;

final String? error;

final String? id;

final String? ruleName;

final bool? success;

final String? timestamp;

final String? type;

Map<String, dynamic> toJson() { return {
  if (check != null) 'check': check?.toJson(),
  'data': ?data,
  'description': ?description,
  'error': ?error,
  'id': ?id,
  'rule_name': ?ruleName,
  'success': ?success,
  'timestamp': ?timestamp,
  'type': ?type,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AccessSchemasDevicePostureRule copyWith({AccessDevicePostureCheck Function()? check, Map<String, dynamic> Function()? data, String Function()? description, String Function()? error, String Function()? id, String Function()? ruleName, bool Function()? success, String Function()? timestamp, String Function()? type, }) { return AccessSchemasDevicePostureRule(
  check: check != null ? check() : this.check,
  data: data != null ? data() : this.data,
  description: description != null ? description() : this.description,
  error: error != null ? error() : this.error,
  id: id != null ? id() : this.id,
  ruleName: ruleName != null ? ruleName() : this.ruleName,
  success: success != null ? success() : this.success,
  timestamp: timestamp != null ? timestamp() : this.timestamp,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasDevicePostureRule &&
          check == other.check &&
          data == other.data &&
          description == other.description &&
          error == other.error &&
          id == other.id &&
          ruleName == other.ruleName &&
          success == other.success &&
          timestamp == other.timestamp &&
          type == other.type; } 
@override int get hashCode { return Object.hash(check, data, description, error, id, ruleName, success, timestamp, type); } 
@override String toString() { return 'AccessSchemasDevicePostureRule(check: $check, data: $data, description: $description, error: $error, id: $id, ruleName: $ruleName, success: $success, timestamp: $timestamp, type: $type)'; } 
 }
