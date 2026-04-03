// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Format in which results will be returned.
@immutable final class RadarGetVerifiedBotsTopByHttpRequestsFormat {const RadarGetVerifiedBotsTopByHttpRequestsFormat._(this.value);

factory RadarGetVerifiedBotsTopByHttpRequestsFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetVerifiedBotsTopByHttpRequestsFormat._(json),
}; }

static const RadarGetVerifiedBotsTopByHttpRequestsFormat $json = RadarGetVerifiedBotsTopByHttpRequestsFormat._('JSON');

static const RadarGetVerifiedBotsTopByHttpRequestsFormat csv = RadarGetVerifiedBotsTopByHttpRequestsFormat._('CSV');

static const List<RadarGetVerifiedBotsTopByHttpRequestsFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetVerifiedBotsTopByHttpRequestsFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetVerifiedBotsTopByHttpRequestsFormat($value)'; } 
 }
