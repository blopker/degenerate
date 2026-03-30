// GENERATED CODE - DO NOT MODIFY BY HAND

/// The details for events with this `type`.
final class AuditLogUserDeleted {const AuditLogUserDeleted({this.id});

factory AuditLogUserDeleted.fromJson(Map<String, dynamic> json) { return AuditLogUserDeleted(
  id: json['id'] as String?,
); }

/// The user ID.
final String? id;

Map<String, dynamic> toJson() { return {
  'id': ?id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
AuditLogUserDeleted copyWith({String Function()? id}) { return AuditLogUserDeleted(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogUserDeleted &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'AuditLogUserDeleted(id: $id)'; } 
 }
