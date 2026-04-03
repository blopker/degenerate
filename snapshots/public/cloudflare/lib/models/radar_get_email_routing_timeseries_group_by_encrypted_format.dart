// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetEmailRoutingTimeseriesGroupByEncryptedFormat {const RadarGetEmailRoutingTimeseriesGroupByEncryptedFormat._(this.value);

factory RadarGetEmailRoutingTimeseriesGroupByEncryptedFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetEmailRoutingTimeseriesGroupByEncryptedFormat._(json),
}; }

static const RadarGetEmailRoutingTimeseriesGroupByEncryptedFormat $json = RadarGetEmailRoutingTimeseriesGroupByEncryptedFormat._('JSON');

static const RadarGetEmailRoutingTimeseriesGroupByEncryptedFormat csv = RadarGetEmailRoutingTimeseriesGroupByEncryptedFormat._('CSV');

static const List<RadarGetEmailRoutingTimeseriesGroupByEncryptedFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailRoutingTimeseriesGroupByEncryptedFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailRoutingTimeseriesGroupByEncryptedFormat($value)'; } 
 }
