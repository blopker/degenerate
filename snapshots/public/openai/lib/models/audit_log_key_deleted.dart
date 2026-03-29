// GENERATED CODE - DO NOT MODIFY BY HAND

/// The details for events with this `type`.
final class AuditLogKeyDeleted {const AuditLogKeyDeleted({this.id});

factory AuditLogKeyDeleted.fromJson(Map<String, dynamic> json) { return AuditLogKeyDeleted(
  id: json['id'] as String?,
); }

/// The tracking ID of the API key.
final String? id;

Map<String, dynamic> toJson() { return {
  'id': ?id,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AuditLogKeyDeleted copyWith({String Function()? id}) { return AuditLogKeyDeleted(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogKeyDeleted &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'AuditLogKeyDeleted(id: $id)'; } 
 }
