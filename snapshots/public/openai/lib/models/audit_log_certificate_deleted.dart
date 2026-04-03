// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The details for events with this `type`.
@immutable final class AuditLogCertificateDeleted {const AuditLogCertificateDeleted({this.id, this.name, this.certificate, });

factory AuditLogCertificateDeleted.fromJson(Map<String, dynamic> json) { return AuditLogCertificateDeleted(
  id: json['id'] as String?,
  name: json['name'] as String?,
  certificate: json['certificate'] as String?,
); }

/// The certificate ID.
final String? id;

/// The name of the certificate.
final String? name;

/// The certificate content in PEM format.
final String? certificate;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  'name': ?name,
  'certificate': ?certificate,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'name', 'certificate'}.contains(key)); } 
AuditLogCertificateDeleted copyWith({String Function()? id, String Function()? name, String Function()? certificate, }) { return AuditLogCertificateDeleted(
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
  certificate: certificate != null ? certificate() : this.certificate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogCertificateDeleted &&
          id == other.id &&
          name == other.name &&
          certificate == other.certificate; } 
@override int get hashCode { return Object.hash(id, name, certificate); } 
@override String toString() { return 'AuditLogCertificateDeleted(id: $id, name: $name, certificate: $certificate)'; } 
 }
