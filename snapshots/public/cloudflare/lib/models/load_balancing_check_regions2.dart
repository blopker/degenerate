// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// WNAM: Western North America, ENAM: Eastern North America, WEU: Western Europe, EEU: Eastern Europe, NSAM: Northern South America, SSAM: Southern South America, OC: Oceania, ME: Middle East, NAF: North Africa, SAF: South Africa, SAS: Southern Asia, SEAS: South East Asia, NEAS: North East Asia, ALL_REGIONS: all regions (ENTERPRISE customers only).
@immutable final class LoadBalancingCheckRegions2 {const LoadBalancingCheckRegions2._(this.value);

factory LoadBalancingCheckRegions2.fromJson(String json) { return switch (json) {
  'WNAM' => wnam,
  'ENAM' => enam,
  'WEU' => weu,
  'EEU' => eeu,
  'NSAM' => nsam,
  'SSAM' => ssam,
  'OC' => oc,
  'ME' => me,
  'NAF' => naf,
  'SAF' => saf,
  'SAS' => sas,
  'SEAS' => seas,
  'NEAS' => neas,
  'ALL_REGIONS' => allRegions,
  _ => LoadBalancingCheckRegions2._(json),
}; }

static const LoadBalancingCheckRegions2 wnam = LoadBalancingCheckRegions2._('WNAM');

static const LoadBalancingCheckRegions2 enam = LoadBalancingCheckRegions2._('ENAM');

static const LoadBalancingCheckRegions2 weu = LoadBalancingCheckRegions2._('WEU');

static const LoadBalancingCheckRegions2 eeu = LoadBalancingCheckRegions2._('EEU');

static const LoadBalancingCheckRegions2 nsam = LoadBalancingCheckRegions2._('NSAM');

static const LoadBalancingCheckRegions2 ssam = LoadBalancingCheckRegions2._('SSAM');

static const LoadBalancingCheckRegions2 oc = LoadBalancingCheckRegions2._('OC');

static const LoadBalancingCheckRegions2 me = LoadBalancingCheckRegions2._('ME');

static const LoadBalancingCheckRegions2 naf = LoadBalancingCheckRegions2._('NAF');

static const LoadBalancingCheckRegions2 saf = LoadBalancingCheckRegions2._('SAF');

static const LoadBalancingCheckRegions2 sas = LoadBalancingCheckRegions2._('SAS');

static const LoadBalancingCheckRegions2 seas = LoadBalancingCheckRegions2._('SEAS');

static const LoadBalancingCheckRegions2 neas = LoadBalancingCheckRegions2._('NEAS');

static const LoadBalancingCheckRegions2 allRegions = LoadBalancingCheckRegions2._('ALL_REGIONS');

static const List<LoadBalancingCheckRegions2> values = [wnam, enam, weu, eeu, nsam, ssam, oc, me, naf, saf, sas, seas, neas, allRegions];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is LoadBalancingCheckRegions2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'LoadBalancingCheckRegions2($value)'; } 
 }
