// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_ai_bots_timeseries_response_result_meta_confidence_info.dart';import 'radar_get_ai_bots_timeseries_response_result_meta_date_range.dart';import 'radar_get_ai_bots_timeseries_response_result_meta_units.dart';/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final class RadarGetAiBotsTimeseriesResponseResultMetaAggInterval {const RadarGetAiBotsTimeseriesResponseResultMetaAggInterval._(this.value);

factory RadarGetAiBotsTimeseriesResponseResultMetaAggInterval.fromJson(String json) { return switch (json) {
  'FIFTEEN_MINUTES' => fifteenMinutes,
  'ONE_HOUR' => oneHour,
  'ONE_DAY' => oneDay,
  'ONE_WEEK' => oneWeek,
  'ONE_MONTH' => oneMonth,
  _ => RadarGetAiBotsTimeseriesResponseResultMetaAggInterval._(json),
}; }

static const RadarGetAiBotsTimeseriesResponseResultMetaAggInterval fifteenMinutes = RadarGetAiBotsTimeseriesResponseResultMetaAggInterval._('FIFTEEN_MINUTES');

static const RadarGetAiBotsTimeseriesResponseResultMetaAggInterval oneHour = RadarGetAiBotsTimeseriesResponseResultMetaAggInterval._('ONE_HOUR');

static const RadarGetAiBotsTimeseriesResponseResultMetaAggInterval oneDay = RadarGetAiBotsTimeseriesResponseResultMetaAggInterval._('ONE_DAY');

static const RadarGetAiBotsTimeseriesResponseResultMetaAggInterval oneWeek = RadarGetAiBotsTimeseriesResponseResultMetaAggInterval._('ONE_WEEK');

static const RadarGetAiBotsTimeseriesResponseResultMetaAggInterval oneMonth = RadarGetAiBotsTimeseriesResponseResultMetaAggInterval._('ONE_MONTH');

static const List<RadarGetAiBotsTimeseriesResponseResultMetaAggInterval> values = [fifteenMinutes, oneHour, oneDay, oneWeek, oneMonth];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAiBotsTimeseriesResponseResultMetaAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAiBotsTimeseriesResponseResultMetaAggInterval($value)'; } 
 }
/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final class RadarGetAiBotsTimeseriesResponseResultMetaNormalization {const RadarGetAiBotsTimeseriesResponseResultMetaNormalization._(this.value);

factory RadarGetAiBotsTimeseriesResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetAiBotsTimeseriesResponseResultMetaNormalization._(json),
}; }

static const RadarGetAiBotsTimeseriesResponseResultMetaNormalization percentage = RadarGetAiBotsTimeseriesResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetAiBotsTimeseriesResponseResultMetaNormalization min0Max = RadarGetAiBotsTimeseriesResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetAiBotsTimeseriesResponseResultMetaNormalization minMax = RadarGetAiBotsTimeseriesResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetAiBotsTimeseriesResponseResultMetaNormalization rawValues = RadarGetAiBotsTimeseriesResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetAiBotsTimeseriesResponseResultMetaNormalization percentageChange = RadarGetAiBotsTimeseriesResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetAiBotsTimeseriesResponseResultMetaNormalization rollingAverage = RadarGetAiBotsTimeseriesResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetAiBotsTimeseriesResponseResultMetaNormalization overlappedPercentage = RadarGetAiBotsTimeseriesResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetAiBotsTimeseriesResponseResultMetaNormalization ratio = RadarGetAiBotsTimeseriesResponseResultMetaNormalization._('RATIO');

static const List<RadarGetAiBotsTimeseriesResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAiBotsTimeseriesResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAiBotsTimeseriesResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
final class RadarGetAiBotsTimeseriesResponseResultMeta {const RadarGetAiBotsTimeseriesResponseResultMeta({required this.aggInterval, required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetAiBotsTimeseriesResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetAiBotsTimeseriesResponseResultMeta(
  aggInterval: RadarGetAiBotsTimeseriesResponseResultMetaAggInterval.fromJson(json['aggInterval'] as String),
  confidenceInfo: RadarGetAiBotsTimeseriesResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetAiBotsTimeseriesResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetAiBotsTimeseriesResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetAiBotsTimeseriesResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final RadarGetAiBotsTimeseriesResponseResultMetaAggInterval aggInterval;

final RadarGetAiBotsTimeseriesResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetAiBotsTimeseriesResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetAiBotsTimeseriesResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetAiBotsTimeseriesResponseResultMetaUnits> units;

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
RadarGetAiBotsTimeseriesResponseResultMeta copyWith({RadarGetAiBotsTimeseriesResponseResultMetaAggInterval? aggInterval, RadarGetAiBotsTimeseriesResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetAiBotsTimeseriesResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetAiBotsTimeseriesResponseResultMetaNormalization? normalization, List<RadarGetAiBotsTimeseriesResponseResultMetaUnits>? units, }) { return RadarGetAiBotsTimeseriesResponseResultMeta(
  aggInterval: aggInterval ?? this.aggInterval,
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAiBotsTimeseriesResponseResultMeta &&
          aggInterval == other.aggInterval &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(aggInterval, confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetAiBotsTimeseriesResponseResultMeta(aggInterval: $aggInterval, confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
