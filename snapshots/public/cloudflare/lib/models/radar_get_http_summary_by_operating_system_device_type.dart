// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpSummaryByOperatingSystemDeviceType {const RadarGetHttpSummaryByOperatingSystemDeviceType._(this.value);

factory RadarGetHttpSummaryByOperatingSystemDeviceType.fromJson(String json) { return switch (json) {
  'DESKTOP' => desktop,
  'MOBILE' => mobile,
  'OTHER' => $other,
  _ => RadarGetHttpSummaryByOperatingSystemDeviceType._(json),
}; }

static const RadarGetHttpSummaryByOperatingSystemDeviceType desktop = RadarGetHttpSummaryByOperatingSystemDeviceType._('DESKTOP');

static const RadarGetHttpSummaryByOperatingSystemDeviceType mobile = RadarGetHttpSummaryByOperatingSystemDeviceType._('MOBILE');

static const RadarGetHttpSummaryByOperatingSystemDeviceType $other = RadarGetHttpSummaryByOperatingSystemDeviceType._('OTHER');

static const List<RadarGetHttpSummaryByOperatingSystemDeviceType> values = [desktop, mobile, $other];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpSummaryByOperatingSystemDeviceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpSummaryByOperatingSystemDeviceType($value)'; } 
 }
