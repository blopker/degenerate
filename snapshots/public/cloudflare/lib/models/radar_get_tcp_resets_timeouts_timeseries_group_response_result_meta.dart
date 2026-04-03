// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_tcp_resets_timeouts_timeseries_group_response_result_meta_confidence_info.dart';import 'radar_get_tcp_resets_timeouts_timeseries_group_response_result_meta_date_range.dart';import 'radar_get_tcp_resets_timeouts_timeseries_group_response_result_meta_units.dart';/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
@immutable final class RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaAggInterval {const RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaAggInterval._(this.value);

factory RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaAggInterval.fromJson(String json) { return switch (json) {
  'FIFTEEN_MINUTES' => fifteenMinutes,
  'ONE_HOUR' => oneHour,
  'ONE_DAY' => oneDay,
  'ONE_WEEK' => oneWeek,
  'ONE_MONTH' => oneMonth,
  _ => RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaAggInterval._(json),
}; }

static const RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaAggInterval fifteenMinutes = RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaAggInterval._('FIFTEEN_MINUTES');

static const RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaAggInterval oneHour = RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaAggInterval._('ONE_HOUR');

static const RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaAggInterval oneDay = RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaAggInterval._('ONE_DAY');

static const RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaAggInterval oneWeek = RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaAggInterval._('ONE_WEEK');

static const RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaAggInterval oneMonth = RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaAggInterval._('ONE_MONTH');

static const List<RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaAggInterval> values = [fifteenMinutes, oneHour, oneDay, oneWeek, oneMonth];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaAggInterval($value)'; } 
 }
/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
@immutable final class RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaNormalization {const RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaNormalization._(this.value);

factory RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaNormalization._(json),
}; }

static const RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaNormalization percentage = RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaNormalization min0Max = RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaNormalization minMax = RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaNormalization rawValues = RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaNormalization percentageChange = RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaNormalization rollingAverage = RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaNormalization overlappedPercentage = RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaNormalization ratio = RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaNormalization._('RATIO');

static const List<RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
@immutable final class RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMeta {const RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMeta({required this.aggInterval, required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMeta(
  aggInterval: RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaAggInterval.fromJson(json['aggInterval'] as String),
  confidenceInfo: RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaAggInterval aggInterval;

final RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaUnits> units;

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
RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMeta copyWith({RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaAggInterval? aggInterval, RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaNormalization? normalization, List<RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMetaUnits>? units, }) { return RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMeta(
  aggInterval: aggInterval ?? this.aggInterval,
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMeta &&
          aggInterval == other.aggInterval &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(aggInterval, confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetTcpResetsTimeoutsTimeseriesGroupResponseResultMeta(aggInterval: $aggInterval, confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
