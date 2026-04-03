// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetHttpSummaryByBotClassHttpVersion {const RadarGetHttpSummaryByBotClassHttpVersion._(this.value);

factory RadarGetHttpSummaryByBotClassHttpVersion.fromJson(String json) { return switch (json) {
  'HTTPv1' => httPv1,
  'HTTPv2' => httPv2,
  'HTTPv3' => httPv3,
  _ => RadarGetHttpSummaryByBotClassHttpVersion._(json),
}; }

static const RadarGetHttpSummaryByBotClassHttpVersion httPv1 = RadarGetHttpSummaryByBotClassHttpVersion._('HTTPv1');

static const RadarGetHttpSummaryByBotClassHttpVersion httPv2 = RadarGetHttpSummaryByBotClassHttpVersion._('HTTPv2');

static const RadarGetHttpSummaryByBotClassHttpVersion httPv3 = RadarGetHttpSummaryByBotClassHttpVersion._('HTTPv3');

static const List<RadarGetHttpSummaryByBotClassHttpVersion> values = [httPv1, httPv2, httPv3];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpSummaryByBotClassHttpVersion && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpSummaryByBotClassHttpVersion($value)'; } 
 }
