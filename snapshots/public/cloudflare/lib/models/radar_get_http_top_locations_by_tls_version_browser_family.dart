// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTopLocationsByTlsVersionBrowserFamily {const RadarGetHttpTopLocationsByTlsVersionBrowserFamily._(this.value);

factory RadarGetHttpTopLocationsByTlsVersionBrowserFamily.fromJson(String json) { return switch (json) {
  'CHROME' => chrome,
  'EDGE' => edge,
  'FIREFOX' => firefox,
  'SAFARI' => safari,
  _ => RadarGetHttpTopLocationsByTlsVersionBrowserFamily._(json),
}; }

static const RadarGetHttpTopLocationsByTlsVersionBrowserFamily chrome = RadarGetHttpTopLocationsByTlsVersionBrowserFamily._('CHROME');

static const RadarGetHttpTopLocationsByTlsVersionBrowserFamily edge = RadarGetHttpTopLocationsByTlsVersionBrowserFamily._('EDGE');

static const RadarGetHttpTopLocationsByTlsVersionBrowserFamily firefox = RadarGetHttpTopLocationsByTlsVersionBrowserFamily._('FIREFOX');

static const RadarGetHttpTopLocationsByTlsVersionBrowserFamily safari = RadarGetHttpTopLocationsByTlsVersionBrowserFamily._('SAFARI');

static const List<RadarGetHttpTopLocationsByTlsVersionBrowserFamily> values = [chrome, edge, firefox, safari];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByTlsVersionBrowserFamily && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByTlsVersionBrowserFamily($value)'; } 
 }
