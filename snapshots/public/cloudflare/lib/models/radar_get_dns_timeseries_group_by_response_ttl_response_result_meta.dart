// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_dns_timeseries_group_by_response_ttl_response_result_meta_confidence_info.dart';import 'radar_get_dns_timeseries_group_by_response_ttl_response_result_meta_date_range.dart';import 'radar_get_dns_timeseries_group_by_response_ttl_response_result_meta_units.dart';/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final class RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaAggInterval {const RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaAggInterval._(this.value);

factory RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaAggInterval.fromJson(String json) { return switch (json) {
  'FIFTEEN_MINUTES' => fifteenMinutes,
  'ONE_HOUR' => oneHour,
  'ONE_DAY' => oneDay,
  'ONE_WEEK' => oneWeek,
  'ONE_MONTH' => oneMonth,
  _ => RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaAggInterval._(json),
}; }

static const RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaAggInterval fifteenMinutes = RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaAggInterval._('FIFTEEN_MINUTES');

static const RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaAggInterval oneHour = RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaAggInterval._('ONE_HOUR');

static const RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaAggInterval oneDay = RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaAggInterval._('ONE_DAY');

static const RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaAggInterval oneWeek = RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaAggInterval._('ONE_WEEK');

static const RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaAggInterval oneMonth = RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaAggInterval._('ONE_MONTH');

static const List<RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaAggInterval> values = [fifteenMinutes, oneHour, oneDay, oneWeek, oneMonth];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaAggInterval($value)'; } 
 }
/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final class RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaNormalization {const RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaNormalization._(this.value);

factory RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaNormalization._(json),
}; }

static const RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaNormalization percentage = RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaNormalization min0Max = RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaNormalization minMax = RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaNormalization rawValues = RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaNormalization percentageChange = RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaNormalization rollingAverage = RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaNormalization overlappedPercentage = RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaNormalization ratio = RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaNormalization._('RATIO');

static const List<RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
final class RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMeta {const RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMeta({required this.aggInterval, required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMeta(
  aggInterval: RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaAggInterval.fromJson(json['aggInterval'] as String),
  confidenceInfo: RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaAggInterval aggInterval;

final RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaUnits> units;

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
RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMeta copyWith({RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaAggInterval? aggInterval, RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaNormalization? normalization, List<RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMetaUnits>? units, }) { return RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMeta(
  aggInterval: aggInterval ?? this.aggInterval,
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMeta &&
          aggInterval == other.aggInterval &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(aggInterval, confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupByResponseTtlResponseResultMeta(aggInterval: $aggInterval, confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
