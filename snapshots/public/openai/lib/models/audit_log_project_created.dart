// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'audit_log_project_created_data.dart';/// The details for events with this `type`.
@immutable final class AuditLogProjectCreated {const AuditLogProjectCreated({this.id, this.data, });

factory AuditLogProjectCreated.fromJson(Map<String, dynamic> json) { return AuditLogProjectCreated(
  id: json['id'] as String?,
  data: json['data'] != null ? AuditLogProjectCreatedData.fromJson(json['data'] as Map<String, dynamic>) : null,
); }

/// The project ID.
final String? id;

/// The payload used to create the project.
final AuditLogProjectCreatedData? data;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  if (data != null) 'data': data?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'data'}.contains(key)); } 
AuditLogProjectCreated copyWith({String Function()? id, AuditLogProjectCreatedData Function()? data, }) { return AuditLogProjectCreated(
  id: id != null ? id() : this.id,
  data: data != null ? data() : this.data,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogProjectCreated &&
          id == other.id &&
          data == other.data; } 
@override int get hashCode { return Object.hash(id, data); } 
@override String toString() { return 'AuditLogProjectCreated(id: $id, data: $data)'; } 
 }
