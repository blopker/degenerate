// GENERATED CODE - DO NOT MODIFY BY HAND

/// Filters results by TLD type.
final class RadarGetTldsTldType {const RadarGetTldsTldType._(this.value);

factory RadarGetTldsTldType.fromJson(String json) { return switch (json) {
  'GENERIC' => generic,
  'COUNTRY_CODE' => countryCode,
  'GENERIC_RESTRICTED' => genericRestricted,
  'INFRASTRUCTURE' => infrastructure,
  'SPONSORED' => sponsored,
  _ => RadarGetTldsTldType._(json),
}; }

static const RadarGetTldsTldType generic = RadarGetTldsTldType._('GENERIC');

static const RadarGetTldsTldType countryCode = RadarGetTldsTldType._('COUNTRY_CODE');

static const RadarGetTldsTldType genericRestricted = RadarGetTldsTldType._('GENERIC_RESTRICTED');

static const RadarGetTldsTldType infrastructure = RadarGetTldsTldType._('INFRASTRUCTURE');

static const RadarGetTldsTldType sponsored = RadarGetTldsTldType._('SPONSORED');

static const List<RadarGetTldsTldType> values = [generic, countryCode, genericRestricted, infrastructure, sponsored];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetTldsTldType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetTldsTldType($value)'; } 
 }
