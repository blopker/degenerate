// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_ai_inference_timeseries_group_by_task_response_result_meta_confidence_info.dart';import 'radar_get_ai_inference_timeseries_group_by_task_response_result_meta_date_range.dart';import 'radar_get_ai_inference_timeseries_group_by_task_response_result_meta_units.dart';/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
@immutable final class RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaAggInterval {const RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaAggInterval._(this.value);

factory RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaAggInterval.fromJson(String json) { return switch (json) {
  'FIFTEEN_MINUTES' => fifteenMinutes,
  'ONE_HOUR' => oneHour,
  'ONE_DAY' => oneDay,
  'ONE_WEEK' => oneWeek,
  'ONE_MONTH' => oneMonth,
  _ => RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaAggInterval._(json),
}; }

static const RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaAggInterval fifteenMinutes = RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaAggInterval._('FIFTEEN_MINUTES');

static const RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaAggInterval oneHour = RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaAggInterval._('ONE_HOUR');

static const RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaAggInterval oneDay = RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaAggInterval._('ONE_DAY');

static const RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaAggInterval oneWeek = RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaAggInterval._('ONE_WEEK');

static const RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaAggInterval oneMonth = RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaAggInterval._('ONE_MONTH');

static const List<RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaAggInterval> values = [fifteenMinutes, oneHour, oneDay, oneWeek, oneMonth];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaAggInterval($value)'; } 
 }
/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
@immutable final class RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaNormalization {const RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaNormalization._(this.value);

factory RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaNormalization._(json),
}; }

static const RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaNormalization percentage = RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaNormalization min0Max = RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaNormalization minMax = RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaNormalization rawValues = RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaNormalization percentageChange = RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaNormalization rollingAverage = RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaNormalization overlappedPercentage = RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaNormalization ratio = RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaNormalization._('RATIO');

static const List<RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
@immutable final class RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMeta {const RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMeta({required this.aggInterval, required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMeta(
  aggInterval: RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaAggInterval.fromJson(json['aggInterval'] as String),
  confidenceInfo: RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaAggInterval aggInterval;

final RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaUnits> units;

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
RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMeta copyWith({RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaAggInterval? aggInterval, RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaNormalization? normalization, List<RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMetaUnits>? units, }) { return RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMeta(
  aggInterval: aggInterval ?? this.aggInterval,
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMeta &&
          aggInterval == other.aggInterval &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(aggInterval, confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetAiInferenceTimeseriesGroupByTaskResponseResultMeta(aggInterval: $aggInterval, confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
