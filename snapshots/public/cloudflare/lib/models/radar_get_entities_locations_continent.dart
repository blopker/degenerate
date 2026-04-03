// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Filters results by continent code.
@immutable final class RadarGetEntitiesLocationsContinent {const RadarGetEntitiesLocationsContinent._(this.value);

factory RadarGetEntitiesLocationsContinent.fromJson(String json) { return switch (json) {
  'AF' => af,
  'AS' => $as,
  'EU' => eu,
  'NA' => na,
  'OC' => oc,
  'SA' => sa,
  _ => RadarGetEntitiesLocationsContinent._(json),
}; }

static const RadarGetEntitiesLocationsContinent af = RadarGetEntitiesLocationsContinent._('AF');

static const RadarGetEntitiesLocationsContinent $as = RadarGetEntitiesLocationsContinent._('AS');

static const RadarGetEntitiesLocationsContinent eu = RadarGetEntitiesLocationsContinent._('EU');

static const RadarGetEntitiesLocationsContinent na = RadarGetEntitiesLocationsContinent._('NA');

static const RadarGetEntitiesLocationsContinent oc = RadarGetEntitiesLocationsContinent._('OC');

static const RadarGetEntitiesLocationsContinent sa = RadarGetEntitiesLocationsContinent._('SA');

static const List<RadarGetEntitiesLocationsContinent> values = [af, $as, eu, na, oc, sa];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEntitiesLocationsContinent && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEntitiesLocationsContinent($value)'; } 
 }
