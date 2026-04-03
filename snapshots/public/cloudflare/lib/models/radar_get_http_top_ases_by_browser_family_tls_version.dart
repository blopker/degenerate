// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTopAsesByBrowserFamilyTlsVersion {const RadarGetHttpTopAsesByBrowserFamilyTlsVersion._(this.value);

factory RadarGetHttpTopAsesByBrowserFamilyTlsVersion.fromJson(String json) { return switch (json) {
  'TLSv1_0' => tlSv10,
  'TLSv1_1' => tlSv11,
  'TLSv1_2' => tlSv12,
  'TLSv1_3' => tlSv13,
  'TLSvQUIC' => tlSvQuic,
  _ => RadarGetHttpTopAsesByBrowserFamilyTlsVersion._(json),
}; }

static const RadarGetHttpTopAsesByBrowserFamilyTlsVersion tlSv10 = RadarGetHttpTopAsesByBrowserFamilyTlsVersion._('TLSv1_0');

static const RadarGetHttpTopAsesByBrowserFamilyTlsVersion tlSv11 = RadarGetHttpTopAsesByBrowserFamilyTlsVersion._('TLSv1_1');

static const RadarGetHttpTopAsesByBrowserFamilyTlsVersion tlSv12 = RadarGetHttpTopAsesByBrowserFamilyTlsVersion._('TLSv1_2');

static const RadarGetHttpTopAsesByBrowserFamilyTlsVersion tlSv13 = RadarGetHttpTopAsesByBrowserFamilyTlsVersion._('TLSv1_3');

static const RadarGetHttpTopAsesByBrowserFamilyTlsVersion tlSvQuic = RadarGetHttpTopAsesByBrowserFamilyTlsVersion._('TLSvQUIC');

static const List<RadarGetHttpTopAsesByBrowserFamilyTlsVersion> values = [tlSv10, tlSv11, tlSv12, tlSv13, tlSvQuic];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopAsesByBrowserFamilyTlsVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopAsesByBrowserFamilyTlsVersion($value)'; } 
 }
