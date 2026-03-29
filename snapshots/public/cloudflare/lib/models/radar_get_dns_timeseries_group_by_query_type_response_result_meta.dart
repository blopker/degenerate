// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_dns_timeseries_group_by_query_type_response_result_meta_confidence_info.dart';import 'radar_get_dns_timeseries_group_by_query_type_response_result_meta_date_range.dart';import 'radar_get_dns_timeseries_group_by_query_type_response_result_meta_units.dart';/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final class RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaAggInterval {const RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaAggInterval._(this.value);

factory RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaAggInterval.fromJson(String json) { return switch (json) {
  'FIFTEEN_MINUTES' => fifteenMinutes,
  'ONE_HOUR' => oneHour,
  'ONE_DAY' => oneDay,
  'ONE_WEEK' => oneWeek,
  'ONE_MONTH' => oneMonth,
  _ => RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaAggInterval._(json),
}; }

static const RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaAggInterval fifteenMinutes = RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaAggInterval._('FIFTEEN_MINUTES');

static const RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaAggInterval oneHour = RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaAggInterval._('ONE_HOUR');

static const RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaAggInterval oneDay = RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaAggInterval._('ONE_DAY');

static const RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaAggInterval oneWeek = RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaAggInterval._('ONE_WEEK');

static const RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaAggInterval oneMonth = RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaAggInterval._('ONE_MONTH');

static const List<RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaAggInterval> values = [fifteenMinutes, oneHour, oneDay, oneWeek, oneMonth];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaAggInterval($value)'; } 
 }
/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final class RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaNormalization {const RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaNormalization._(this.value);

factory RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaNormalization._(json),
}; }

static const RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaNormalization percentage = RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaNormalization min0Max = RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaNormalization minMax = RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaNormalization rawValues = RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaNormalization percentageChange = RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaNormalization rollingAverage = RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaNormalization overlappedPercentage = RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaNormalization ratio = RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaNormalization._('RATIO');

static const List<RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
final class RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMeta {const RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMeta({required this.aggInterval, required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMeta(
  aggInterval: RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaAggInterval.fromJson(json['aggInterval'] as String),
  confidenceInfo: RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaAggInterval aggInterval;

final RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaUnits> units;

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
RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMeta copyWith({RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaAggInterval? aggInterval, RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaNormalization? normalization, List<RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMetaUnits>? units, }) { return RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMeta(
  aggInterval: aggInterval ?? this.aggInterval,
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMeta &&
          aggInterval == other.aggInterval &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(aggInterval, confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupByQueryTypeResponseResultMeta(aggInterval: $aggInterval, confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
