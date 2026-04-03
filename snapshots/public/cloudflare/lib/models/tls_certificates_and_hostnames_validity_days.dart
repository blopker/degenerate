// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Validity Days selected for the order.
@immutable final class TlsCertificatesAndHostnamesValidityDays {const TlsCertificatesAndHostnamesValidityDays._(this.value);

factory TlsCertificatesAndHostnamesValidityDays.fromJson(int json) { return switch (json) {
  14 => $14,
  30 => $30,
  90 => $90,
  365 => $365,
  _ => TlsCertificatesAndHostnamesValidityDays._(json),
}; }

static const TlsCertificatesAndHostnamesValidityDays $14 = TlsCertificatesAndHostnamesValidityDays._(14);

static const TlsCertificatesAndHostnamesValidityDays $30 = TlsCertificatesAndHostnamesValidityDays._(30);

static const TlsCertificatesAndHostnamesValidityDays $90 = TlsCertificatesAndHostnamesValidityDays._(90);

static const TlsCertificatesAndHostnamesValidityDays $365 = TlsCertificatesAndHostnamesValidityDays._(365);

static const List<TlsCertificatesAndHostnamesValidityDays> values = [$14, $30, $90, $365];

final int value;

int toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TlsCertificatesAndHostnamesValidityDays && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesValidityDays($value)'; } 
 }
