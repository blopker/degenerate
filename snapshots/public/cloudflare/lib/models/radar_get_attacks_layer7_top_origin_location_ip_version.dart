// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetAttacksLayer7TopOriginLocationIpVersion {const RadarGetAttacksLayer7TopOriginLocationIpVersion._(this.value);

factory RadarGetAttacksLayer7TopOriginLocationIpVersion.fromJson(String json) { return switch (json) {
  'IPv4' => iPv4,
  'IPv6' => iPv6,
  _ => RadarGetAttacksLayer7TopOriginLocationIpVersion._(json),
}; }

static const RadarGetAttacksLayer7TopOriginLocationIpVersion iPv4 = RadarGetAttacksLayer7TopOriginLocationIpVersion._('IPv4');

static const RadarGetAttacksLayer7TopOriginLocationIpVersion iPv6 = RadarGetAttacksLayer7TopOriginLocationIpVersion._('IPv6');

static const List<RadarGetAttacksLayer7TopOriginLocationIpVersion> values = [iPv4, iPv6];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer7TopOriginLocationIpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7TopOriginLocationIpVersion($value)'; } 
 }
