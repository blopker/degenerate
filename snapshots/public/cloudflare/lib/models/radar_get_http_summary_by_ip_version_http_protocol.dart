// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpSummaryByIpVersionHttpProtocol {const RadarGetHttpSummaryByIpVersionHttpProtocol._(this.value);

factory RadarGetHttpSummaryByIpVersionHttpProtocol.fromJson(String json) { return switch (json) {
  'HTTP' => http,
  'HTTPS' => https,
  _ => RadarGetHttpSummaryByIpVersionHttpProtocol._(json),
}; }

static const RadarGetHttpSummaryByIpVersionHttpProtocol http = RadarGetHttpSummaryByIpVersionHttpProtocol._('HTTP');

static const RadarGetHttpSummaryByIpVersionHttpProtocol https = RadarGetHttpSummaryByIpVersionHttpProtocol._('HTTPS');

static const List<RadarGetHttpSummaryByIpVersionHttpProtocol> values = [http, https];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpSummaryByIpVersionHttpProtocol && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpSummaryByIpVersionHttpProtocol($value)'; } 
 }
