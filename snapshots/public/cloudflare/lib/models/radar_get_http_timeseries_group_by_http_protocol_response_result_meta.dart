// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_http_timeseries_group_by_http_protocol_response_result_meta_confidence_info.dart';import 'radar_get_http_timeseries_group_by_http_protocol_response_result_meta_date_range.dart';import 'radar_get_http_timeseries_group_by_http_protocol_response_result_meta_units.dart';/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final class RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaAggInterval {const RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaAggInterval._(this.value);

factory RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaAggInterval.fromJson(String json) { return switch (json) {
  'FIFTEEN_MINUTES' => fifteenMinutes,
  'ONE_HOUR' => oneHour,
  'ONE_DAY' => oneDay,
  'ONE_WEEK' => oneWeek,
  'ONE_MONTH' => oneMonth,
  _ => RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaAggInterval._(json),
}; }

static const RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaAggInterval fifteenMinutes = RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaAggInterval._('FIFTEEN_MINUTES');

static const RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaAggInterval oneHour = RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaAggInterval._('ONE_HOUR');

static const RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaAggInterval oneDay = RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaAggInterval._('ONE_DAY');

static const RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaAggInterval oneWeek = RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaAggInterval._('ONE_WEEK');

static const RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaAggInterval oneMonth = RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaAggInterval._('ONE_MONTH');

static const List<RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaAggInterval> values = [fifteenMinutes, oneHour, oneDay, oneWeek, oneMonth];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaAggInterval($value)'; } 
 }
/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final class RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaNormalization {const RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaNormalization._(this.value);

factory RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaNormalization._(json),
}; }

static const RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaNormalization percentage = RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaNormalization min0Max = RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaNormalization minMax = RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaNormalization rawValues = RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaNormalization percentageChange = RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaNormalization rollingAverage = RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaNormalization overlappedPercentage = RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaNormalization ratio = RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaNormalization._('RATIO');

static const List<RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
final class RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMeta {const RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMeta({required this.aggInterval, required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMeta(
  aggInterval: RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaAggInterval.fromJson(json['aggInterval'] as String),
  confidenceInfo: RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaAggInterval aggInterval;

final RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaUnits> units;

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
RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMeta copyWith({RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaAggInterval? aggInterval, RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaNormalization? normalization, List<RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMetaUnits>? units, }) { return RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMeta(
  aggInterval: aggInterval ?? this.aggInterval,
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMeta &&
          aggInterval == other.aggInterval &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(aggInterval, confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetHttpTimeseriesGroupByHttpProtocolResponseResultMeta(aggInterval: $aggInterval, confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
