// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpSummaryDeviceType {const RadarGetHttpSummaryDeviceType._(this.value);

factory RadarGetHttpSummaryDeviceType.fromJson(String json) { return switch (json) {
  'DESKTOP' => desktop,
  'MOBILE' => mobile,
  'OTHER' => $other,
  _ => RadarGetHttpSummaryDeviceType._(json),
}; }

static const RadarGetHttpSummaryDeviceType desktop = RadarGetHttpSummaryDeviceType._('DESKTOP');

static const RadarGetHttpSummaryDeviceType mobile = RadarGetHttpSummaryDeviceType._('MOBILE');

static const RadarGetHttpSummaryDeviceType $other = RadarGetHttpSummaryDeviceType._('OTHER');

static const List<RadarGetHttpSummaryDeviceType> values = [desktop, mobile, $other];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpSummaryDeviceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpSummaryDeviceType($value)'; } 
 }
