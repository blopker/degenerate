// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetQualityIndexTimeseriesGroupFormat {const RadarGetQualityIndexTimeseriesGroupFormat._(this.value);

factory RadarGetQualityIndexTimeseriesGroupFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetQualityIndexTimeseriesGroupFormat._(json),
}; }

static const RadarGetQualityIndexTimeseriesGroupFormat $json = RadarGetQualityIndexTimeseriesGroupFormat._('JSON');

static const RadarGetQualityIndexTimeseriesGroupFormat csv = RadarGetQualityIndexTimeseriesGroupFormat._('CSV');

static const List<RadarGetQualityIndexTimeseriesGroupFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetQualityIndexTimeseriesGroupFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetQualityIndexTimeseriesGroupFormat($value)'; } 
 }
