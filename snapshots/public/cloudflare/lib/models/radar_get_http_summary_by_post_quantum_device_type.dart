// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpSummaryByPostQuantumDeviceType {const RadarGetHttpSummaryByPostQuantumDeviceType._(this.value);

factory RadarGetHttpSummaryByPostQuantumDeviceType.fromJson(String json) { return switch (json) {
  'DESKTOP' => desktop,
  'MOBILE' => mobile,
  'OTHER' => $other,
  _ => RadarGetHttpSummaryByPostQuantumDeviceType._(json),
}; }

static const RadarGetHttpSummaryByPostQuantumDeviceType desktop = RadarGetHttpSummaryByPostQuantumDeviceType._('DESKTOP');

static const RadarGetHttpSummaryByPostQuantumDeviceType mobile = RadarGetHttpSummaryByPostQuantumDeviceType._('MOBILE');

static const RadarGetHttpSummaryByPostQuantumDeviceType $other = RadarGetHttpSummaryByPostQuantumDeviceType._('OTHER');

static const List<RadarGetHttpSummaryByPostQuantumDeviceType> values = [desktop, mobile, $other];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpSummaryByPostQuantumDeviceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpSummaryByPostQuantumDeviceType($value)'; } 
 }
