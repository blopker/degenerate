// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetEmailRoutingTimeseriesGroupByIpVersionDmarc {const RadarGetEmailRoutingTimeseriesGroupByIpVersionDmarc._(this.value);

factory RadarGetEmailRoutingTimeseriesGroupByIpVersionDmarc.fromJson(String json) { return switch (json) {
  'PASS' => pass,
  'NONE' => none,
  'FAIL' => fail,
  _ => RadarGetEmailRoutingTimeseriesGroupByIpVersionDmarc._(json),
}; }

static const RadarGetEmailRoutingTimeseriesGroupByIpVersionDmarc pass = RadarGetEmailRoutingTimeseriesGroupByIpVersionDmarc._('PASS');

static const RadarGetEmailRoutingTimeseriesGroupByIpVersionDmarc none = RadarGetEmailRoutingTimeseriesGroupByIpVersionDmarc._('NONE');

static const RadarGetEmailRoutingTimeseriesGroupByIpVersionDmarc fail = RadarGetEmailRoutingTimeseriesGroupByIpVersionDmarc._('FAIL');

static const List<RadarGetEmailRoutingTimeseriesGroupByIpVersionDmarc> values = [pass, none, fail];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailRoutingTimeseriesGroupByIpVersionDmarc && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailRoutingTimeseriesGroupByIpVersionDmarc($value)'; } 
 }
