// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_quality_index_timeseries_group_response_result_meta_confidence_info.dart';import 'radar_get_quality_index_timeseries_group_response_result_meta_date_range.dart';import 'radar_get_quality_index_timeseries_group_response_result_meta_units.dart';/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final class RadarGetQualityIndexTimeseriesGroupResponseResultMetaAggInterval {const RadarGetQualityIndexTimeseriesGroupResponseResultMetaAggInterval._(this.value);

factory RadarGetQualityIndexTimeseriesGroupResponseResultMetaAggInterval.fromJson(String json) { return switch (json) {
  'FIFTEEN_MINUTES' => fifteenMinutes,
  'ONE_HOUR' => oneHour,
  'ONE_DAY' => oneDay,
  'ONE_WEEK' => oneWeek,
  'ONE_MONTH' => oneMonth,
  _ => RadarGetQualityIndexTimeseriesGroupResponseResultMetaAggInterval._(json),
}; }

static const RadarGetQualityIndexTimeseriesGroupResponseResultMetaAggInterval fifteenMinutes = RadarGetQualityIndexTimeseriesGroupResponseResultMetaAggInterval._('FIFTEEN_MINUTES');

static const RadarGetQualityIndexTimeseriesGroupResponseResultMetaAggInterval oneHour = RadarGetQualityIndexTimeseriesGroupResponseResultMetaAggInterval._('ONE_HOUR');

static const RadarGetQualityIndexTimeseriesGroupResponseResultMetaAggInterval oneDay = RadarGetQualityIndexTimeseriesGroupResponseResultMetaAggInterval._('ONE_DAY');

static const RadarGetQualityIndexTimeseriesGroupResponseResultMetaAggInterval oneWeek = RadarGetQualityIndexTimeseriesGroupResponseResultMetaAggInterval._('ONE_WEEK');

static const RadarGetQualityIndexTimeseriesGroupResponseResultMetaAggInterval oneMonth = RadarGetQualityIndexTimeseriesGroupResponseResultMetaAggInterval._('ONE_MONTH');

static const List<RadarGetQualityIndexTimeseriesGroupResponseResultMetaAggInterval> values = [fifteenMinutes, oneHour, oneDay, oneWeek, oneMonth];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetQualityIndexTimeseriesGroupResponseResultMetaAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetQualityIndexTimeseriesGroupResponseResultMetaAggInterval($value)'; } 
 }
/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final class RadarGetQualityIndexTimeseriesGroupResponseResultMetaNormalization {const RadarGetQualityIndexTimeseriesGroupResponseResultMetaNormalization._(this.value);

factory RadarGetQualityIndexTimeseriesGroupResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetQualityIndexTimeseriesGroupResponseResultMetaNormalization._(json),
}; }

static const RadarGetQualityIndexTimeseriesGroupResponseResultMetaNormalization percentage = RadarGetQualityIndexTimeseriesGroupResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetQualityIndexTimeseriesGroupResponseResultMetaNormalization min0Max = RadarGetQualityIndexTimeseriesGroupResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetQualityIndexTimeseriesGroupResponseResultMetaNormalization minMax = RadarGetQualityIndexTimeseriesGroupResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetQualityIndexTimeseriesGroupResponseResultMetaNormalization rawValues = RadarGetQualityIndexTimeseriesGroupResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetQualityIndexTimeseriesGroupResponseResultMetaNormalization percentageChange = RadarGetQualityIndexTimeseriesGroupResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetQualityIndexTimeseriesGroupResponseResultMetaNormalization rollingAverage = RadarGetQualityIndexTimeseriesGroupResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetQualityIndexTimeseriesGroupResponseResultMetaNormalization overlappedPercentage = RadarGetQualityIndexTimeseriesGroupResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetQualityIndexTimeseriesGroupResponseResultMetaNormalization ratio = RadarGetQualityIndexTimeseriesGroupResponseResultMetaNormalization._('RATIO');

static const List<RadarGetQualityIndexTimeseriesGroupResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetQualityIndexTimeseriesGroupResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetQualityIndexTimeseriesGroupResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
final class RadarGetQualityIndexTimeseriesGroupResponseResultMeta {const RadarGetQualityIndexTimeseriesGroupResponseResultMeta({required this.aggInterval, required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetQualityIndexTimeseriesGroupResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetQualityIndexTimeseriesGroupResponseResultMeta(
  aggInterval: RadarGetQualityIndexTimeseriesGroupResponseResultMetaAggInterval.fromJson(json['aggInterval'] as String),
  confidenceInfo: RadarGetQualityIndexTimeseriesGroupResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetQualityIndexTimeseriesGroupResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetQualityIndexTimeseriesGroupResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetQualityIndexTimeseriesGroupResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final RadarGetQualityIndexTimeseriesGroupResponseResultMetaAggInterval aggInterval;

final RadarGetQualityIndexTimeseriesGroupResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetQualityIndexTimeseriesGroupResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetQualityIndexTimeseriesGroupResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetQualityIndexTimeseriesGroupResponseResultMetaUnits> units;

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
RadarGetQualityIndexTimeseriesGroupResponseResultMeta copyWith({RadarGetQualityIndexTimeseriesGroupResponseResultMetaAggInterval? aggInterval, RadarGetQualityIndexTimeseriesGroupResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetQualityIndexTimeseriesGroupResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetQualityIndexTimeseriesGroupResponseResultMetaNormalization? normalization, List<RadarGetQualityIndexTimeseriesGroupResponseResultMetaUnits>? units, }) { return RadarGetQualityIndexTimeseriesGroupResponseResultMeta(
  aggInterval: aggInterval ?? this.aggInterval,
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetQualityIndexTimeseriesGroupResponseResultMeta &&
          aggInterval == other.aggInterval &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(aggInterval, confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetQualityIndexTimeseriesGroupResponseResultMeta(aggInterval: $aggInterval, confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
