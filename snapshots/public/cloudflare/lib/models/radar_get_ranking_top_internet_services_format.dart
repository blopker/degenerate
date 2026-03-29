// GENERATED CODE - DO NOT MODIFY BY HAND

/// Format in which results will be returned.
final class RadarGetRankingTopInternetServicesFormat {const RadarGetRankingTopInternetServicesFormat._(this.value);

factory RadarGetRankingTopInternetServicesFormat.fromJson(String json) { return switch (json) {
  'JSON' => $json,
  'CSV' => csv,
  _ => RadarGetRankingTopInternetServicesFormat._(json),
}; }

static const RadarGetRankingTopInternetServicesFormat $json = RadarGetRankingTopInternetServicesFormat._('JSON');

static const RadarGetRankingTopInternetServicesFormat csv = RadarGetRankingTopInternetServicesFormat._('CSV');

static const List<RadarGetRankingTopInternetServicesFormat> values = [$json, csv];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetRankingTopInternetServicesFormat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetRankingTopInternetServicesFormat($value)'; } 
 }
