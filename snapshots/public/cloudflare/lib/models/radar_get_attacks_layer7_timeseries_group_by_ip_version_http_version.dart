// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetAttacksLayer7TimeseriesGroupByIpVersionHttpVersion {const RadarGetAttacksLayer7TimeseriesGroupByIpVersionHttpVersion._(this.value);

factory RadarGetAttacksLayer7TimeseriesGroupByIpVersionHttpVersion.fromJson(String json) { return switch (json) {
  'HTTPv1' => httPv1,
  'HTTPv2' => httPv2,
  'HTTPv3' => httPv3,
  _ => RadarGetAttacksLayer7TimeseriesGroupByIpVersionHttpVersion._(json),
}; }

static const RadarGetAttacksLayer7TimeseriesGroupByIpVersionHttpVersion httPv1 = RadarGetAttacksLayer7TimeseriesGroupByIpVersionHttpVersion._('HTTPv1');

static const RadarGetAttacksLayer7TimeseriesGroupByIpVersionHttpVersion httPv2 = RadarGetAttacksLayer7TimeseriesGroupByIpVersionHttpVersion._('HTTPv2');

static const RadarGetAttacksLayer7TimeseriesGroupByIpVersionHttpVersion httPv3 = RadarGetAttacksLayer7TimeseriesGroupByIpVersionHttpVersion._('HTTPv3');

static const List<RadarGetAttacksLayer7TimeseriesGroupByIpVersionHttpVersion> values = [httPv1, httPv2, httPv3];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer7TimeseriesGroupByIpVersionHttpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7TimeseriesGroupByIpVersionHttpVersion($value)'; } 
 }
