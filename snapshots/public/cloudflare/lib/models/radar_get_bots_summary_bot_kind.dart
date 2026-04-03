// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetBotsSummaryBotKind {const RadarGetBotsSummaryBotKind._(this.value);

factory RadarGetBotsSummaryBotKind.fromJson(String json) { return switch (json) {
  'AGENT' => agent,
  'BOT' => bot,
  _ => RadarGetBotsSummaryBotKind._(json),
}; }

static const RadarGetBotsSummaryBotKind agent = RadarGetBotsSummaryBotKind._('AGENT');

static const RadarGetBotsSummaryBotKind bot = RadarGetBotsSummaryBotKind._('BOT');

static const List<RadarGetBotsSummaryBotKind> values = [agent, bot];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetBotsSummaryBotKind && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetBotsSummaryBotKind($value)'; } 
 }
