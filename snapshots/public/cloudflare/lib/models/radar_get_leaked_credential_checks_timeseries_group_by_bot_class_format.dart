// GENERATED CODE - DO NOT MODIFY BY HAND

/// Format in which results will be returned.
final class RadarGetLeakedCredentialChecksTimeseriesGroupByBotClassFormat {const RadarGetLeakedCredentialChecksTimeseriesGroupByBotClassFormat._(this.value);

factory RadarGetLeakedCredentialChecksTimeseriesGroupByBotClassFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetLeakedCredentialChecksTimeseriesGroupByBotClassFormat._(json),
}; }

static const RadarGetLeakedCredentialChecksTimeseriesGroupByBotClassFormat $json = RadarGetLeakedCredentialChecksTimeseriesGroupByBotClassFormat._('JSON');

static const RadarGetLeakedCredentialChecksTimeseriesGroupByBotClassFormat csv = RadarGetLeakedCredentialChecksTimeseriesGroupByBotClassFormat._('CSV');

static const List<RadarGetLeakedCredentialChecksTimeseriesGroupByBotClassFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetLeakedCredentialChecksTimeseriesGroupByBotClassFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetLeakedCredentialChecksTimeseriesGroupByBotClassFormat($value)'; } 
 }
