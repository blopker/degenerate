// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_ai_inference_timeseries_group_by_model_response_result_meta_confidence_info.dart';import 'radar_get_ai_inference_timeseries_group_by_model_response_result_meta_date_range.dart';import 'radar_get_ai_inference_timeseries_group_by_model_response_result_meta_units.dart';/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final class RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaAggInterval {const RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaAggInterval._(this.value);

factory RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaAggInterval.fromJson(String json) { return switch (json) {
  'FIFTEEN_MINUTES' => fifteenMinutes,
  'ONE_HOUR' => oneHour,
  'ONE_DAY' => oneDay,
  'ONE_WEEK' => oneWeek,
  'ONE_MONTH' => oneMonth,
  _ => RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaAggInterval._(json),
}; }

static const RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaAggInterval fifteenMinutes = RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaAggInterval._('FIFTEEN_MINUTES');

static const RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaAggInterval oneHour = RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaAggInterval._('ONE_HOUR');

static const RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaAggInterval oneDay = RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaAggInterval._('ONE_DAY');

static const RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaAggInterval oneWeek = RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaAggInterval._('ONE_WEEK');

static const RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaAggInterval oneMonth = RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaAggInterval._('ONE_MONTH');

static const List<RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaAggInterval> values = [fifteenMinutes, oneHour, oneDay, oneWeek, oneMonth];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaAggInterval($value)'; } 
 }
/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final class RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaNormalization {const RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaNormalization._(this.value);

factory RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaNormalization._(json),
}; }

static const RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaNormalization percentage = RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaNormalization min0Max = RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaNormalization minMax = RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaNormalization rawValues = RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaNormalization percentageChange = RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaNormalization rollingAverage = RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaNormalization overlappedPercentage = RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaNormalization ratio = RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaNormalization._('RATIO');

static const List<RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
final class RadarGetAiInferenceTimeseriesGroupByModelResponseResultMeta {const RadarGetAiInferenceTimeseriesGroupByModelResponseResultMeta({required this.aggInterval, required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetAiInferenceTimeseriesGroupByModelResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetAiInferenceTimeseriesGroupByModelResponseResultMeta(
  aggInterval: RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaAggInterval.fromJson(json['aggInterval'] as String),
  confidenceInfo: RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaAggInterval aggInterval;

final RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaUnits> units;

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
RadarGetAiInferenceTimeseriesGroupByModelResponseResultMeta copyWith({RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaAggInterval? aggInterval, RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaNormalization? normalization, List<RadarGetAiInferenceTimeseriesGroupByModelResponseResultMetaUnits>? units, }) { return RadarGetAiInferenceTimeseriesGroupByModelResponseResultMeta(
  aggInterval: aggInterval ?? this.aggInterval,
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAiInferenceTimeseriesGroupByModelResponseResultMeta &&
          aggInterval == other.aggInterval &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(aggInterval, confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetAiInferenceTimeseriesGroupByModelResponseResultMeta(aggInterval: $aggInterval, confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
