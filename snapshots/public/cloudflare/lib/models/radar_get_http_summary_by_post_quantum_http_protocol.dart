// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpSummaryByPostQuantumHttpProtocol {const RadarGetHttpSummaryByPostQuantumHttpProtocol._(this.value);

factory RadarGetHttpSummaryByPostQuantumHttpProtocol.fromJson(String json) { return switch (json) {
  'HTTP' => http,
  'HTTPS' => https,
  _ => RadarGetHttpSummaryByPostQuantumHttpProtocol._(json),
}; }

static const RadarGetHttpSummaryByPostQuantumHttpProtocol http = RadarGetHttpSummaryByPostQuantumHttpProtocol._('HTTP');

static const RadarGetHttpSummaryByPostQuantumHttpProtocol https = RadarGetHttpSummaryByPostQuantumHttpProtocol._('HTTPS');

static const List<RadarGetHttpSummaryByPostQuantumHttpProtocol> values = [http, https];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpSummaryByPostQuantumHttpProtocol && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpSummaryByPostQuantumHttpProtocol($value)'; } 
 }
