// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_attacks_layer7_timeseries_group_response_result_meta_confidence_info.dart';import 'radar_get_attacks_layer7_timeseries_group_response_result_meta_date_range.dart';import 'radar_get_attacks_layer7_timeseries_group_response_result_meta_units.dart';/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
@immutable final class RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaAggInterval {const RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaAggInterval._(this.value);

factory RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaAggInterval.fromJson(String json) { return switch (json) {
  'FIFTEEN_MINUTES' => fifteenMinutes,
  'ONE_HOUR' => oneHour,
  'ONE_DAY' => oneDay,
  'ONE_WEEK' => oneWeek,
  'ONE_MONTH' => oneMonth,
  _ => RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaAggInterval._(json),
}; }

static const RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaAggInterval fifteenMinutes = RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaAggInterval._('FIFTEEN_MINUTES');

static const RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaAggInterval oneHour = RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaAggInterval._('ONE_HOUR');

static const RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaAggInterval oneDay = RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaAggInterval._('ONE_DAY');

static const RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaAggInterval oneWeek = RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaAggInterval._('ONE_WEEK');

static const RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaAggInterval oneMonth = RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaAggInterval._('ONE_MONTH');

static const List<RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaAggInterval> values = [fifteenMinutes, oneHour, oneDay, oneWeek, oneMonth];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaAggInterval($value)'; } 
 }
/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
@immutable final class RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaNormalization {const RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaNormalization._(this.value);

factory RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaNormalization._(json),
}; }

static const RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaNormalization percentage = RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaNormalization min0Max = RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaNormalization minMax = RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaNormalization rawValues = RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaNormalization percentageChange = RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaNormalization rollingAverage = RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaNormalization overlappedPercentage = RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaNormalization ratio = RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaNormalization._('RATIO');

static const List<RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
@immutable final class RadarGetAttacksLayer7TimeseriesGroupResponseResultMeta {const RadarGetAttacksLayer7TimeseriesGroupResponseResultMeta({required this.aggInterval, required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetAttacksLayer7TimeseriesGroupResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer7TimeseriesGroupResponseResultMeta(
  aggInterval: RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaAggInterval.fromJson(json['aggInterval'] as String),
  confidenceInfo: RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaAggInterval aggInterval;

final RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaUnits> units;

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
RadarGetAttacksLayer7TimeseriesGroupResponseResultMeta copyWith({RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaAggInterval? aggInterval, RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaNormalization? normalization, List<RadarGetAttacksLayer7TimeseriesGroupResponseResultMetaUnits>? units, }) { return RadarGetAttacksLayer7TimeseriesGroupResponseResultMeta(
  aggInterval: aggInterval ?? this.aggInterval,
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer7TimeseriesGroupResponseResultMeta &&
          aggInterval == other.aggInterval &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(aggInterval, confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetAttacksLayer7TimeseriesGroupResponseResultMeta(aggInterval: $aggInterval, confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
