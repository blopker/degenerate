// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tls_certificates_and_hostnames_identifier.dart';@immutable final class TlsCertificatesAndHostnamesCertificateResponseIdOnlyResult {const TlsCertificatesAndHostnamesCertificateResponseIdOnlyResult({this.id});

factory TlsCertificatesAndHostnamesCertificateResponseIdOnlyResult.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesCertificateResponseIdOnlyResult(
  id: json['id'] != null ? TlsCertificatesAndHostnamesIdentifier.fromJson(json['id'] as String) : null,
); }

final TlsCertificatesAndHostnamesIdentifier? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
TlsCertificatesAndHostnamesCertificateResponseIdOnlyResult copyWith({TlsCertificatesAndHostnamesIdentifier Function()? id}) { return TlsCertificatesAndHostnamesCertificateResponseIdOnlyResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesCertificateResponseIdOnlyResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesCertificateResponseIdOnlyResult(id: $id)'; } 
 }
