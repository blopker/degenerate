// GENERATED CODE - DO NOT MODIFY BY HAND

/// Format in which results will be returned.
final class RadarGetTldsFormat {const RadarGetTldsFormat._(this.value);

factory RadarGetTldsFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetTldsFormat._(json),
}; }

static const RadarGetTldsFormat $json = RadarGetTldsFormat._('JSON');

static const RadarGetTldsFormat csv = RadarGetTldsFormat._('CSV');

static const List<RadarGetTldsFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetTldsFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetTldsFormat($value)'; } 
 }
