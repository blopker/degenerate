// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tls_certificates_and_hostnames_sslpost_dv.dart';/// A value that is one of: `TlsCertificatesAndHostnamesSslpostDv`.
sealed class TlsCertificatesAndHostnamesSslpost {const TlsCertificatesAndHostnamesSslpost();

factory TlsCertificatesAndHostnamesSslpost.fromJson(Map<String, dynamic> json) {   if (TlsCertificatesAndHostnamesSslpostDv.canParse(json)) {
    return TlsCertificatesAndHostnamesSslpostTlsCertificatesAndHostnamesSslpostDv(TlsCertificatesAndHostnamesSslpostDv.fromJson(json));
  }
  return TlsCertificatesAndHostnamesSslpost$Unknown(json); }

/// The underlying raw value.
dynamic get value;
dynamic toJson() { return value; } 
 }
final class TlsCertificatesAndHostnamesSslpostTlsCertificatesAndHostnamesSslpostDv extends TlsCertificatesAndHostnamesSslpost {const TlsCertificatesAndHostnamesSslpostTlsCertificatesAndHostnamesSslpostDv(this._value);

final TlsCertificatesAndHostnamesSslpostDv _value;

@override TlsCertificatesAndHostnamesSslpostDv get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TlsCertificatesAndHostnamesSslpostTlsCertificatesAndHostnamesSslpostDv && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesSslpost.tlsCertificatesAndHostnamesSslpostDv($_value)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
final class TlsCertificatesAndHostnamesSslpost$Unknown extends TlsCertificatesAndHostnamesSslpost {const TlsCertificatesAndHostnamesSslpost$Unknown(this._value);

final dynamic _value;

@override dynamic get value { return _value ?? ''; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TlsCertificatesAndHostnamesSslpost$Unknown && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesSslpost.unknown($_value)'; } 
 }
