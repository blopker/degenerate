// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AuditLogCertificatesActivatedCertificates {const AuditLogCertificatesActivatedCertificates({this.id, this.name, });

factory AuditLogCertificatesActivatedCertificates.fromJson(Map<String, dynamic> json) { return AuditLogCertificatesActivatedCertificates(
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
AuditLogCertificatesActivatedCertificates copyWith({String Function()? id, String Function()? name, }) { return AuditLogCertificatesActivatedCertificates(
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AuditLogCertificatesActivatedCertificates &&
          id == other.id &&
          name == other.name; } 
@override int get hashCode { return Object.hash(id, name); } 
@override String toString() { return 'AuditLogCertificatesActivatedCertificates(id: $id, name: $name)'; } 
 }
