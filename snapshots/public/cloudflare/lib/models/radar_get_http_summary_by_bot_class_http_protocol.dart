// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpSummaryByBotClassHttpProtocol {const RadarGetHttpSummaryByBotClassHttpProtocol._(this.value);

factory RadarGetHttpSummaryByBotClassHttpProtocol.fromJson(String json) { return switch (json) {
  'HTTP' => http,
  'HTTPS' => https,
  _ => RadarGetHttpSummaryByBotClassHttpProtocol._(json),
}; }

static const RadarGetHttpSummaryByBotClassHttpProtocol http = RadarGetHttpSummaryByBotClassHttpProtocol._('HTTP');

static const RadarGetHttpSummaryByBotClassHttpProtocol https = RadarGetHttpSummaryByBotClassHttpProtocol._('HTTPS');

static const List<RadarGetHttpSummaryByBotClassHttpProtocol> values = [http, https];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpSummaryByBotClassHttpProtocol && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpSummaryByBotClassHttpProtocol($value)'; } 
 }
