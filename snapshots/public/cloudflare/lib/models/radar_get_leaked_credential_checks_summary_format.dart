// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetLeakedCredentialChecksSummaryFormat {const RadarGetLeakedCredentialChecksSummaryFormat._(this.value);

factory RadarGetLeakedCredentialChecksSummaryFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetLeakedCredentialChecksSummaryFormat._(json),
}; }

static const RadarGetLeakedCredentialChecksSummaryFormat $json = RadarGetLeakedCredentialChecksSummaryFormat._('JSON');

static const RadarGetLeakedCredentialChecksSummaryFormat csv = RadarGetLeakedCredentialChecksSummaryFormat._('CSV');

static const List<RadarGetLeakedCredentialChecksSummaryFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetLeakedCredentialChecksSummaryFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetLeakedCredentialChecksSummaryFormat($value)'; } 
 }
