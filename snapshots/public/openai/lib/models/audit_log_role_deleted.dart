// GENERATED CODE - DO NOT MODIFY BY HAND

/// The details for events with this `type`.
final class AuditLogRoleDeleted {const AuditLogRoleDeleted({this.id});

factory AuditLogRoleDeleted.fromJson(Map<String, dynamic> json) { return AuditLogRoleDeleted(
  id: json['id'] as String?,
); }

/// The role ID.
final String? id;

Map<String, dynamic> toJson() { return {
  'id': ?id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
AuditLogRoleDeleted copyWith({String Function()? id}) { return AuditLogRoleDeleted(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogRoleDeleted &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'AuditLogRoleDeleted(id: $id)'; } 
 }
