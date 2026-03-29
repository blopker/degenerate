// GENERATED CODE - DO NOT MODIFY BY HAND

import 'tls_certificates_and_hostnames_ownership_verification_txt.dart';/// A value that is one of: `TlsCertificatesAndHostnamesOwnershipVerificationTxt`.
sealed class TlsCertificatesAndHostnamesOwnershipVerification {const TlsCertificatesAndHostnamesOwnershipVerification();

factory TlsCertificatesAndHostnamesOwnershipVerification.fromJson(Map<String, dynamic> json) {   if (TlsCertificatesAndHostnamesOwnershipVerificationTxt.canParse(json)) {
    return TlsCertificatesAndHostnamesOwnershipVerificationTlsCertificatesAndHostnamesOwnershipVerificationTxt(TlsCertificatesAndHostnamesOwnershipVerificationTxt.fromJson(json));
  }
  return TlsCertificatesAndHostnamesOwnershipVerification$Unknown(json); }

/// The underlying raw value.
dynamic get value;
dynamic toJson() { return value; } 
 }
final class TlsCertificatesAndHostnamesOwnershipVerificationTlsCertificatesAndHostnamesOwnershipVerificationTxt extends TlsCertificatesAndHostnamesOwnershipVerification {const TlsCertificatesAndHostnamesOwnershipVerificationTlsCertificatesAndHostnamesOwnershipVerificationTxt(this._value);

final TlsCertificatesAndHostnamesOwnershipVerificationTxt _value;

@override TlsCertificatesAndHostnamesOwnershipVerificationTxt get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TlsCertificatesAndHostnamesOwnershipVerificationTlsCertificatesAndHostnamesOwnershipVerificationTxt && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesOwnershipVerification.tlsCertificatesAndHostnamesOwnershipVerificationTxt($_value)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
final class TlsCertificatesAndHostnamesOwnershipVerification$Unknown extends TlsCertificatesAndHostnamesOwnershipVerification {const TlsCertificatesAndHostnamesOwnershipVerification$Unknown(this._value);

final dynamic _value;

@override dynamic get value { return _value ?? ''; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TlsCertificatesAndHostnamesOwnershipVerification$Unknown && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesOwnershipVerification.unknown($_value)'; } 
 }
