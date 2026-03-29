// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetCtTimeseriesExpirationStatus {const RadarGetCtTimeseriesExpirationStatus._(this.value);

factory RadarGetCtTimeseriesExpirationStatus.fromJson(String json) { return switch (json) {
  'EXPIRED' => expired,
  'VALID' => valid,
  _ => RadarGetCtTimeseriesExpirationStatus._(json),
}; }

static const RadarGetCtTimeseriesExpirationStatus expired = RadarGetCtTimeseriesExpirationStatus._('EXPIRED');

static const RadarGetCtTimeseriesExpirationStatus valid = RadarGetCtTimeseriesExpirationStatus._('VALID');

static const List<RadarGetCtTimeseriesExpirationStatus> values = [expired, valid];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetCtTimeseriesExpirationStatus && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetCtTimeseriesExpirationStatus($value)'; } 
 }
