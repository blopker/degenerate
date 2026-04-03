// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetAttacksLayer7SummaryHttpVersion {const RadarGetAttacksLayer7SummaryHttpVersion._(this.value);

factory RadarGetAttacksLayer7SummaryHttpVersion.fromJson(String json) { return switch (json) {
  'HTTPv1' => httPv1,
  'HTTPv2' => httPv2,
  'HTTPv3' => httPv3,
  _ => RadarGetAttacksLayer7SummaryHttpVersion._(json),
}; }

static const RadarGetAttacksLayer7SummaryHttpVersion httPv1 = RadarGetAttacksLayer7SummaryHttpVersion._('HTTPv1');

static const RadarGetAttacksLayer7SummaryHttpVersion httPv2 = RadarGetAttacksLayer7SummaryHttpVersion._('HTTPv2');

static const RadarGetAttacksLayer7SummaryHttpVersion httPv3 = RadarGetAttacksLayer7SummaryHttpVersion._('HTTPv3');

static const List<RadarGetAttacksLayer7SummaryHttpVersion> values = [httPv1, httPv2, httPv3];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer7SummaryHttpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7SummaryHttpVersion($value)'; } 
 }
