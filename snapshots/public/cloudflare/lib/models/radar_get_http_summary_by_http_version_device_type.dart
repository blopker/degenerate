// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpSummaryByHttpVersionDeviceType {const RadarGetHttpSummaryByHttpVersionDeviceType._(this.value);

factory RadarGetHttpSummaryByHttpVersionDeviceType.fromJson(String json) { return switch (json) {
  'DESKTOP' => desktop,
  'MOBILE' => mobile,
  'OTHER' => $other,
  _ => RadarGetHttpSummaryByHttpVersionDeviceType._(json),
}; }

static const RadarGetHttpSummaryByHttpVersionDeviceType desktop = RadarGetHttpSummaryByHttpVersionDeviceType._('DESKTOP');

static const RadarGetHttpSummaryByHttpVersionDeviceType mobile = RadarGetHttpSummaryByHttpVersionDeviceType._('MOBILE');

static const RadarGetHttpSummaryByHttpVersionDeviceType $other = RadarGetHttpSummaryByHttpVersionDeviceType._('OTHER');

static const List<RadarGetHttpSummaryByHttpVersionDeviceType> values = [desktop, mobile, $other];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpSummaryByHttpVersionDeviceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpSummaryByHttpVersionDeviceType($value)'; } 
 }
