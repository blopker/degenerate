// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpTopLocationsByBotClassHttpProtocol {const RadarGetHttpTopLocationsByBotClassHttpProtocol._(this.value);

factory RadarGetHttpTopLocationsByBotClassHttpProtocol.fromJson(String json) { return switch (json) {
  'HTTP' => http,
  'HTTPS' => https,
  _ => RadarGetHttpTopLocationsByBotClassHttpProtocol._(json),
}; }

static const RadarGetHttpTopLocationsByBotClassHttpProtocol http = RadarGetHttpTopLocationsByBotClassHttpProtocol._('HTTP');

static const RadarGetHttpTopLocationsByBotClassHttpProtocol https = RadarGetHttpTopLocationsByBotClassHttpProtocol._('HTTPS');

static const List<RadarGetHttpTopLocationsByBotClassHttpProtocol> values = [http, https];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByBotClassHttpProtocol && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByBotClassHttpProtocol($value)'; } 
 }
