// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Signature type desired on certificate ("origin-rsa" (rsa), "origin-ecc" (ecdsa), or "keyless-certificate" (for Keyless SSL servers).
@immutable final class TlsCertificatesAndHostnamesRequestType {const TlsCertificatesAndHostnamesRequestType._(this.value);

factory TlsCertificatesAndHostnamesRequestType.fromJson(String json) { return switch (json) {
  'origin-rsa' => originRsa,
  'origin-ecc' => originEcc,
  'keyless-certificate' => keylessCertificate,
  _ => TlsCertificatesAndHostnamesRequestType._(json),
}; }

static const TlsCertificatesAndHostnamesRequestType originRsa = TlsCertificatesAndHostnamesRequestType._('origin-rsa');

static const TlsCertificatesAndHostnamesRequestType originEcc = TlsCertificatesAndHostnamesRequestType._('origin-ecc');

static const TlsCertificatesAndHostnamesRequestType keylessCertificate = TlsCertificatesAndHostnamesRequestType._('keyless-certificate');

static const List<TlsCertificatesAndHostnamesRequestType> values = [originRsa, originEcc, keylessCertificate];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TlsCertificatesAndHostnamesRequestType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesRequestType($value)'; } 
 }
