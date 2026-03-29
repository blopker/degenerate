// GENERATED CODE - DO NOT MODIFY BY HAND

/// Format in which results will be returned.
final class RadarGetBgpPfx2asFormat {const RadarGetBgpPfx2asFormat._(this.value);

factory RadarGetBgpPfx2asFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetBgpPfx2asFormat._(json),
}; }

static const RadarGetBgpPfx2asFormat $json = RadarGetBgpPfx2asFormat._('JSON');

static const RadarGetBgpPfx2asFormat csv = RadarGetBgpPfx2asFormat._('CSV');

static const List<RadarGetBgpPfx2asFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetBgpPfx2asFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetBgpPfx2asFormat($value)'; } 
 }
