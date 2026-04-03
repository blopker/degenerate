// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'audit_log_user_updated_changes_requested.dart';/// The details for events with this `type`.
@immutable final class AuditLogUserUpdated {const AuditLogUserUpdated({this.id, this.changesRequested, });

factory AuditLogUserUpdated.fromJson(Map<String, dynamic> json) { return AuditLogUserUpdated(
  id: json['id'] as String?,
  changesRequested: json['changes_requested'] != null ? AuditLogUserUpdatedChangesRequested.fromJson(json['changes_requested'] as Map<String, dynamic>) : null,
); }

/// The project ID.
final String? id;

/// The payload used to update the user.
final AuditLogUserUpdatedChangesRequested? changesRequested;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  if (changesRequested != null) 'changes_requested': changesRequested?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'changes_requested'}.contains(key)); } 
AuditLogUserUpdated copyWith({String Function()? id, AuditLogUserUpdatedChangesRequested Function()? changesRequested, }) { return AuditLogUserUpdated(
  id: id != null ? id() : this.id,
  changesRequested: changesRequested != null ? changesRequested() : this.changesRequested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogUserUpdated &&
          id == other.id &&
          changesRequested == other.changesRequested; } 
@override int get hashCode { return Object.hash(id, changesRequested); } 
@override String toString() { return 'AuditLogUserUpdated(id: $id, changesRequested: $changesRequested)'; } 
 }
