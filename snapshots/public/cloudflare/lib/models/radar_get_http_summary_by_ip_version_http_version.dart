// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpSummaryByIpVersionHttpVersion {const RadarGetHttpSummaryByIpVersionHttpVersion._(this.value);

factory RadarGetHttpSummaryByIpVersionHttpVersion.fromJson(String json) { return switch (json) {
  'HTTPv1' => httPv1,
  'HTTPv2' => httPv2,
  'HTTPv3' => httPv3,
  _ => RadarGetHttpSummaryByIpVersionHttpVersion._(json),
}; }

static const RadarGetHttpSummaryByIpVersionHttpVersion httPv1 = RadarGetHttpSummaryByIpVersionHttpVersion._('HTTPv1');

static const RadarGetHttpSummaryByIpVersionHttpVersion httPv2 = RadarGetHttpSummaryByIpVersionHttpVersion._('HTTPv2');

static const RadarGetHttpSummaryByIpVersionHttpVersion httPv3 = RadarGetHttpSummaryByIpVersionHttpVersion._('HTTPv3');

static const List<RadarGetHttpSummaryByIpVersionHttpVersion> values = [httPv1, httPv2, httPv3];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpSummaryByIpVersionHttpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpSummaryByIpVersionHttpVersion($value)'; } 
 }
