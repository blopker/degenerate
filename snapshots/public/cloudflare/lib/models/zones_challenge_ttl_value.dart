// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Value of the zone setting.
@immutable final class ZonesChallengeTtlValue {const ZonesChallengeTtlValue._(this.value);

factory ZonesChallengeTtlValue.fromJson(double json) { return switch (json) {
  300 => $300,
  900 => $900,
  1800 => $1800,
  2700 => $2700,
  3600 => $3600,
  7200 => $7200,
  10800 => $10800,
  14400 => $14400,
  28800 => $28800,
  57600 => $57600,
  86400 => $86400,
  604800 => $604800,
  2592000.0 => $25920000,
  31536000.0 => $315360000,
  _ => ZonesChallengeTtlValue._(json),
}; }

static const ZonesChallengeTtlValue $300 = ZonesChallengeTtlValue._(300);

static const ZonesChallengeTtlValue $900 = ZonesChallengeTtlValue._(900);

static const ZonesChallengeTtlValue $1800 = ZonesChallengeTtlValue._(1800);

static const ZonesChallengeTtlValue $2700 = ZonesChallengeTtlValue._(2700);

static const ZonesChallengeTtlValue $3600 = ZonesChallengeTtlValue._(3600);

static const ZonesChallengeTtlValue $7200 = ZonesChallengeTtlValue._(7200);

static const ZonesChallengeTtlValue $10800 = ZonesChallengeTtlValue._(10800);

static const ZonesChallengeTtlValue $14400 = ZonesChallengeTtlValue._(14400);

static const ZonesChallengeTtlValue $28800 = ZonesChallengeTtlValue._(28800);

static const ZonesChallengeTtlValue $57600 = ZonesChallengeTtlValue._(57600);

static const ZonesChallengeTtlValue $86400 = ZonesChallengeTtlValue._(86400);

static const ZonesChallengeTtlValue $604800 = ZonesChallengeTtlValue._(604800);

static const ZonesChallengeTtlValue $25920000 = ZonesChallengeTtlValue._(2592000.0);

static const ZonesChallengeTtlValue $315360000 = ZonesChallengeTtlValue._(31536000.0);

static const List<ZonesChallengeTtlValue> values = [$300, $900, $1800, $2700, $3600, $7200, $10800, $14400, $28800, $57600, $86400, $604800, $25920000, $315360000];

final double value;

double toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesChallengeTtlValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesChallengeTtlValue($value)'; } 
 }
