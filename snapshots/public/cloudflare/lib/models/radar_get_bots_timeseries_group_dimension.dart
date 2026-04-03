// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Specifies the attribute by which to group the results.
@immutable final class RadarGetBotsTimeseriesGroupDimension {const RadarGetBotsTimeseriesGroupDimension._(this.value);

factory RadarGetBotsTimeseriesGroupDimension.fromJson(String json) { return switch (json) {
  'BOT' => bot,
  'BOT_KIND' => botKind,
  'BOT_OPERATOR' => botOperator,
  'BOT_CATEGORY' => botCategory,
  _ => RadarGetBotsTimeseriesGroupDimension._(json),
}; }

static const RadarGetBotsTimeseriesGroupDimension bot = RadarGetBotsTimeseriesGroupDimension._('BOT');

static const RadarGetBotsTimeseriesGroupDimension botKind = RadarGetBotsTimeseriesGroupDimension._('BOT_KIND');

static const RadarGetBotsTimeseriesGroupDimension botOperator = RadarGetBotsTimeseriesGroupDimension._('BOT_OPERATOR');

static const RadarGetBotsTimeseriesGroupDimension botCategory = RadarGetBotsTimeseriesGroupDimension._('BOT_CATEGORY');

static const List<RadarGetBotsTimeseriesGroupDimension> values = [bot, botKind, botOperator, botCategory];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetBotsTimeseriesGroupDimension && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetBotsTimeseriesGroupDimension($value)'; } 
 }
