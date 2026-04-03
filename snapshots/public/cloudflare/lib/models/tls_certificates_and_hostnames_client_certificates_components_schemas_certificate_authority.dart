// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Certificate Authority used to issue the Client Certificate
@immutable final class TlsCertificatesAndHostnamesClientCertificatesComponentsSchemasCertificateAuthority {const TlsCertificatesAndHostnamesClientCertificatesComponentsSchemasCertificateAuthority({this.id, this.name, });

factory TlsCertificatesAndHostnamesClientCertificatesComponentsSchemasCertificateAuthority.fromJson(Map<String, dynamic> json) { return TlsCertificatesAndHostnamesClientCertificatesComponentsSchemasCertificateAuthority(
  id: json['id'] as String?,
  name: json['name'] as String?,
); }

final String? id;

final String? name;

Map<String, dynamic> toJson() { return {
  'id': ?id,
  'name': ?name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'name'}.contains(key)); } 
TlsCertificatesAndHostnamesClientCertificatesComponentsSchemasCertificateAuthority copyWith({String Function()? id, String Function()? name, }) { return TlsCertificatesAndHostnamesClientCertificatesComponentsSchemasCertificateAuthority(
  id: id != null ? id() : this.id,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TlsCertificatesAndHostnamesClientCertificatesComponentsSchemasCertificateAuthority &&
          id == other.id &&
          name == other.name; } 
@override int get hashCode { return Object.hash(id, name); } 
@override String toString() { return 'TlsCertificatesAndHostnamesClientCertificatesComponentsSchemasCertificateAuthority(id: $id, name: $name)'; } 
 }
