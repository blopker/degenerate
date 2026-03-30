// GENERATED CODE - DO NOT MODIFY BY HAND

import 'audit_log_service_account_updated_changes_requested.dart';/// The details for events with this `type`.
final class AuditLogServiceAccountUpdated {const AuditLogServiceAccountUpdated({this.id, this.changesRequested, });

factory AuditLogServiceAccountUpdated.fromJson(Map<String, dynamic> json) { return AuditLogServiceAccountUpdated(
  id: json['id'] as String?,
  changesRequested: json['changes_requested'] != null ? AuditLogServiceAccountUpdatedChangesRequested.fromJson(json['changes_requested'] as Map<String, dynamic>) : null,
); }

/// The service account ID.
final String? id;

/// The payload used to updated the service account.
final AuditLogServiceAccountUpdatedChangesRequested? changesRequested;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  if (changesRequested != null) 'changes_requested': changesRequested?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'changes_requested'}.contains(key)); } 
AuditLogServiceAccountUpdated copyWith({String Function()? id, AuditLogServiceAccountUpdatedChangesRequested Function()? changesRequested, }) { return AuditLogServiceAccountUpdated(
  id: id != null ? id() : this.id,
  changesRequested: changesRequested != null ? changesRequested() : this.changesRequested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogServiceAccountUpdated &&
          id == other.id &&
          changesRequested == other.changesRequested; } 
@override int get hashCode { return Object.hash(id, changesRequested); } 
@override String toString() { return 'AuditLogServiceAccountUpdated(id: $id, changesRequested: $changesRequested)'; } 
 }
