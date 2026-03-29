// GENERATED CODE - DO NOT MODIFY BY HAND

final class AuditLogCertificatesDeactivatedCertificates {const AuditLogCertificatesDeactivatedCertificates({this.id, this.name, });

factory AuditLogCertificatesDeactivatedCertificates.fromJson(Map<String, dynamic> json) { return AuditLogCertificatesDeactivatedCertificates(
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
static bool canParse(Map<String, dynamic> json) { return true; } 
AuditLogCertificatesDeactivatedCertificates copyWith({String Function()? id, String Function()? name, }) { return AuditLogCertificatesDeactivatedCertificates(
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogCertificatesDeactivatedCertificates &&
          id == other.id &&
          name == other.name; } 
@override int get hashCode { return Object.hash(id, name); } 
@override String toString() { return 'AuditLogCertificatesDeactivatedCertificates(id: $id, name: $name)'; } 
 }
