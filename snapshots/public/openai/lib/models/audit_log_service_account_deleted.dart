// GENERATED CODE - DO NOT MODIFY BY HAND

/// The details for events with this `type`.
final class AuditLogServiceAccountDeleted {const AuditLogServiceAccountDeleted({this.id});

factory AuditLogServiceAccountDeleted.fromJson(Map<String, dynamic> json) { return AuditLogServiceAccountDeleted(
  id: json['id'] as String?,
); }

/// The service account ID.
final String? id;

Map<String, dynamic> toJson() { return {
  'id': ?id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
AuditLogServiceAccountDeleted copyWith({String Function()? id}) { return AuditLogServiceAccountDeleted(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogServiceAccountDeleted &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'AuditLogServiceAccountDeleted(id: $id)'; } 
 }
