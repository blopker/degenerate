// GENERATED CODE - DO NOT MODIFY BY HAND

import 'audit_log_organization_updated_changes_requested.dart';/// The details for events with this `type`.
final class AuditLogOrganizationUpdated {const AuditLogOrganizationUpdated({this.id, this.changesRequested, });

factory AuditLogOrganizationUpdated.fromJson(Map<String, dynamic> json) { return AuditLogOrganizationUpdated(
  id: json['id'] as String?,
  changesRequested: json['changes_requested'] != null ? AuditLogOrganizationUpdatedChangesRequested.fromJson(json['changes_requested'] as Map<String, dynamic>) : null,
); }

/// The organization ID.
final String? id;

/// The payload used to update the organization settings.
final AuditLogOrganizationUpdatedChangesRequested? changesRequested;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  if (changesRequested != null) 'changes_requested': changesRequested?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'changes_requested'}.contains(key)); } 
AuditLogOrganizationUpdated copyWith({String Function()? id, AuditLogOrganizationUpdatedChangesRequested Function()? changesRequested, }) { return AuditLogOrganizationUpdated(
  id: id != null ? id() : this.id,
  changesRequested: changesRequested != null ? changesRequested() : this.changesRequested,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogOrganizationUpdated &&
          id == other.id &&
          changesRequested == other.changesRequested; } 
@override int get hashCode { return Object.hash(id, changesRequested); } 
@override String toString() { return 'AuditLogOrganizationUpdated(id: $id, changesRequested: $changesRequested)'; } 
 }
