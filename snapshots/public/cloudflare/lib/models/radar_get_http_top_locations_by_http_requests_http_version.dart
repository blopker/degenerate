// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTopLocationsByHttpRequestsHttpVersion {const RadarGetHttpTopLocationsByHttpRequestsHttpVersion._(this.value);

factory RadarGetHttpTopLocationsByHttpRequestsHttpVersion.fromJson(String json) { return switch (json) {
  'HTTPv1' => httPv1,
  'HTTPv2' => httPv2,
  'HTTPv3' => httPv3,
  _ => RadarGetHttpTopLocationsByHttpRequestsHttpVersion._(json),
}; }

static const RadarGetHttpTopLocationsByHttpRequestsHttpVersion httPv1 = RadarGetHttpTopLocationsByHttpRequestsHttpVersion._('HTTPv1');

static const RadarGetHttpTopLocationsByHttpRequestsHttpVersion httPv2 = RadarGetHttpTopLocationsByHttpRequestsHttpVersion._('HTTPv2');

static const RadarGetHttpTopLocationsByHttpRequestsHttpVersion httPv3 = RadarGetHttpTopLocationsByHttpRequestsHttpVersion._('HTTPv3');

static const List<RadarGetHttpTopLocationsByHttpRequestsHttpVersion> values = [httPv1, httPv2, httPv3];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByHttpRequestsHttpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByHttpRequestsHttpVersion($value)'; } 
 }
