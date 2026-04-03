// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_attacks_layer3_timeseries_group_by_protocol_response_result_meta_confidence_info.dart';import 'radar_get_attacks_layer3_timeseries_group_by_protocol_response_result_meta_date_range.dart';import 'radar_get_attacks_layer3_timeseries_group_by_protocol_response_result_meta_units.dart';/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
@immutable final class RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaAggInterval {const RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaAggInterval._(this.value);

factory RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaAggInterval.fromJson(String json) { return switch (json) {
  'FIFTEEN_MINUTES' => fifteenMinutes,
  'ONE_HOUR' => oneHour,
  'ONE_DAY' => oneDay,
  'ONE_WEEK' => oneWeek,
  'ONE_MONTH' => oneMonth,
  _ => RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaAggInterval._(json),
}; }

static const RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaAggInterval fifteenMinutes = RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaAggInterval._('FIFTEEN_MINUTES');

static const RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaAggInterval oneHour = RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaAggInterval._('ONE_HOUR');

static const RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaAggInterval oneDay = RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaAggInterval._('ONE_DAY');

static const RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaAggInterval oneWeek = RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaAggInterval._('ONE_WEEK');

static const RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaAggInterval oneMonth = RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaAggInterval._('ONE_MONTH');

static const List<RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaAggInterval> values = [fifteenMinutes, oneHour, oneDay, oneWeek, oneMonth];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaAggInterval($value)'; } 
 }
/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
@immutable final class RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaNormalization {const RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaNormalization._(this.value);

factory RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaNormalization._(json),
}; }

static const RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaNormalization percentage = RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaNormalization min0Max = RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaNormalization minMax = RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaNormalization rawValues = RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaNormalization percentageChange = RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaNormalization rollingAverage = RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaNormalization overlappedPercentage = RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaNormalization ratio = RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaNormalization._('RATIO');

static const List<RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
@immutable final class RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMeta {const RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMeta({required this.aggInterval, required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMeta(
  aggInterval: RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaAggInterval.fromJson(json['aggInterval'] as String),
  confidenceInfo: RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaAggInterval aggInterval;

final RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaUnits> units;

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
RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMeta copyWith({RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaAggInterval? aggInterval, RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaNormalization? normalization, List<RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMetaUnits>? units, }) { return RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMeta(
  aggInterval: aggInterval ?? this.aggInterval,
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMeta &&
          aggInterval == other.aggInterval &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(aggInterval, confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetAttacksLayer3TimeseriesGroupByProtocolResponseResultMeta(aggInterval: $aggInterval, confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
