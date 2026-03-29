// GENERATED CODE - DO NOT MODIFY BY HAND

import 'audit_log_service_account_created_data.dart';/// The details for events with this `type`.
final class AuditLogServiceAccountCreated {const AuditLogServiceAccountCreated({this.id, this.data, });

factory AuditLogServiceAccountCreated.fromJson(Map<String, dynamic> json) { return AuditLogServiceAccountCreated(
  id: json['id'] as String?,
  data: json['data'] != null ? AuditLogServiceAccountCreatedData.fromJson(json['data'] as Map<String, dynamic>) : null,
); }

/// The service account ID.
final String? id;

/// The payload used to create the service account.
final AuditLogServiceAccountCreatedData? data;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  if (data != null) 'data': data?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'data'}.contains(key)); } 
AuditLogServiceAccountCreated copyWith({String Function()? id, AuditLogServiceAccountCreatedData Function()? data, }) { return AuditLogServiceAccountCreated(
  id: id != null ? id() : this.id,
  data: data != null ? data() : this.data,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogServiceAccountCreated &&
          id == other.id &&
          data == other.data; } 
@override int get hashCode { return Object.hash(id, data); } 
@override String toString() { return 'AuditLogServiceAccountCreated(id: $id, data: $data)'; } 
 }
