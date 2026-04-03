// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetEmailSecurityTopTldsBySpamFormat {const RadarGetEmailSecurityTopTldsBySpamFormat._(this.value);

factory RadarGetEmailSecurityTopTldsBySpamFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetEmailSecurityTopTldsBySpamFormat._(json),
}; }

static const RadarGetEmailSecurityTopTldsBySpamFormat $json = RadarGetEmailSecurityTopTldsBySpamFormat._('JSON');

static const RadarGetEmailSecurityTopTldsBySpamFormat csv = RadarGetEmailSecurityTopTldsBySpamFormat._('CSV');

static const List<RadarGetEmailSecurityTopTldsBySpamFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTopTldsBySpamFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTopTldsBySpamFormat($value)'; } 
 }
