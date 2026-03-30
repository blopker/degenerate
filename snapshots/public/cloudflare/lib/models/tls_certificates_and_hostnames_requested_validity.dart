// GENERATED CODE - DO NOT MODIFY BY HAND

/// The number of days for which the certificate should be valid.
final class TlsCertificatesAndHostnamesRequestedValidity {const TlsCertificatesAndHostnamesRequestedValidity._(this.value);

factory TlsCertificatesAndHostnamesRequestedValidity.fromJson(double json) { return switch (json) {
  7 => $7,
  30 => $30,
  90 => $90,
  365 => $365,
  730 => $730,
  1095 => $1095,
  5475 => $5475,
  _ => TlsCertificatesAndHostnamesRequestedValidity._(json),
}; }

static const TlsCertificatesAndHostnamesRequestedValidity $7 = TlsCertificatesAndHostnamesRequestedValidity._(7);

static const TlsCertificatesAndHostnamesRequestedValidity $30 = TlsCertificatesAndHostnamesRequestedValidity._(30);

static const TlsCertificatesAndHostnamesRequestedValidity $90 = TlsCertificatesAndHostnamesRequestedValidity._(90);

static const TlsCertificatesAndHostnamesRequestedValidity $365 = TlsCertificatesAndHostnamesRequestedValidity._(365);

static const TlsCertificatesAndHostnamesRequestedValidity $730 = TlsCertificatesAndHostnamesRequestedValidity._(730);

static const TlsCertificatesAndHostnamesRequestedValidity $1095 = TlsCertificatesAndHostnamesRequestedValidity._(1095);

static const TlsCertificatesAndHostnamesRequestedValidity $5475 = TlsCertificatesAndHostnamesRequestedValidity._(5475);

static const List<TlsCertificatesAndHostnamesRequestedValidity> values = [$7, $30, $90, $365, $730, $1095, $5475];

final double value;

double toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TlsCertificatesAndHostnamesRequestedValidity && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TlsCertificatesAndHostnamesRequestedValidity($value)'; } 
 }
