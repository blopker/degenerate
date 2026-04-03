// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The Certificate Authority that Total TLS certificates will be issued through.
@immutable final class TlsCertificatesAndHostnamesComponentsSchemasCertificateAuthority {const TlsCertificatesAndHostnamesComponentsSchemasCertificateAuthority._(this.value);

factory TlsCertificatesAndHostnamesComponentsSchemasCertificateAuthority.fromJson(String json) { return switch (json) {
  'google' => google,
  'lets_encrypt' => letsEncrypt,
  'ssl_com' => sslCom,
  _ => TlsCertificatesAndHostnamesComponentsSchemasCertificateAuthority._(json),
}; }

static const TlsCertificatesAndHostnamesComponentsSchemasCertificateAuthority google = TlsCertificatesAndHostnamesComponentsSchemasCertificateAuthority._('google');

static const TlsCertificatesAndHostnamesComponentsSchemasCertificateAuthority letsEncrypt = TlsCertificatesAndHostnamesComponentsSchemasCertificateAuthority._('lets_encrypt');

static const TlsCertificatesAndHostnamesComponentsSchemasCertificateAuthority sslCom = TlsCertificatesAndHostnamesComponentsSchemasCertificateAuthority._('ssl_com');

static const List<TlsCertificatesAndHostnamesComponentsSchemasCertificateAuthority> values = [google, letsEncrypt, sslCom];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TlsCertificatesAndHostnamesComponentsSchemasCertificateAuthority && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesComponentsSchemasCertificateAuthority($value)'; } 
 }
