// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'audit_log_role_updated_changes_requested.dart';/// The details for events with this `type`.
@immutable final class AuditLogRoleUpdated {const AuditLogRoleUpdated({this.id, this.changesRequested, });

factory AuditLogRoleUpdated.fromJson(Map<String, dynamic> json) { return AuditLogRoleUpdated(
  id: json['id'] as String?,
  changesRequested: json['changes_requested'] != null ? AuditLogRoleUpdatedChangesRequested.fromJson(json['changes_requested'] as Map<String, dynamic>) : null,
); }

/// The role ID.
final String? id;

/// The payload used to update the role.
final AuditLogRoleUpdatedChangesRequested? changesRequested;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  if (changesRequested != null) 'changes_requested': changesRequested?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'changes_requested'}.contains(key)); } 
AuditLogRoleUpdated copyWith({String Function()? id, AuditLogRoleUpdatedChangesRequested Function()? changesRequested, }) { return AuditLogRoleUpdated(
  id: id != null ? id() : this.id,
  changesRequested: changesRequested != null ? changesRequested() : this.changesRequested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogRoleUpdated &&
          id == other.id &&
          changesRequested == other.changesRequested; } 
@override int get hashCode { return Object.hash(id, changesRequested); } 
@override String toString() { return 'AuditLogRoleUpdated(id: $id, changesRequested: $changesRequested)'; } 
 }
