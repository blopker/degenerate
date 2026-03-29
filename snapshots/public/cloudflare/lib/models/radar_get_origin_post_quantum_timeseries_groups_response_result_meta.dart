// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_origin_post_quantum_timeseries_groups_response_result_meta_confidence_info.dart';import 'radar_get_origin_post_quantum_timeseries_groups_response_result_meta_date_range.dart';import 'radar_get_origin_post_quantum_timeseries_groups_response_result_meta_units.dart';/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final class RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaAggInterval {const RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaAggInterval._(this.value);

factory RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaAggInterval.fromJson(String json) { return switch (json) {
  'FIFTEEN_MINUTES' => fifteenMinutes,
  'ONE_HOUR' => oneHour,
  'ONE_DAY' => oneDay,
  'ONE_WEEK' => oneWeek,
  'ONE_MONTH' => oneMonth,
  _ => RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaAggInterval._(json),
}; }

static const RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaAggInterval fifteenMinutes = RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaAggInterval._('FIFTEEN_MINUTES');

static const RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaAggInterval oneHour = RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaAggInterval._('ONE_HOUR');

static const RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaAggInterval oneDay = RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaAggInterval._('ONE_DAY');

static const RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaAggInterval oneWeek = RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaAggInterval._('ONE_WEEK');

static const RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaAggInterval oneMonth = RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaAggInterval._('ONE_MONTH');

static const List<RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaAggInterval> values = [fifteenMinutes, oneHour, oneDay, oneWeek, oneMonth];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaAggInterval($value)'; } 
 }
/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final class RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaNormalization {const RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaNormalization._(this.value);

factory RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaNormalization._(json),
}; }

static const RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaNormalization percentage = RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaNormalization min0Max = RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaNormalization minMax = RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaNormalization rawValues = RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaNormalization percentageChange = RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaNormalization rollingAverage = RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaNormalization overlappedPercentage = RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaNormalization ratio = RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaNormalization._('RATIO');

static const List<RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
final class RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMeta {const RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMeta({required this.aggInterval, required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMeta(
  aggInterval: RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaAggInterval.fromJson(json['aggInterval'] as String),
  confidenceInfo: RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaAggInterval aggInterval;

final RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaUnits> units;

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
RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMeta copyWith({RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaAggInterval? aggInterval, RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaNormalization? normalization, List<RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMetaUnits>? units, }) { return RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMeta(
  aggInterval: aggInterval ?? this.aggInterval,
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMeta &&
          aggInterval == other.aggInterval &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(aggInterval, confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetOriginPostQuantumTimeseriesGroupsResponseResultMeta(aggInterval: $aggInterval, confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
