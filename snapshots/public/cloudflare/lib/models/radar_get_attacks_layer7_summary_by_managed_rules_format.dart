// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetAttacksLayer7SummaryByManagedRulesFormat {const RadarGetAttacksLayer7SummaryByManagedRulesFormat._(this.value);

factory RadarGetAttacksLayer7SummaryByManagedRulesFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetAttacksLayer7SummaryByManagedRulesFormat._(json),
}; }

static const RadarGetAttacksLayer7SummaryByManagedRulesFormat $json = RadarGetAttacksLayer7SummaryByManagedRulesFormat._('JSON');

static const RadarGetAttacksLayer7SummaryByManagedRulesFormat csv = RadarGetAttacksLayer7SummaryByManagedRulesFormat._('CSV');

static const List<RadarGetAttacksLayer7SummaryByManagedRulesFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer7SummaryByManagedRulesFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7SummaryByManagedRulesFormat($value)'; } 
 }
