// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetAttacksLayer3SummaryByProtocolFormat {const RadarGetAttacksLayer3SummaryByProtocolFormat._(this.value);

factory RadarGetAttacksLayer3SummaryByProtocolFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetAttacksLayer3SummaryByProtocolFormat._(json),
}; }

static const RadarGetAttacksLayer3SummaryByProtocolFormat $json = RadarGetAttacksLayer3SummaryByProtocolFormat._('JSON');

static const RadarGetAttacksLayer3SummaryByProtocolFormat csv = RadarGetAttacksLayer3SummaryByProtocolFormat._('CSV');

static const List<RadarGetAttacksLayer3SummaryByProtocolFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer3SummaryByProtocolFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer3SummaryByProtocolFormat($value)'; } 
 }
