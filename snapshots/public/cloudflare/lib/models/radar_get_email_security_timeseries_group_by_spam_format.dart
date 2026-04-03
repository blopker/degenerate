// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetEmailSecurityTimeseriesGroupBySpamFormat {const RadarGetEmailSecurityTimeseriesGroupBySpamFormat._(this.value);

factory RadarGetEmailSecurityTimeseriesGroupBySpamFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetEmailSecurityTimeseriesGroupBySpamFormat._(json),
}; }

static const RadarGetEmailSecurityTimeseriesGroupBySpamFormat $json = RadarGetEmailSecurityTimeseriesGroupBySpamFormat._('JSON');

static const RadarGetEmailSecurityTimeseriesGroupBySpamFormat csv = RadarGetEmailSecurityTimeseriesGroupBySpamFormat._('CSV');

static const List<RadarGetEmailSecurityTimeseriesGroupBySpamFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTimeseriesGroupBySpamFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTimeseriesGroupBySpamFormat($value)'; } 
 }
