// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Value of the zone setting.
/// Notes: The size depends on the plan level of the zone. (Enterprise = 500, Business = 200, Pro = 100, Free = 100)
@immutable final class ZonesMaxUploadValue {const ZonesMaxUploadValue._(this.value);

factory ZonesMaxUploadValue.fromJson(int json) { return switch (json) {
  100 => $100,
  125 => $125,
  150 => $150,
  175 => $175,
  200 => $200,
  225 => $225,
  250 => $250,
  275 => $275,
  300 => $300,
  325 => $325,
  350 => $350,
  375 => $375,
  400 => $400,
  425 => $425,
  450 => $450,
  475 => $475,
  500 => $500,
  1000 => $1000,
  _ => ZonesMaxUploadValue._(json),
}; }

static const ZonesMaxUploadValue $100 = ZonesMaxUploadValue._(100);

static const ZonesMaxUploadValue $125 = ZonesMaxUploadValue._(125);

static const ZonesMaxUploadValue $150 = ZonesMaxUploadValue._(150);

static const ZonesMaxUploadValue $175 = ZonesMaxUploadValue._(175);

static const ZonesMaxUploadValue $200 = ZonesMaxUploadValue._(200);

static const ZonesMaxUploadValue $225 = ZonesMaxUploadValue._(225);

static const ZonesMaxUploadValue $250 = ZonesMaxUploadValue._(250);

static const ZonesMaxUploadValue $275 = ZonesMaxUploadValue._(275);

static const ZonesMaxUploadValue $300 = ZonesMaxUploadValue._(300);

static const ZonesMaxUploadValue $325 = ZonesMaxUploadValue._(325);

static const ZonesMaxUploadValue $350 = ZonesMaxUploadValue._(350);

static const ZonesMaxUploadValue $375 = ZonesMaxUploadValue._(375);

static const ZonesMaxUploadValue $400 = ZonesMaxUploadValue._(400);

static const ZonesMaxUploadValue $425 = ZonesMaxUploadValue._(425);

static const ZonesMaxUploadValue $450 = ZonesMaxUploadValue._(450);

static const ZonesMaxUploadValue $475 = ZonesMaxUploadValue._(475);

static const ZonesMaxUploadValue $500 = ZonesMaxUploadValue._(500);

static const ZonesMaxUploadValue $1000 = ZonesMaxUploadValue._(1000);

static const List<ZonesMaxUploadValue> values = [$100, $125, $150, $175, $200, $225, $250, $275, $300, $325, $350, $375, $400, $425, $450, $475, $500, $1000];

final int value;

int toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesMaxUploadValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesMaxUploadValue($value)'; } 
 }
