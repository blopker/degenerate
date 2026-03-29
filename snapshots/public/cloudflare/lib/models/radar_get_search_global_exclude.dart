// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetSearchGlobalExclude {const RadarGetSearchGlobalExclude._(this.value);

factory RadarGetSearchGlobalExclude.fromJson(String json) { return switch (json) {
  'ADM1S' => adm1S,
  'ASNS' => asns,
  'BOTS' => bots,
  'CERTIFICATE_AUTHORITIES' => certificateAuthorities,
  'CERTIFICATE_LOGS' => certificateLogs,
  'ORIGINS' => origins,
  'ORIGIN_REGIONS' => originRegions,
  'INDUSTRIES' => industries,
  'LOCATIONS' => locations,
  'NOTEBOOKS' => notebooks,
  'TLDS' => tlds,
  'VERTICALS' => verticals,
  _ => RadarGetSearchGlobalExclude._(json),
}; }

static const RadarGetSearchGlobalExclude adm1S = RadarGetSearchGlobalExclude._('ADM1S');

static const RadarGetSearchGlobalExclude asns = RadarGetSearchGlobalExclude._('ASNS');

static const RadarGetSearchGlobalExclude bots = RadarGetSearchGlobalExclude._('BOTS');

static const RadarGetSearchGlobalExclude certificateAuthorities = RadarGetSearchGlobalExclude._('CERTIFICATE_AUTHORITIES');

static const RadarGetSearchGlobalExclude certificateLogs = RadarGetSearchGlobalExclude._('CERTIFICATE_LOGS');

static const RadarGetSearchGlobalExclude origins = RadarGetSearchGlobalExclude._('ORIGINS');

static const RadarGetSearchGlobalExclude originRegions = RadarGetSearchGlobalExclude._('ORIGIN_REGIONS');

static const RadarGetSearchGlobalExclude industries = RadarGetSearchGlobalExclude._('INDUSTRIES');

static const RadarGetSearchGlobalExclude locations = RadarGetSearchGlobalExclude._('LOCATIONS');

static const RadarGetSearchGlobalExclude notebooks = RadarGetSearchGlobalExclude._('NOTEBOOKS');

static const RadarGetSearchGlobalExclude tlds = RadarGetSearchGlobalExclude._('TLDS');

static const RadarGetSearchGlobalExclude verticals = RadarGetSearchGlobalExclude._('VERTICALS');

static const List<RadarGetSearchGlobalExclude> values = [adm1S, asns, bots, certificateAuthorities, certificateLogs, origins, originRegions, industries, locations, notebooks, tlds, verticals];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetSearchGlobalExclude && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetSearchGlobalExclude($value)'; } 
 }
