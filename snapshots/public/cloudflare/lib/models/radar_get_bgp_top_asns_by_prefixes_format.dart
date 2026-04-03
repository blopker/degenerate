// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetBgpTopAsnsByPrefixesFormat {const RadarGetBgpTopAsnsByPrefixesFormat._(this.value);

factory RadarGetBgpTopAsnsByPrefixesFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetBgpTopAsnsByPrefixesFormat._(json),
}; }

static const RadarGetBgpTopAsnsByPrefixesFormat $json = RadarGetBgpTopAsnsByPrefixesFormat._('JSON');

static const RadarGetBgpTopAsnsByPrefixesFormat csv = RadarGetBgpTopAsnsByPrefixesFormat._('CSV');

static const List<RadarGetBgpTopAsnsByPrefixesFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetBgpTopAsnsByPrefixesFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetBgpTopAsnsByPrefixesFormat($value)'; } 
 }
