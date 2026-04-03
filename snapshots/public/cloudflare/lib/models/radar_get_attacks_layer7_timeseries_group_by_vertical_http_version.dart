// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetAttacksLayer7TimeseriesGroupByVerticalHttpVersion {const RadarGetAttacksLayer7TimeseriesGroupByVerticalHttpVersion._(this.value);

factory RadarGetAttacksLayer7TimeseriesGroupByVerticalHttpVersion.fromJson(String json) { return switch (json) {
  'HTTPv1' => httPv1,
  'HTTPv2' => httPv2,
  'HTTPv3' => httPv3,
  _ => RadarGetAttacksLayer7TimeseriesGroupByVerticalHttpVersion._(json),
}; }

static const RadarGetAttacksLayer7TimeseriesGroupByVerticalHttpVersion httPv1 = RadarGetAttacksLayer7TimeseriesGroupByVerticalHttpVersion._('HTTPv1');

static const RadarGetAttacksLayer7TimeseriesGroupByVerticalHttpVersion httPv2 = RadarGetAttacksLayer7TimeseriesGroupByVerticalHttpVersion._('HTTPv2');

static const RadarGetAttacksLayer7TimeseriesGroupByVerticalHttpVersion httPv3 = RadarGetAttacksLayer7TimeseriesGroupByVerticalHttpVersion._('HTTPv3');

static const List<RadarGetAttacksLayer7TimeseriesGroupByVerticalHttpVersion> values = [httPv1, httPv2, httPv3];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer7TimeseriesGroupByVerticalHttpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7TimeseriesGroupByVerticalHttpVersion($value)'; } 
 }
