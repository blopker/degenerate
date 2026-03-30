// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tls_certificates_and_hostnames_identifier.dart';final class TlsCertificatesAndHostnamesDeleteAdvancedCertificatePackResponseSingleResult {const TlsCertificatesAndHostnamesDeleteAdvancedCertificatePackResponseSingleResult({this.id});

factory TlsCertificatesAndHostnamesDeleteAdvancedCertificatePackResponseSingleResult.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesDeleteAdvancedCertificatePackResponseSingleResult(
  id: json['id'] != null ? TlsCertificatesAndHostnamesIdentifier.fromJson(json['id'] as String) : null,
); }

final TlsCertificatesAndHostnamesIdentifier? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
TlsCertificatesAndHostnamesDeleteAdvancedCertificatePackResponseSingleResult copyWith({TlsCertificatesAndHostnamesIdentifier Function()? id}) { return TlsCertificatesAndHostnamesDeleteAdvancedCertificatePackResponseSingleResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesDeleteAdvancedCertificatePackResponseSingleResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesDeleteAdvancedCertificatePackResponseSingleResult(id: $id)'; } 
 }
