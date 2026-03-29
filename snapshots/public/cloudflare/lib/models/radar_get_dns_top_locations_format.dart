// GENERATED CODE - DO NOT MODIFY BY HAND

/// Format in which results will be returned.
final class RadarGetDnsTopLocationsFormat {const RadarGetDnsTopLocationsFormat._(this.value);

factory RadarGetDnsTopLocationsFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetDnsTopLocationsFormat._(json),
}; }

static const RadarGetDnsTopLocationsFormat $json = RadarGetDnsTopLocationsFormat._('JSON');

static const RadarGetDnsTopLocationsFormat csv = RadarGetDnsTopLocationsFormat._('CSV');

static const List<RadarGetDnsTopLocationsFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsTopLocationsFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsTopLocationsFormat($value)'; } 
 }
