// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetEmailRoutingTimeseriesGroupBySpfEncrypted {const RadarGetEmailRoutingTimeseriesGroupBySpfEncrypted._(this.value);

factory RadarGetEmailRoutingTimeseriesGroupBySpfEncrypted.fromJson(String json) { return switch (json) {
  'ENCRYPTED' => encrypted,
  'NOT_ENCRYPTED' => notEncrypted,
  _ => RadarGetEmailRoutingTimeseriesGroupBySpfEncrypted._(json),
}; }

static const RadarGetEmailRoutingTimeseriesGroupBySpfEncrypted encrypted = RadarGetEmailRoutingTimeseriesGroupBySpfEncrypted._('ENCRYPTED');

static const RadarGetEmailRoutingTimeseriesGroupBySpfEncrypted notEncrypted = RadarGetEmailRoutingTimeseriesGroupBySpfEncrypted._('NOT_ENCRYPTED');

static const List<RadarGetEmailRoutingTimeseriesGroupBySpfEncrypted> values = [encrypted, notEncrypted];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailRoutingTimeseriesGroupBySpfEncrypted && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailRoutingTimeseriesGroupBySpfEncrypted($value)'; } 
 }
