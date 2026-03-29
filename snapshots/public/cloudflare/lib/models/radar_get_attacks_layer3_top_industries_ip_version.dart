// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetAttacksLayer3TopIndustriesIpVersion {const RadarGetAttacksLayer3TopIndustriesIpVersion._(this.value);

factory RadarGetAttacksLayer3TopIndustriesIpVersion.fromJson(String json) { return switch (json) {
  'IPv4' => iPv4,
  'IPv6' => iPv6,
  _ => RadarGetAttacksLayer3TopIndustriesIpVersion._(json),
}; }

static const RadarGetAttacksLayer3TopIndustriesIpVersion iPv4 = RadarGetAttacksLayer3TopIndustriesIpVersion._('IPv4');

static const RadarGetAttacksLayer3TopIndustriesIpVersion iPv6 = RadarGetAttacksLayer3TopIndustriesIpVersion._('IPv6');

static const List<RadarGetAttacksLayer3TopIndustriesIpVersion> values = [iPv4, iPv6];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer3TopIndustriesIpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer3TopIndustriesIpVersion($value)'; } 
 }
