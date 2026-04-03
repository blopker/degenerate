// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetCtTimeseriesGroupEntryType {const RadarGetCtTimeseriesGroupEntryType._(this.value);

factory RadarGetCtTimeseriesGroupEntryType.fromJson(String json) { return switch (json) {
  'PRECERTIFICATE' => precertificate,
  'CERTIFICATE' => certificate,
  _ => RadarGetCtTimeseriesGroupEntryType._(json),
}; }

static const RadarGetCtTimeseriesGroupEntryType precertificate = RadarGetCtTimeseriesGroupEntryType._('PRECERTIFICATE');

static const RadarGetCtTimeseriesGroupEntryType certificate = RadarGetCtTimeseriesGroupEntryType._('CERTIFICATE');

static const List<RadarGetCtTimeseriesGroupEntryType> values = [precertificate, certificate];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetCtTimeseriesGroupEntryType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetCtTimeseriesGroupEntryType($value)'; } 
 }
