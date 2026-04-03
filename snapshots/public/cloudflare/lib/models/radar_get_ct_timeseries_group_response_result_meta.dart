// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_ct_timeseries_group_response_result_meta_confidence_info.dart';import 'radar_get_ct_timeseries_group_response_result_meta_date_range.dart';import 'radar_get_ct_timeseries_group_response_result_meta_units.dart';/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
@immutable final class RadarGetCtTimeseriesGroupResponseResultMetaAggInterval {const RadarGetCtTimeseriesGroupResponseResultMetaAggInterval._(this.value);

factory RadarGetCtTimeseriesGroupResponseResultMetaAggInterval.fromJson(String json) { return switch (json) {
  'FIFTEEN_MINUTES' => fifteenMinutes,
  'ONE_HOUR' => oneHour,
  'ONE_DAY' => oneDay,
  'ONE_WEEK' => oneWeek,
  'ONE_MONTH' => oneMonth,
  _ => RadarGetCtTimeseriesGroupResponseResultMetaAggInterval._(json),
}; }

static const RadarGetCtTimeseriesGroupResponseResultMetaAggInterval fifteenMinutes = RadarGetCtTimeseriesGroupResponseResultMetaAggInterval._('FIFTEEN_MINUTES');

static const RadarGetCtTimeseriesGroupResponseResultMetaAggInterval oneHour = RadarGetCtTimeseriesGroupResponseResultMetaAggInterval._('ONE_HOUR');

static const RadarGetCtTimeseriesGroupResponseResultMetaAggInterval oneDay = RadarGetCtTimeseriesGroupResponseResultMetaAggInterval._('ONE_DAY');

static const RadarGetCtTimeseriesGroupResponseResultMetaAggInterval oneWeek = RadarGetCtTimeseriesGroupResponseResultMetaAggInterval._('ONE_WEEK');

static const RadarGetCtTimeseriesGroupResponseResultMetaAggInterval oneMonth = RadarGetCtTimeseriesGroupResponseResultMetaAggInterval._('ONE_MONTH');

static const List<RadarGetCtTimeseriesGroupResponseResultMetaAggInterval> values = [fifteenMinutes, oneHour, oneDay, oneWeek, oneMonth];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetCtTimeseriesGroupResponseResultMetaAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetCtTimeseriesGroupResponseResultMetaAggInterval($value)'; } 
 }
/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
@immutable final class RadarGetCtTimeseriesGroupResponseResultMetaNormalization {const RadarGetCtTimeseriesGroupResponseResultMetaNormalization._(this.value);

factory RadarGetCtTimeseriesGroupResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetCtTimeseriesGroupResponseResultMetaNormalization._(json),
}; }

static const RadarGetCtTimeseriesGroupResponseResultMetaNormalization percentage = RadarGetCtTimeseriesGroupResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetCtTimeseriesGroupResponseResultMetaNormalization min0Max = RadarGetCtTimeseriesGroupResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetCtTimeseriesGroupResponseResultMetaNormalization minMax = RadarGetCtTimeseriesGroupResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetCtTimeseriesGroupResponseResultMetaNormalization rawValues = RadarGetCtTimeseriesGroupResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetCtTimeseriesGroupResponseResultMetaNormalization percentageChange = RadarGetCtTimeseriesGroupResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetCtTimeseriesGroupResponseResultMetaNormalization rollingAverage = RadarGetCtTimeseriesGroupResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetCtTimeseriesGroupResponseResultMetaNormalization overlappedPercentage = RadarGetCtTimeseriesGroupResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetCtTimeseriesGroupResponseResultMetaNormalization ratio = RadarGetCtTimeseriesGroupResponseResultMetaNormalization._('RATIO');

static const List<RadarGetCtTimeseriesGroupResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetCtTimeseriesGroupResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetCtTimeseriesGroupResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
@immutable final class RadarGetCtTimeseriesGroupResponseResultMeta {const RadarGetCtTimeseriesGroupResponseResultMeta({required this.aggInterval, required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetCtTimeseriesGroupResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetCtTimeseriesGroupResponseResultMeta(
  aggInterval: RadarGetCtTimeseriesGroupResponseResultMetaAggInterval.fromJson(json['aggInterval'] as String),
  confidenceInfo: RadarGetCtTimeseriesGroupResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetCtTimeseriesGroupResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetCtTimeseriesGroupResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetCtTimeseriesGroupResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final RadarGetCtTimeseriesGroupResponseResultMetaAggInterval aggInterval;

final RadarGetCtTimeseriesGroupResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetCtTimeseriesGroupResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetCtTimeseriesGroupResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetCtTimeseriesGroupResponseResultMetaUnits> units;

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
RadarGetCtTimeseriesGroupResponseResultMeta copyWith({RadarGetCtTimeseriesGroupResponseResultMetaAggInterval? aggInterval, RadarGetCtTimeseriesGroupResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetCtTimeseriesGroupResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetCtTimeseriesGroupResponseResultMetaNormalization? normalization, List<RadarGetCtTimeseriesGroupResponseResultMetaUnits>? units, }) { return RadarGetCtTimeseriesGroupResponseResultMeta(
  aggInterval: aggInterval ?? this.aggInterval,
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetCtTimeseriesGroupResponseResultMeta &&
          aggInterval == other.aggInterval &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(aggInterval, confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetCtTimeseriesGroupResponseResultMeta(aggInterval: $aggInterval, confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
