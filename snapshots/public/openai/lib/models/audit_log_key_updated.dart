// GENERATED CODE - DO NOT MODIFY BY HAND

import 'audit_log_key_updated_changes_requested.dart';/// The details for events with this `type`.
final class AuditLogKeyUpdated {const AuditLogKeyUpdated({this.id, this.changesRequested, });

factory AuditLogKeyUpdated.fromJson(Map<String, dynamic> json) { return AuditLogKeyUpdated(
  id: json['id'] as String?,
  changesRequested: json['changes_requested'] != null ? AuditLogKeyUpdatedChangesRequested.fromJson(json['changes_requested'] as Map<String, dynamic>) : null,
); }

/// The tracking ID of the API key.
final String? id;

/// The payload used to update the API key.
final AuditLogKeyUpdatedChangesRequested? changesRequested;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  if (changesRequested != null) 'changes_requested': changesRequested?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AuditLogKeyUpdated copyWith({String Function()? id, AuditLogKeyUpdatedChangesRequested Function()? changesRequested, }) { return AuditLogKeyUpdated(
  id: id != null ? id() : this.id,
  changesRequested: changesRequested != null ? changesRequested() : this.changesRequested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogKeyUpdated &&
          id == other.id &&
          changesRequested == other.changesRequested; } 
@override int get hashCode { return Object.hash(id, changesRequested); } 
@override String toString() { return 'AuditLogKeyUpdated(id: $id, changesRequested: $changesRequested)'; } 
 }
