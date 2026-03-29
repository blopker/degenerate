// GENERATED CODE - DO NOT MODIFY BY HAND

/// EDNS (Extension Mechanisms for DNS) status.
final class RadarGetDnsAs112TopLocationsByEdnsEdns {const RadarGetDnsAs112TopLocationsByEdnsEdns._(this.value);

factory RadarGetDnsAs112TopLocationsByEdnsEdns.fromJson(String json) { return switch (json) {
  'SUPPORTED' => supported,
  'NOT_SUPPORTED' => notSupported,
  _ => RadarGetDnsAs112TopLocationsByEdnsEdns._(json),
}; }

static const RadarGetDnsAs112TopLocationsByEdnsEdns supported = RadarGetDnsAs112TopLocationsByEdnsEdns._('SUPPORTED');

static const RadarGetDnsAs112TopLocationsByEdnsEdns notSupported = RadarGetDnsAs112TopLocationsByEdnsEdns._('NOT_SUPPORTED');

static const List<RadarGetDnsAs112TopLocationsByEdnsEdns> values = [supported, notSupported];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsAs112TopLocationsByEdnsEdns && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsAs112TopLocationsByEdnsEdns($value)'; } 
 }
