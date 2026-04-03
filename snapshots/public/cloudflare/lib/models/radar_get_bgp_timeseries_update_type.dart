// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetBgpTimeseriesUpdateType {const RadarGetBgpTimeseriesUpdateType._(this.value);

factory RadarGetBgpTimeseriesUpdateType.fromJson(String json) { return switch (json) {
  'ANNOUNCEMENT' => announcement,
  'WITHDRAWAL' => withdrawal,
  _ => RadarGetBgpTimeseriesUpdateType._(json),
}; }

static const RadarGetBgpTimeseriesUpdateType announcement = RadarGetBgpTimeseriesUpdateType._('ANNOUNCEMENT');

static const RadarGetBgpTimeseriesUpdateType withdrawal = RadarGetBgpTimeseriesUpdateType._('WITHDRAWAL');

static const List<RadarGetBgpTimeseriesUpdateType> values = [announcement, withdrawal];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetBgpTimeseriesUpdateType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetBgpTimeseriesUpdateType($value)'; } 
 }
