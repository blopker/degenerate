// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetCtTimeseriesGroupUniqueEntries {const RadarGetCtTimeseriesGroupUniqueEntries._(this.value);

factory RadarGetCtTimeseriesGroupUniqueEntries.fromJson(String json) { return switch (json) {
  'true' => $true,
  'false' => $false,
  _ => RadarGetCtTimeseriesGroupUniqueEntries._(json),
}; }

static const RadarGetCtTimeseriesGroupUniqueEntries $true = RadarGetCtTimeseriesGroupUniqueEntries._('true');

static const RadarGetCtTimeseriesGroupUniqueEntries $false = RadarGetCtTimeseriesGroupUniqueEntries._('false');

static const List<RadarGetCtTimeseriesGroupUniqueEntries> values = [$true, $false];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetCtTimeseriesGroupUniqueEntries && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetCtTimeseriesGroupUniqueEntries($value)'; } 
 }
