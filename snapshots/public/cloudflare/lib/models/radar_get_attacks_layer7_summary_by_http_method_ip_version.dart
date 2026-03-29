// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetAttacksLayer7SummaryByHttpMethodIpVersion {const RadarGetAttacksLayer7SummaryByHttpMethodIpVersion._(this.value);

factory RadarGetAttacksLayer7SummaryByHttpMethodIpVersion.fromJson(String json) { return switch (json) {
  'IPv4' => iPv4,
  'IPv6' => iPv6,
  _ => RadarGetAttacksLayer7SummaryByHttpMethodIpVersion._(json),
}; }

static const RadarGetAttacksLayer7SummaryByHttpMethodIpVersion iPv4 = RadarGetAttacksLayer7SummaryByHttpMethodIpVersion._('IPv4');

static const RadarGetAttacksLayer7SummaryByHttpMethodIpVersion iPv6 = RadarGetAttacksLayer7SummaryByHttpMethodIpVersion._('IPv6');

static const List<RadarGetAttacksLayer7SummaryByHttpMethodIpVersion> values = [iPv4, iPv6];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer7SummaryByHttpMethodIpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7SummaryByHttpMethodIpVersion($value)'; } 
 }
