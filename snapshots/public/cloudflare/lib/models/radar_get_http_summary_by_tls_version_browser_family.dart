// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpSummaryByTlsVersionBrowserFamily {const RadarGetHttpSummaryByTlsVersionBrowserFamily._(this.value);

factory RadarGetHttpSummaryByTlsVersionBrowserFamily.fromJson(String json) { return switch (json) {
  'CHROME' => chrome,
  'EDGE' => edge,
  'FIREFOX' => firefox,
  'SAFARI' => safari,
  _ => RadarGetHttpSummaryByTlsVersionBrowserFamily._(json),
}; }

static const RadarGetHttpSummaryByTlsVersionBrowserFamily chrome = RadarGetHttpSummaryByTlsVersionBrowserFamily._('CHROME');

static const RadarGetHttpSummaryByTlsVersionBrowserFamily edge = RadarGetHttpSummaryByTlsVersionBrowserFamily._('EDGE');

static const RadarGetHttpSummaryByTlsVersionBrowserFamily firefox = RadarGetHttpSummaryByTlsVersionBrowserFamily._('FIREFOX');

static const RadarGetHttpSummaryByTlsVersionBrowserFamily safari = RadarGetHttpSummaryByTlsVersionBrowserFamily._('SAFARI');

static const List<RadarGetHttpSummaryByTlsVersionBrowserFamily> values = [chrome, edge, firefox, safari];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpSummaryByTlsVersionBrowserFamily && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpSummaryByTlsVersionBrowserFamily($value)'; } 
 }
