// GENERATED CODE - DO NOT MODIFY BY HAND

/// Format in which results will be returned.
final class RadarGetSearchGlobalFormat {const RadarGetSearchGlobalFormat._(this.value);

factory RadarGetSearchGlobalFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetSearchGlobalFormat._(json),
}; }

static const RadarGetSearchGlobalFormat $json = RadarGetSearchGlobalFormat._('JSON');

static const RadarGetSearchGlobalFormat csv = RadarGetSearchGlobalFormat._('CSV');

static const List<RadarGetSearchGlobalFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetSearchGlobalFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetSearchGlobalFormat($value)'; } 
 }
