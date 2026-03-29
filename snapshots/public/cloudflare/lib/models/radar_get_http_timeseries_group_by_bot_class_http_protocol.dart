// GENERATED CODE - DO NOT MODIFY BY HAND

final class RadarGetHttpTimeseriesGroupByBotClassHttpProtocol {const RadarGetHttpTimeseriesGroupByBotClassHttpProtocol._(this.value);

factory RadarGetHttpTimeseriesGroupByBotClassHttpProtocol.fromJson(String json) { return switch (json) {
  'HTTP' => http,
  'HTTPS' => https,
  _ => RadarGetHttpTimeseriesGroupByBotClassHttpProtocol._(json),
}; }

static const RadarGetHttpTimeseriesGroupByBotClassHttpProtocol http = RadarGetHttpTimeseriesGroupByBotClassHttpProtocol._('HTTP');

static const RadarGetHttpTimeseriesGroupByBotClassHttpProtocol https = RadarGetHttpTimeseriesGroupByBotClassHttpProtocol._('HTTPS');

static const List<RadarGetHttpTimeseriesGroupByBotClassHttpProtocol> values = [http, https];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTimeseriesGroupByBotClassHttpProtocol && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByBotClassHttpProtocol($value)'; } 
 }
