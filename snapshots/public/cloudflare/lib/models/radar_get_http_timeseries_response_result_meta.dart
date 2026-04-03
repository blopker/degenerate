// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_http_timeseries_response_result_meta_confidence_info.dart';import 'radar_get_http_timeseries_response_result_meta_date_range.dart';import 'radar_get_http_timeseries_response_result_meta_units.dart';/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
@immutable final class RadarGetHttpTimeseriesResponseResultMetaAggInterval {const RadarGetHttpTimeseriesResponseResultMetaAggInterval._(this.value);

factory RadarGetHttpTimeseriesResponseResultMetaAggInterval.fromJson(String json) { return switch (json) {
  'FIFTEEN_MINUTES' => fifteenMinutes,
  'ONE_HOUR' => oneHour,
  'ONE_DAY' => oneDay,
  'ONE_WEEK' => oneWeek,
  'ONE_MONTH' => oneMonth,
  _ => RadarGetHttpTimeseriesResponseResultMetaAggInterval._(json),
}; }

static const RadarGetHttpTimeseriesResponseResultMetaAggInterval fifteenMinutes = RadarGetHttpTimeseriesResponseResultMetaAggInterval._('FIFTEEN_MINUTES');

static const RadarGetHttpTimeseriesResponseResultMetaAggInterval oneHour = RadarGetHttpTimeseriesResponseResultMetaAggInterval._('ONE_HOUR');

static const RadarGetHttpTimeseriesResponseResultMetaAggInterval oneDay = RadarGetHttpTimeseriesResponseResultMetaAggInterval._('ONE_DAY');

static const RadarGetHttpTimeseriesResponseResultMetaAggInterval oneWeek = RadarGetHttpTimeseriesResponseResultMetaAggInterval._('ONE_WEEK');

static const RadarGetHttpTimeseriesResponseResultMetaAggInterval oneMonth = RadarGetHttpTimeseriesResponseResultMetaAggInterval._('ONE_MONTH');

static const List<RadarGetHttpTimeseriesResponseResultMetaAggInterval> values = [fifteenMinutes, oneHour, oneDay, oneWeek, oneMonth];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTimeseriesResponseResultMetaAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesResponseResultMetaAggInterval($value)'; } 
 }
/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
@immutable final class RadarGetHttpTimeseriesResponseResultMetaNormalization {const RadarGetHttpTimeseriesResponseResultMetaNormalization._(this.value);

factory RadarGetHttpTimeseriesResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetHttpTimeseriesResponseResultMetaNormalization._(json),
}; }

static const RadarGetHttpTimeseriesResponseResultMetaNormalization percentage = RadarGetHttpTimeseriesResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetHttpTimeseriesResponseResultMetaNormalization min0Max = RadarGetHttpTimeseriesResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetHttpTimeseriesResponseResultMetaNormalization minMax = RadarGetHttpTimeseriesResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetHttpTimeseriesResponseResultMetaNormalization rawValues = RadarGetHttpTimeseriesResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetHttpTimeseriesResponseResultMetaNormalization percentageChange = RadarGetHttpTimeseriesResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetHttpTimeseriesResponseResultMetaNormalization rollingAverage = RadarGetHttpTimeseriesResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetHttpTimeseriesResponseResultMetaNormalization overlappedPercentage = RadarGetHttpTimeseriesResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetHttpTimeseriesResponseResultMetaNormalization ratio = RadarGetHttpTimeseriesResponseResultMetaNormalization._('RATIO');

static const List<RadarGetHttpTimeseriesResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTimeseriesResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
@immutable final class RadarGetHttpTimeseriesResponseResultMeta {const RadarGetHttpTimeseriesResponseResultMeta({required this.aggInterval, required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetHttpTimeseriesResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetHttpTimeseriesResponseResultMeta(
  aggInterval: RadarGetHttpTimeseriesResponseResultMetaAggInterval.fromJson(json['aggInterval'] as String),
  confidenceInfo: RadarGetHttpTimeseriesResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetHttpTimeseriesResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetHttpTimeseriesResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetHttpTimeseriesResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final RadarGetHttpTimeseriesResponseResultMetaAggInterval aggInterval;

final RadarGetHttpTimeseriesResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetHttpTimeseriesResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetHttpTimeseriesResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetHttpTimeseriesResponseResultMetaUnits> units;

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
RadarGetHttpTimeseriesResponseResultMeta copyWith({RadarGetHttpTimeseriesResponseResultMetaAggInterval? aggInterval, RadarGetHttpTimeseriesResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetHttpTimeseriesResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetHttpTimeseriesResponseResultMetaNormalization? normalization, List<RadarGetHttpTimeseriesResponseResultMetaUnits>? units, }) { return RadarGetHttpTimeseriesResponseResultMeta(
  aggInterval: aggInterval ?? this.aggInterval,
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTimeseriesResponseResultMeta &&
          aggInterval == other.aggInterval &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(aggInterval, confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetHttpTimeseriesResponseResultMeta(aggInterval: $aggInterval, confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
