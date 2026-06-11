// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Value of the zone setting.
/// Notes: The minimum TTL available depends on the plan level of the zone. (Enterprise = 30, Business = 1800, Pro = 3600, Free = 7200)
@immutable final class ZonesEdgeCacheTtlValue {const ZonesEdgeCacheTtlValue._(this.value);

factory ZonesEdgeCacheTtlValue.fromJson(double json) { return switch (json) {
  30 => $30,
  60 => $60,
  300 => $300,
  1200 => $1200,
  1800 => $1800,
  3600 => $3600,
  7200 => $7200,
  10800 => $10800,
  14400 => $14400,
  18000 => $18000,
  28800 => $28800,
  43200 => $43200,
  57600 => $57600,
  72000 => $72000,
  86400 => $86400,
  172800 => $172800,
  259200 => $259200,
  345600 => $345600,
  432000 => $432000,
  518400 => $518400,
  604800 => $604800,
  _ => ZonesEdgeCacheTtlValue._(json),
}; }

static const ZonesEdgeCacheTtlValue $30 = ZonesEdgeCacheTtlValue._(30);

static const ZonesEdgeCacheTtlValue $60 = ZonesEdgeCacheTtlValue._(60);

static const ZonesEdgeCacheTtlValue $300 = ZonesEdgeCacheTtlValue._(300);

static const ZonesEdgeCacheTtlValue $1200 = ZonesEdgeCacheTtlValue._(1200);

static const ZonesEdgeCacheTtlValue $1800 = ZonesEdgeCacheTtlValue._(1800);

static const ZonesEdgeCacheTtlValue $3600 = ZonesEdgeCacheTtlValue._(3600);

static const ZonesEdgeCacheTtlValue $7200 = ZonesEdgeCacheTtlValue._(7200);

static const ZonesEdgeCacheTtlValue $10800 = ZonesEdgeCacheTtlValue._(10800);

static const ZonesEdgeCacheTtlValue $14400 = ZonesEdgeCacheTtlValue._(14400);

static const ZonesEdgeCacheTtlValue $18000 = ZonesEdgeCacheTtlValue._(18000);

static const ZonesEdgeCacheTtlValue $28800 = ZonesEdgeCacheTtlValue._(28800);

static const ZonesEdgeCacheTtlValue $43200 = ZonesEdgeCacheTtlValue._(43200);

static const ZonesEdgeCacheTtlValue $57600 = ZonesEdgeCacheTtlValue._(57600);

static const ZonesEdgeCacheTtlValue $72000 = ZonesEdgeCacheTtlValue._(72000);

static const ZonesEdgeCacheTtlValue $86400 = ZonesEdgeCacheTtlValue._(86400);

static const ZonesEdgeCacheTtlValue $172800 = ZonesEdgeCacheTtlValue._(172800);

static const ZonesEdgeCacheTtlValue $259200 = ZonesEdgeCacheTtlValue._(259200);

static const ZonesEdgeCacheTtlValue $345600 = ZonesEdgeCacheTtlValue._(345600);

static const ZonesEdgeCacheTtlValue $432000 = ZonesEdgeCacheTtlValue._(432000);

static const ZonesEdgeCacheTtlValue $518400 = ZonesEdgeCacheTtlValue._(518400);

static const ZonesEdgeCacheTtlValue $604800 = ZonesEdgeCacheTtlValue._(604800);

static const List<ZonesEdgeCacheTtlValue> values = [$30, $60, $300, $1200, $1800, $3600, $7200, $10800, $14400, $18000, $28800, $43200, $57600, $72000, $86400, $172800, $259200, $345600, $432000, $518400, $604800];

final double value;

double toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesEdgeCacheTtlValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesEdgeCacheTtlValue($value)'; } 
 }
