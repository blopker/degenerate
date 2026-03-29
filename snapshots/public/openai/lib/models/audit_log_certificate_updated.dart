// GENERATED CODE - DO NOT MODIFY BY HAND

/// The details for events with this `type`.
final class AuditLogCertificateUpdated {const AuditLogCertificateUpdated({this.id, this.name, });

factory AuditLogCertificateUpdated.fromJson(Map<String, dynamic> json) { return AuditLogCertificateUpdated(
  id: json['id'] as String?,
  name: json['name'] as String?,
); }

/// The certificate ID.
final String? id;

/// The name of the certificate.
final String? name;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  'name': ?name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'name'}.contains(key)); } 
AuditLogCertificateUpdated copyWith({String Function()? id, String Function()? name, }) { return AuditLogCertificateUpdated(
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogCertificateUpdated &&
          id == other.id &&
          name == other.name; } 
@override int get hashCode { return Object.hash(id, name); } 
@override String toString() { return 'AuditLogCertificateUpdated(id: $id, name: $name)'; } 
 }
