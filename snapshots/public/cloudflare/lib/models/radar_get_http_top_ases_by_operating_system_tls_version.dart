// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTopAsesByOperatingSystemTlsVersion {const RadarGetHttpTopAsesByOperatingSystemTlsVersion._(this.value);

factory RadarGetHttpTopAsesByOperatingSystemTlsVersion.fromJson(String json) { return switch (json) {
  'TLSv1_0' => tlSv10,
  'TLSv1_1' => tlSv11,
  'TLSv1_2' => tlSv12,
  'TLSv1_3' => tlSv13,
  'TLSvQUIC' => tlSvQuic,
  _ => RadarGetHttpTopAsesByOperatingSystemTlsVersion._(json),
}; }

static const RadarGetHttpTopAsesByOperatingSystemTlsVersion tlSv10 = RadarGetHttpTopAsesByOperatingSystemTlsVersion._('TLSv1_0');

static const RadarGetHttpTopAsesByOperatingSystemTlsVersion tlSv11 = RadarGetHttpTopAsesByOperatingSystemTlsVersion._('TLSv1_1');

static const RadarGetHttpTopAsesByOperatingSystemTlsVersion tlSv12 = RadarGetHttpTopAsesByOperatingSystemTlsVersion._('TLSv1_2');

static const RadarGetHttpTopAsesByOperatingSystemTlsVersion tlSv13 = RadarGetHttpTopAsesByOperatingSystemTlsVersion._('TLSv1_3');

static const RadarGetHttpTopAsesByOperatingSystemTlsVersion tlSvQuic = RadarGetHttpTopAsesByOperatingSystemTlsVersion._('TLSvQUIC');

static const List<RadarGetHttpTopAsesByOperatingSystemTlsVersion> values = [tlSv10, tlSv11, tlSv12, tlSv13, tlSvQuic];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopAsesByOperatingSystemTlsVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopAsesByOperatingSystemTlsVersion($value)'; } 
 }
