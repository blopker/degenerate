// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tls_certificates_and_hostnames_identifier.dart';final class TlsCertificatesAndHostnamesKeylessResponseSingleIdResult {const TlsCertificatesAndHostnamesKeylessResponseSingleIdResult({this.id});

factory TlsCertificatesAndHostnamesKeylessResponseSingleIdResult.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesKeylessResponseSingleIdResult(
  id: json['id'] != null ? TlsCertificatesAndHostnamesIdentifier.fromJson(json['id'] as String) : null,
); }

/// Identifier.
final TlsCertificatesAndHostnamesIdentifier? id;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id'}.contains(key)); } 
TlsCertificatesAndHostnamesKeylessResponseSingleIdResult copyWith({TlsCertificatesAndHostnamesIdentifier Function()? id}) { return TlsCertificatesAndHostnamesKeylessResponseSingleIdResult(
  id: id != null ? id() : this.id,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesKeylessResponseSingleIdResult &&
          id == other.id; } 
@override int get hashCode { return id.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesKeylessResponseSingleIdResult(id: $id)'; } 
 }
