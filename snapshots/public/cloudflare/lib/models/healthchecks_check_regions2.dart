// GENERATED CODE - DO NOT MODIFY BY HAND

/// WNAM: Western North America, ENAM: Eastern North America, WEU: Western Europe, EEU: Eastern Europe, NSAM: Northern South America, SSAM: Southern South America, OC: Oceania, ME: Middle East, NAF: North Africa, SAF: South Africa, IN: India, SEAS: South East Asia, NEAS: North East Asia, ALL_REGIONS: all regions (BUSINESS and ENTERPRISE customers only).
final class HealthchecksCheckRegions2 {const HealthchecksCheckRegions2._(this.value);

factory HealthchecksCheckRegions2.fromJson(String json) { return switch (json) {
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
  'IN' => $in,
  'SEAS' => seas,
  'NEAS' => neas,
  'ALL_REGIONS' => allRegions,
  _ => HealthchecksCheckRegions2._(json),
}; }

static const HealthchecksCheckRegions2 wnam = HealthchecksCheckRegions2._('WNAM');

static const HealthchecksCheckRegions2 enam = HealthchecksCheckRegions2._('ENAM');

static const HealthchecksCheckRegions2 weu = HealthchecksCheckRegions2._('WEU');

static const HealthchecksCheckRegions2 eeu = HealthchecksCheckRegions2._('EEU');

static const HealthchecksCheckRegions2 nsam = HealthchecksCheckRegions2._('NSAM');

static const HealthchecksCheckRegions2 ssam = HealthchecksCheckRegions2._('SSAM');

static const HealthchecksCheckRegions2 oc = HealthchecksCheckRegions2._('OC');

static const HealthchecksCheckRegions2 me = HealthchecksCheckRegions2._('ME');

static const HealthchecksCheckRegions2 naf = HealthchecksCheckRegions2._('NAF');

static const HealthchecksCheckRegions2 saf = HealthchecksCheckRegions2._('SAF');

static const HealthchecksCheckRegions2 $in = HealthchecksCheckRegions2._('IN');

static const HealthchecksCheckRegions2 seas = HealthchecksCheckRegions2._('SEAS');

static const HealthchecksCheckRegions2 neas = HealthchecksCheckRegions2._('NEAS');

static const HealthchecksCheckRegions2 allRegions = HealthchecksCheckRegions2._('ALL_REGIONS');

static const List<HealthchecksCheckRegions2> values = [wnam, enam, weu, eeu, nsam, ssam, oc, me, naf, saf, $in, seas, neas, allRegions];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is HealthchecksCheckRegions2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'HealthchecksCheckRegions2($value)'; } 
 }
