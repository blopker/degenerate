// GENERATED CODE - DO NOT MODIFY BY HAND

/// The validity period in days for the certificates ordered via Total TLS.
final class TlsCertificatesAndHostnamesValidityPeriod {const TlsCertificatesAndHostnamesValidityPeriod._(this.value);

factory TlsCertificatesAndHostnamesValidityPeriod.fromJson(int json) { return switch (json) {
  90 => $90,
  _ => TlsCertificatesAndHostnamesValidityPeriod._(json),
}; }

static const TlsCertificatesAndHostnamesValidityPeriod $90 = TlsCertificatesAndHostnamesValidityPeriod._(90);

static const List<TlsCertificatesAndHostnamesValidityPeriod> values = [$90];

final int value;

int toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TlsCertificatesAndHostnamesValidityPeriod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesValidityPeriod($value)'; } 
 }
