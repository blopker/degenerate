// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tls_certificates_and_hostnames_ownership_verification_http_variant1.dart';/// A value that is one of: `TlsCertificatesAndHostnamesOwnershipVerificationHttpVariant1`.
sealed class TlsCertificatesAndHostnamesOwnershipVerificationHttp {const TlsCertificatesAndHostnamesOwnershipVerificationHttp();

factory TlsCertificatesAndHostnamesOwnershipVerificationHttp.fromJson(Map<String, dynamic> json) {   if (TlsCertificatesAndHostnamesOwnershipVerificationHttpVariant1.canParse(json)) {
    return TlsCertificatesAndHostnamesOwnershipVerificationHttpTlsCertificatesAndHostnamesOwnershipVerificationHttpVariant1(TlsCertificatesAndHostnamesOwnershipVerificationHttpVariant1.fromJson(json));
  }
  return TlsCertificatesAndHostnamesOwnershipVerificationHttp$Unknown(json); }

/// The underlying raw value.
dynamic get value;
dynamic toJson() { return value; } 
 }
@immutable final class TlsCertificatesAndHostnamesOwnershipVerificationHttpTlsCertificatesAndHostnamesOwnershipVerificationHttpVariant1 extends TlsCertificatesAndHostnamesOwnershipVerificationHttp {const TlsCertificatesAndHostnamesOwnershipVerificationHttpTlsCertificatesAndHostnamesOwnershipVerificationHttpVariant1(this._value);

final TlsCertificatesAndHostnamesOwnershipVerificationHttpVariant1 _value;

@override TlsCertificatesAndHostnamesOwnershipVerificationHttpVariant1 get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TlsCertificatesAndHostnamesOwnershipVerificationHttpTlsCertificatesAndHostnamesOwnershipVerificationHttpVariant1 && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesOwnershipVerificationHttp.tlsCertificatesAndHostnamesOwnershipVerificationHttpVariant1($_value)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
@immutable final class TlsCertificatesAndHostnamesOwnershipVerificationHttp$Unknown extends TlsCertificatesAndHostnamesOwnershipVerificationHttp {const TlsCertificatesAndHostnamesOwnershipVerificationHttp$Unknown(this._value);

final dynamic _value;

@override dynamic get value { return _value ?? ''; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TlsCertificatesAndHostnamesOwnershipVerificationHttp$Unknown && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesOwnershipVerificationHttp.unknown($_value)'; } 
 }
