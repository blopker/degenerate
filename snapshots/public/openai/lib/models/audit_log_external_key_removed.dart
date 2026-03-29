// GENERATED CODE - DO NOT MODIFY BY HAND

/// The details for events with this `type`.
final class AuditLogExternalKeyRemoved {const AuditLogExternalKeyRemoved({this.id});

factory AuditLogExternalKeyRemoved.fromJson(Map<String, dynamic> json) { return AuditLogExternalKeyRemoved(
  id: json['id'] as String?,
); }

/// The ID of the external key configuration.
final String? id;

Map<String, dynamic> toJson() { return {
  'id': ?id,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
AuditLogExternalKeyRemoved copyWith({String Function()? id}) { return AuditLogExternalKeyRemoved(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogExternalKeyRemoved &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'AuditLogExternalKeyRemoved(id: $id)'; } 
 }
