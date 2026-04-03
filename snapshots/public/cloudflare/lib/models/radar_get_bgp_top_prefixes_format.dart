// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetBgpTopPrefixesFormat {const RadarGetBgpTopPrefixesFormat._(this.value);

factory RadarGetBgpTopPrefixesFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetBgpTopPrefixesFormat._(json),
}; }

static const RadarGetBgpTopPrefixesFormat $json = RadarGetBgpTopPrefixesFormat._('JSON');

static const RadarGetBgpTopPrefixesFormat csv = RadarGetBgpTopPrefixesFormat._('CSV');

static const List<RadarGetBgpTopPrefixesFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetBgpTopPrefixesFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetBgpTopPrefixesFormat($value)'; } 
 }
