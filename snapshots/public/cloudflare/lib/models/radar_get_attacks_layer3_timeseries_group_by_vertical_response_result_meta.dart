// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_attacks_layer3_timeseries_group_by_vertical_response_result_meta_confidence_info.dart';import 'radar_get_attacks_layer3_timeseries_group_by_vertical_response_result_meta_date_range.dart';import 'radar_get_attacks_layer3_timeseries_group_by_vertical_response_result_meta_units.dart';/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final class RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaAggInterval {const RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaAggInterval._(this.value);

factory RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaAggInterval.fromJson(String json) { return switch (json) {
  'FIFTEEN_MINUTES' => fifteenMinutes,
  'ONE_HOUR' => oneHour,
  'ONE_DAY' => oneDay,
  'ONE_WEEK' => oneWeek,
  'ONE_MONTH' => oneMonth,
  _ => RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaAggInterval._(json),
}; }

static const RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaAggInterval fifteenMinutes = RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaAggInterval._('FIFTEEN_MINUTES');

static const RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaAggInterval oneHour = RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaAggInterval._('ONE_HOUR');

static const RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaAggInterval oneDay = RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaAggInterval._('ONE_DAY');

static const RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaAggInterval oneWeek = RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaAggInterval._('ONE_WEEK');

static const RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaAggInterval oneMonth = RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaAggInterval._('ONE_MONTH');

static const List<RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaAggInterval> values = [fifteenMinutes, oneHour, oneDay, oneWeek, oneMonth];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaAggInterval($value)'; } 
 }
/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final class RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaNormalization {const RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaNormalization._(this.value);

factory RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaNormalization._(json),
}; }

static const RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaNormalization percentage = RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaNormalization min0Max = RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaNormalization minMax = RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaNormalization rawValues = RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaNormalization percentageChange = RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaNormalization rollingAverage = RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaNormalization overlappedPercentage = RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaNormalization ratio = RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaNormalization._('RATIO');

static const List<RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
final class RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMeta {const RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMeta({required this.aggInterval, required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMeta(
  aggInterval: RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaAggInterval.fromJson(json['aggInterval'] as String),
  confidenceInfo: RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaAggInterval aggInterval;

final RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaUnits> units;

Map<String, dynamic> toJson() { return {
  'aggInterval': aggInterval.toJson(),
  'confidenceInfo': confidenceInfo.toJson(),
  'dateRange': dateRange.map((e) => e.toJson()).toList(),
  'lastUpdated': lastUpdated.toIso8601String(),
  'normalization': normalization.toJson(),
  'units': units.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('aggInterval') &&
      json.containsKey('confidenceInfo') &&
      json.containsKey('dateRange') &&
      json.containsKey('lastUpdated') && json['lastUpdated'] is String &&
      json.containsKey('normalization') &&
      json.containsKey('units'); } 
RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMeta copyWith({RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaAggInterval? aggInterval, RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaNormalization? normalization, List<RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMetaUnits>? units, }) { return RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMeta(
  aggInterval: aggInterval ?? this.aggInterval,
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMeta &&
          aggInterval == other.aggInterval &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(aggInterval, confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetAttacksLayer3TimeseriesGroupByVerticalResponseResultMeta(aggInterval: $aggInterval, confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
