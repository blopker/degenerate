// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetReportsDatasetsFormat {const RadarGetReportsDatasetsFormat._(this.value);

factory RadarGetReportsDatasetsFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetReportsDatasetsFormat._(json),
}; }

static const RadarGetReportsDatasetsFormat $json = RadarGetReportsDatasetsFormat._('JSON');

static const RadarGetReportsDatasetsFormat csv = RadarGetReportsDatasetsFormat._('CSV');

static const List<RadarGetReportsDatasetsFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetReportsDatasetsFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetReportsDatasetsFormat($value)'; } 
 }
