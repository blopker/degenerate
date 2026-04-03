// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetBgpRpkiAspaTimeseriesFormat {const RadarGetBgpRpkiAspaTimeseriesFormat._(this.value);

factory RadarGetBgpRpkiAspaTimeseriesFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetBgpRpkiAspaTimeseriesFormat._(json),
}; }

static const RadarGetBgpRpkiAspaTimeseriesFormat $json = RadarGetBgpRpkiAspaTimeseriesFormat._('JSON');

static const RadarGetBgpRpkiAspaTimeseriesFormat csv = RadarGetBgpRpkiAspaTimeseriesFormat._('CSV');

static const List<RadarGetBgpRpkiAspaTimeseriesFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetBgpRpkiAspaTimeseriesFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetBgpRpkiAspaTimeseriesFormat($value)'; } 
 }
