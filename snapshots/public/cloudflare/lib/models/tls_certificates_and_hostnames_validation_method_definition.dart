// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Desired validation method.
@immutable final class TlsCertificatesAndHostnamesValidationMethodDefinition {const TlsCertificatesAndHostnamesValidationMethodDefinition._(this.value);

factory TlsCertificatesAndHostnamesValidationMethodDefinition.fromJson(String json) { return switch (json) {
  'http' => http,
  'cname' => cname,
  'txt' => txt,
  'email' => email,
  _ => TlsCertificatesAndHostnamesValidationMethodDefinition._(json),
}; }

static const TlsCertificatesAndHostnamesValidationMethodDefinition http = TlsCertificatesAndHostnamesValidationMethodDefinition._('http');

static const TlsCertificatesAndHostnamesValidationMethodDefinition cname = TlsCertificatesAndHostnamesValidationMethodDefinition._('cname');

static const TlsCertificatesAndHostnamesValidationMethodDefinition txt = TlsCertificatesAndHostnamesValidationMethodDefinition._('txt');

static const TlsCertificatesAndHostnamesValidationMethodDefinition email = TlsCertificatesAndHostnamesValidationMethodDefinition._('email');

static const List<TlsCertificatesAndHostnamesValidationMethodDefinition> values = [http, cname, txt, email];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TlsCertificatesAndHostnamesValidationMethodDefinition && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesValidationMethodDefinition($value)'; } 
 }
