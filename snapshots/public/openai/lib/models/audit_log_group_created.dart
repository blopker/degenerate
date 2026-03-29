// GENERATED CODE - DO NOT MODIFY BY HAND

import 'audit_log_group_created_data.dart';/// The details for events with this `type`.
final class AuditLogGroupCreated {const AuditLogGroupCreated({this.id, this.data, });

factory AuditLogGroupCreated.fromJson(Map<String, dynamic> json) { return AuditLogGroupCreated(
  id: json['id'] as String?,
  data: json['data'] != null ? AuditLogGroupCreatedData.fromJson(json['data'] as Map<String, dynamic>) : null,
); }

/// The ID of the group.
final String? id;

/// Information about the created group.
final AuditLogGroupCreatedData? data;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  if (data != null) 'data': data?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AuditLogGroupCreated copyWith({String Function()? id, AuditLogGroupCreatedData Function()? data, }) { return AuditLogGroupCreated(
  id: id != null ? id() : this.id,
  data: data != null ? data() : this.data,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogGroupCreated &&
          id == other.id &&
          data == other.data; } 
@override int get hashCode { return Object.hash(id, data); } 
@override String toString() { return 'AuditLogGroupCreated(id: $id, data: $data)'; } 
 }
