// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpSummaryByBotClassIpVersion {const RadarGetHttpSummaryByBotClassIpVersion._(this.value);

factory RadarGetHttpSummaryByBotClassIpVersion.fromJson(String json) { return switch (json) {
  'IPv4' => iPv4,
  'IPv6' => iPv6,
  _ => RadarGetHttpSummaryByBotClassIpVersion._(json),
}; }

static const RadarGetHttpSummaryByBotClassIpVersion iPv4 = RadarGetHttpSummaryByBotClassIpVersion._('IPv4');

static const RadarGetHttpSummaryByBotClassIpVersion iPv6 = RadarGetHttpSummaryByBotClassIpVersion._('IPv6');

static const List<RadarGetHttpSummaryByBotClassIpVersion> values = [iPv4, iPv6];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpSummaryByBotClassIpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpSummaryByBotClassIpVersion($value)'; } 
 }
