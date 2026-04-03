// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTopLocationsByHttpProtocolTlsVersion {const RadarGetHttpTopLocationsByHttpProtocolTlsVersion._(this.value);

factory RadarGetHttpTopLocationsByHttpProtocolTlsVersion.fromJson(String json) { return switch (json) {
  'TLSv1_0' => tlSv10,
  'TLSv1_1' => tlSv11,
  'TLSv1_2' => tlSv12,
  'TLSv1_3' => tlSv13,
  'TLSvQUIC' => tlSvQuic,
  _ => RadarGetHttpTopLocationsByHttpProtocolTlsVersion._(json),
}; }

static const RadarGetHttpTopLocationsByHttpProtocolTlsVersion tlSv10 = RadarGetHttpTopLocationsByHttpProtocolTlsVersion._('TLSv1_0');

static const RadarGetHttpTopLocationsByHttpProtocolTlsVersion tlSv11 = RadarGetHttpTopLocationsByHttpProtocolTlsVersion._('TLSv1_1');

static const RadarGetHttpTopLocationsByHttpProtocolTlsVersion tlSv12 = RadarGetHttpTopLocationsByHttpProtocolTlsVersion._('TLSv1_2');

static const RadarGetHttpTopLocationsByHttpProtocolTlsVersion tlSv13 = RadarGetHttpTopLocationsByHttpProtocolTlsVersion._('TLSv1_3');

static const RadarGetHttpTopLocationsByHttpProtocolTlsVersion tlSvQuic = RadarGetHttpTopLocationsByHttpProtocolTlsVersion._('TLSvQUIC');

static const List<RadarGetHttpTopLocationsByHttpProtocolTlsVersion> values = [tlSv10, tlSv11, tlSv12, tlSv13, tlSvQuic];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByHttpProtocolTlsVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByHttpProtocolTlsVersion($value)'; } 
 }
