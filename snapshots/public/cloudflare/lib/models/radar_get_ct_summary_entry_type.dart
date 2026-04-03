// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetCtSummaryEntryType {const RadarGetCtSummaryEntryType._(this.value);

factory RadarGetCtSummaryEntryType.fromJson(String json) { return switch (json) {
  'PRECERTIFICATE' => precertificate,
  'CERTIFICATE' => certificate,
  _ => RadarGetCtSummaryEntryType._(json),
}; }

static const RadarGetCtSummaryEntryType precertificate = RadarGetCtSummaryEntryType._('PRECERTIFICATE');

static const RadarGetCtSummaryEntryType certificate = RadarGetCtSummaryEntryType._('CERTIFICATE');

static const List<RadarGetCtSummaryEntryType> values = [precertificate, certificate];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetCtSummaryEntryType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetCtSummaryEntryType($value)'; } 
 }
