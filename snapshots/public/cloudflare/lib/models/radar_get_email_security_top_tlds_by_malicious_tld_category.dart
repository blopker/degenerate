// GENERATED CODE - DO NOT MODIFY BY HAND

/// Filters results by TLD category.
final class RadarGetEmailSecurityTopTldsByMaliciousTldCategory {const RadarGetEmailSecurityTopTldsByMaliciousTldCategory._(this.value);

factory RadarGetEmailSecurityTopTldsByMaliciousTldCategory.fromJson(String json) { return switch (json) {
  'CLASSIC' => classic,
  'COUNTRY' => country,
  _ => RadarGetEmailSecurityTopTldsByMaliciousTldCategory._(json),
}; }

static const RadarGetEmailSecurityTopTldsByMaliciousTldCategory classic = RadarGetEmailSecurityTopTldsByMaliciousTldCategory._('CLASSIC');

static const RadarGetEmailSecurityTopTldsByMaliciousTldCategory country = RadarGetEmailSecurityTopTldsByMaliciousTldCategory._('COUNTRY');

static const List<RadarGetEmailSecurityTopTldsByMaliciousTldCategory> values = [classic, country];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTopTldsByMaliciousTldCategory && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTopTldsByMaliciousTldCategory($value)'; } 
 }
