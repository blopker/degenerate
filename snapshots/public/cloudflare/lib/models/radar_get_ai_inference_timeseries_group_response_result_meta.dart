// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_ai_inference_timeseries_group_response_result_meta_confidence_info.dart';import 'radar_get_ai_inference_timeseries_group_response_result_meta_date_range.dart';import 'radar_get_ai_inference_timeseries_group_response_result_meta_units.dart';/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final class RadarGetAiInferenceTimeseriesGroupResponseResultMetaAggInterval {const RadarGetAiInferenceTimeseriesGroupResponseResultMetaAggInterval._(this.value);

factory RadarGetAiInferenceTimeseriesGroupResponseResultMetaAggInterval.fromJson(String json) { return switch (json) {
  'FIFTEEN_MINUTES' => fifteenMinutes,
  'ONE_HOUR' => oneHour,
  'ONE_DAY' => oneDay,
  'ONE_WEEK' => oneWeek,
  'ONE_MONTH' => oneMonth,
  _ => RadarGetAiInferenceTimeseriesGroupResponseResultMetaAggInterval._(json),
}; }

static const RadarGetAiInferenceTimeseriesGroupResponseResultMetaAggInterval fifteenMinutes = RadarGetAiInferenceTimeseriesGroupResponseResultMetaAggInterval._('FIFTEEN_MINUTES');

static const RadarGetAiInferenceTimeseriesGroupResponseResultMetaAggInterval oneHour = RadarGetAiInferenceTimeseriesGroupResponseResultMetaAggInterval._('ONE_HOUR');

static const RadarGetAiInferenceTimeseriesGroupResponseResultMetaAggInterval oneDay = RadarGetAiInferenceTimeseriesGroupResponseResultMetaAggInterval._('ONE_DAY');

static const RadarGetAiInferenceTimeseriesGroupResponseResultMetaAggInterval oneWeek = RadarGetAiInferenceTimeseriesGroupResponseResultMetaAggInterval._('ONE_WEEK');

static const RadarGetAiInferenceTimeseriesGroupResponseResultMetaAggInterval oneMonth = RadarGetAiInferenceTimeseriesGroupResponseResultMetaAggInterval._('ONE_MONTH');

static const List<RadarGetAiInferenceTimeseriesGroupResponseResultMetaAggInterval> values = [fifteenMinutes, oneHour, oneDay, oneWeek, oneMonth];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAiInferenceTimeseriesGroupResponseResultMetaAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAiInferenceTimeseriesGroupResponseResultMetaAggInterval($value)'; } 
 }
/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final class RadarGetAiInferenceTimeseriesGroupResponseResultMetaNormalization {const RadarGetAiInferenceTimeseriesGroupResponseResultMetaNormalization._(this.value);

factory RadarGetAiInferenceTimeseriesGroupResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetAiInferenceTimeseriesGroupResponseResultMetaNormalization._(json),
}; }

static const RadarGetAiInferenceTimeseriesGroupResponseResultMetaNormalization percentage = RadarGetAiInferenceTimeseriesGroupResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetAiInferenceTimeseriesGroupResponseResultMetaNormalization min0Max = RadarGetAiInferenceTimeseriesGroupResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetAiInferenceTimeseriesGroupResponseResultMetaNormalization minMax = RadarGetAiInferenceTimeseriesGroupResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetAiInferenceTimeseriesGroupResponseResultMetaNormalization rawValues = RadarGetAiInferenceTimeseriesGroupResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetAiInferenceTimeseriesGroupResponseResultMetaNormalization percentageChange = RadarGetAiInferenceTimeseriesGroupResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetAiInferenceTimeseriesGroupResponseResultMetaNormalization rollingAverage = RadarGetAiInferenceTimeseriesGroupResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetAiInferenceTimeseriesGroupResponseResultMetaNormalization overlappedPercentage = RadarGetAiInferenceTimeseriesGroupResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetAiInferenceTimeseriesGroupResponseResultMetaNormalization ratio = RadarGetAiInferenceTimeseriesGroupResponseResultMetaNormalization._('RATIO');

static const List<RadarGetAiInferenceTimeseriesGroupResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAiInferenceTimeseriesGroupResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAiInferenceTimeseriesGroupResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
final class RadarGetAiInferenceTimeseriesGroupResponseResultMeta {const RadarGetAiInferenceTimeseriesGroupResponseResultMeta({required this.aggInterval, required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetAiInferenceTimeseriesGroupResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetAiInferenceTimeseriesGroupResponseResultMeta(
  aggInterval: RadarGetAiInferenceTimeseriesGroupResponseResultMetaAggInterval.fromJson(json['aggInterval'] as String),
  confidenceInfo: RadarGetAiInferenceTimeseriesGroupResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetAiInferenceTimeseriesGroupResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetAiInferenceTimeseriesGroupResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetAiInferenceTimeseriesGroupResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final RadarGetAiInferenceTimeseriesGroupResponseResultMetaAggInterval aggInterval;

final RadarGetAiInferenceTimeseriesGroupResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetAiInferenceTimeseriesGroupResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetAiInferenceTimeseriesGroupResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetAiInferenceTimeseriesGroupResponseResultMetaUnits> units;

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
RadarGetAiInferenceTimeseriesGroupResponseResultMeta copyWith({RadarGetAiInferenceTimeseriesGroupResponseResultMetaAggInterval? aggInterval, RadarGetAiInferenceTimeseriesGroupResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetAiInferenceTimeseriesGroupResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetAiInferenceTimeseriesGroupResponseResultMetaNormalization? normalization, List<RadarGetAiInferenceTimeseriesGroupResponseResultMetaUnits>? units, }) { return RadarGetAiInferenceTimeseriesGroupResponseResultMeta(
  aggInterval: aggInterval ?? this.aggInterval,
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAiInferenceTimeseriesGroupResponseResultMeta &&
          aggInterval == other.aggInterval &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(aggInterval, confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetAiInferenceTimeseriesGroupResponseResultMeta(aggInterval: $aggInterval, confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
