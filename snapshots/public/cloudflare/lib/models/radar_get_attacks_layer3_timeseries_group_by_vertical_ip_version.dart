// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetAttacksLayer3TimeseriesGroupByVerticalIpVersion {const RadarGetAttacksLayer3TimeseriesGroupByVerticalIpVersion._(this.value);

factory RadarGetAttacksLayer3TimeseriesGroupByVerticalIpVersion.fromJson(String json) { return switch (json) {
  'IPv4' => iPv4,
  'IPv6' => iPv6,
  _ => RadarGetAttacksLayer3TimeseriesGroupByVerticalIpVersion._(json),
}; }

static const RadarGetAttacksLayer3TimeseriesGroupByVerticalIpVersion iPv4 = RadarGetAttacksLayer3TimeseriesGroupByVerticalIpVersion._('IPv4');

static const RadarGetAttacksLayer3TimeseriesGroupByVerticalIpVersion iPv6 = RadarGetAttacksLayer3TimeseriesGroupByVerticalIpVersion._('IPv6');

static const List<RadarGetAttacksLayer3TimeseriesGroupByVerticalIpVersion> values = [iPv4, iPv6];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer3TimeseriesGroupByVerticalIpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer3TimeseriesGroupByVerticalIpVersion($value)'; } 
 }
