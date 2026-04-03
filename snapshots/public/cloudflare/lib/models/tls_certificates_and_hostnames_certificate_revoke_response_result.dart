// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tls_certificates_and_hostnames_identifier.dart';/// When the certificate was revoked.
extension type TlsCertificatesAndHostnamesRevokedAt(DateTime value) {
factory TlsCertificatesAndHostnamesRevokedAt.fromJson(String json) => TlsCertificatesAndHostnamesRevokedAt(DateTime.parse(json));

String toJson() => value.toIso8601String();

}
@immutable final class TlsCertificatesAndHostnamesCertificateRevokeResponseResult {const TlsCertificatesAndHostnamesCertificateRevokeResponseResult({this.id, this.revokedAt, });

factory TlsCertificatesAndHostnamesCertificateRevokeResponseResult.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesCertificateRevokeResponseResult(
  id: json['id'] != null ? TlsCertificatesAndHostnamesIdentifier.fromJson(json['id'] as String) : null,
  revokedAt: json['revoked_at'] != null ? TlsCertificatesAndHostnamesRevokedAt.fromJson(json['revoked_at'] as String) : null,
); }

final TlsCertificatesAndHostnamesIdentifier? id;

final TlsCertificatesAndHostnamesRevokedAt? revokedAt;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
  if (revokedAt != null) 'revoked_at': revokedAt?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'revoked_at'}.contains(key)); } 
TlsCertificatesAndHostnamesCertificateRevokeResponseResult copyWith({TlsCertificatesAndHostnamesIdentifier Function()? id, TlsCertificatesAndHostnamesRevokedAt Function()? revokedAt, }) { return TlsCertificatesAndHostnamesCertificateRevokeResponseResult(
  id: id != null ? id() : this.id,
  revokedAt: revokedAt != null ? revokedAt() : this.revokedAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesCertificateRevokeResponseResult &&
          id == other.id &&
          revokedAt == other.revokedAt; } 
@override int get hashCode { return Object.hash(id, revokedAt); } 
@override String toString() { return 'TlsCertificatesAndHostnamesCertificateRevokeResponseResult(id: $id, revokedAt: $revokedAt)'; } 
 }
