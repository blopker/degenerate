// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpSummaryByHttpVersionTlsVersion {const RadarGetHttpSummaryByHttpVersionTlsVersion._(this.value);

factory RadarGetHttpSummaryByHttpVersionTlsVersion.fromJson(String json) { return switch (json) {
  'TLSv1_0' => tlSv10,
  'TLSv1_1' => tlSv11,
  'TLSv1_2' => tlSv12,
  'TLSv1_3' => tlSv13,
  'TLSvQUIC' => tlSvQuic,
  _ => RadarGetHttpSummaryByHttpVersionTlsVersion._(json),
}; }

static const RadarGetHttpSummaryByHttpVersionTlsVersion tlSv10 = RadarGetHttpSummaryByHttpVersionTlsVersion._('TLSv1_0');

static const RadarGetHttpSummaryByHttpVersionTlsVersion tlSv11 = RadarGetHttpSummaryByHttpVersionTlsVersion._('TLSv1_1');

static const RadarGetHttpSummaryByHttpVersionTlsVersion tlSv12 = RadarGetHttpSummaryByHttpVersionTlsVersion._('TLSv1_2');

static const RadarGetHttpSummaryByHttpVersionTlsVersion tlSv13 = RadarGetHttpSummaryByHttpVersionTlsVersion._('TLSv1_3');

static const RadarGetHttpSummaryByHttpVersionTlsVersion tlSvQuic = RadarGetHttpSummaryByHttpVersionTlsVersion._('TLSvQUIC');

static const List<RadarGetHttpSummaryByHttpVersionTlsVersion> values = [tlSv10, tlSv11, tlSv12, tlSv13, tlSvQuic];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpSummaryByHttpVersionTlsVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpSummaryByHttpVersionTlsVersion($value)'; } 
 }
