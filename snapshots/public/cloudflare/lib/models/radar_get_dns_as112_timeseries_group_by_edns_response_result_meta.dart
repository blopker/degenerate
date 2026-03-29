// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_dns_as112_timeseries_group_by_edns_response_result_meta_confidence_info.dart';import 'radar_get_dns_as112_timeseries_group_by_edns_response_result_meta_date_range.dart';import 'radar_get_dns_as112_timeseries_group_by_edns_response_result_meta_units.dart';/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final class RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaAggInterval {const RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaAggInterval._(this.value);

factory RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaAggInterval.fromJson(String json) { return switch (json) {
  'FIFTEEN_MINUTES' => fifteenMinutes,
  'ONE_HOUR' => oneHour,
  'ONE_DAY' => oneDay,
  'ONE_WEEK' => oneWeek,
  'ONE_MONTH' => oneMonth,
  _ => RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaAggInterval._(json),
}; }

static const RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaAggInterval fifteenMinutes = RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaAggInterval._('FIFTEEN_MINUTES');

static const RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaAggInterval oneHour = RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaAggInterval._('ONE_HOUR');

static const RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaAggInterval oneDay = RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaAggInterval._('ONE_DAY');

static const RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaAggInterval oneWeek = RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaAggInterval._('ONE_WEEK');

static const RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaAggInterval oneMonth = RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaAggInterval._('ONE_MONTH');

static const List<RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaAggInterval> values = [fifteenMinutes, oneHour, oneDay, oneWeek, oneMonth];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaAggInterval($value)'; } 
 }
/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final class RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaNormalization {const RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaNormalization._(this.value);

factory RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaNormalization._(json),
}; }

static const RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaNormalization percentage = RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaNormalization min0Max = RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaNormalization minMax = RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaNormalization rawValues = RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaNormalization percentageChange = RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaNormalization rollingAverage = RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaNormalization overlappedPercentage = RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaNormalization ratio = RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaNormalization._('RATIO');

static const List<RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
final class RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMeta {const RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMeta({required this.aggInterval, required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMeta(
  aggInterval: RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaAggInterval.fromJson(json['aggInterval'] as String),
  confidenceInfo: RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaAggInterval aggInterval;

final RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaUnits> units;

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
RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMeta copyWith({RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaAggInterval? aggInterval, RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaNormalization? normalization, List<RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMetaUnits>? units, }) { return RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMeta(
  aggInterval: aggInterval ?? this.aggInterval,
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMeta &&
          aggInterval == other.aggInterval &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(aggInterval, confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetDnsAs112TimeseriesGroupByEdnsResponseResultMeta(aggInterval: $aggInterval, confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
