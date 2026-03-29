// GENERATED CODE - DO NOT MODIFY BY HAND

/// Filters results by TLD category.
final class RadarGetEmailSecurityTopTldsByMessagesTldCategory {const RadarGetEmailSecurityTopTldsByMessagesTldCategory._(this.value);

factory RadarGetEmailSecurityTopTldsByMessagesTldCategory.fromJson(String json) { return switch (json) {
  'CLASSIC' => classic,
  'COUNTRY' => country,
  _ => RadarGetEmailSecurityTopTldsByMessagesTldCategory._(json),
}; }

static const RadarGetEmailSecurityTopTldsByMessagesTldCategory classic = RadarGetEmailSecurityTopTldsByMessagesTldCategory._('CLASSIC');

static const RadarGetEmailSecurityTopTldsByMessagesTldCategory country = RadarGetEmailSecurityTopTldsByMessagesTldCategory._('COUNTRY');

static const List<RadarGetEmailSecurityTopTldsByMessagesTldCategory> values = [classic, country];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTopTldsByMessagesTldCategory && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTopTldsByMessagesTldCategory($value)'; } 
 }
