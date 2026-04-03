// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Origins.
@immutable final class RadarGetOriginsSummaryOrigin {const RadarGetOriginsSummaryOrigin._(this.value);

factory RadarGetOriginsSummaryOrigin.fromJson(String json) { return switch (json) {
  'AMAZON' => amazon,
  'GOOGLE' => google,
  'MICROSOFT' => microsoft,
  'ORACLE' => oracle,
  _ => RadarGetOriginsSummaryOrigin._(json),
}; }

static const RadarGetOriginsSummaryOrigin amazon = RadarGetOriginsSummaryOrigin._('AMAZON');

static const RadarGetOriginsSummaryOrigin google = RadarGetOriginsSummaryOrigin._('GOOGLE');

static const RadarGetOriginsSummaryOrigin microsoft = RadarGetOriginsSummaryOrigin._('MICROSOFT');

static const RadarGetOriginsSummaryOrigin oracle = RadarGetOriginsSummaryOrigin._('ORACLE');

static const List<RadarGetOriginsSummaryOrigin> values = [amazon, google, microsoft, oracle];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetOriginsSummaryOrigin && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetOriginsSummaryOrigin($value)'; } 
 }
