// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetBgpPfx2asMoasFormat {const RadarGetBgpPfx2asMoasFormat._(this.value);

factory RadarGetBgpPfx2asMoasFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetBgpPfx2asMoasFormat._(json),
}; }

static const RadarGetBgpPfx2asMoasFormat $json = RadarGetBgpPfx2asMoasFormat._('JSON');

static const RadarGetBgpPfx2asMoasFormat csv = RadarGetBgpPfx2asMoasFormat._('CSV');

static const List<RadarGetBgpPfx2asMoasFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetBgpPfx2asMoasFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetBgpPfx2asMoasFormat($value)'; } 
 }
