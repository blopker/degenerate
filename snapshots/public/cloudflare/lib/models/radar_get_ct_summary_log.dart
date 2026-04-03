// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetCtSummaryLog {const RadarGetCtSummaryLog._(this.value);

factory RadarGetCtSummaryLog.fromJson(String json) { return switch (json) {
  'RFC6962' => rfc6962,
  'STATIC' => $static,
  _ => RadarGetCtSummaryLog._(json),
}; }

static const RadarGetCtSummaryLog rfc6962 = RadarGetCtSummaryLog._('RFC6962');

static const RadarGetCtSummaryLog $static = RadarGetCtSummaryLog._('STATIC');

static const List<RadarGetCtSummaryLog> values = [rfc6962, $static];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetCtSummaryLog && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetCtSummaryLog($value)'; } 
 }
