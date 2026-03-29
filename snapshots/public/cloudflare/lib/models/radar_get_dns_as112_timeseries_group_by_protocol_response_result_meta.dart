// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_dns_as112_timeseries_group_by_protocol_response_result_meta_confidence_info.dart';import 'radar_get_dns_as112_timeseries_group_by_protocol_response_result_meta_date_range.dart';import 'radar_get_dns_as112_timeseries_group_by_protocol_response_result_meta_units.dart';/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final class RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaAggInterval {const RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaAggInterval._(this.value);

factory RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaAggInterval.fromJson(String json) { return switch (json) {
  'FIFTEEN_MINUTES' => fifteenMinutes,
  'ONE_HOUR' => oneHour,
  'ONE_DAY' => oneDay,
  'ONE_WEEK' => oneWeek,
  'ONE_MONTH' => oneMonth,
  _ => RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaAggInterval._(json),
}; }

static const RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaAggInterval fifteenMinutes = RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaAggInterval._('FIFTEEN_MINUTES');

static const RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaAggInterval oneHour = RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaAggInterval._('ONE_HOUR');

static const RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaAggInterval oneDay = RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaAggInterval._('ONE_DAY');

static const RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaAggInterval oneWeek = RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaAggInterval._('ONE_WEEK');

static const RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaAggInterval oneMonth = RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaAggInterval._('ONE_MONTH');

static const List<RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaAggInterval> values = [fifteenMinutes, oneHour, oneDay, oneWeek, oneMonth];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaAggInterval($value)'; } 
 }
/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final class RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaNormalization {const RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaNormalization._(this.value);

factory RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaNormalization._(json),
}; }

static const RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaNormalization percentage = RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaNormalization min0Max = RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaNormalization minMax = RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaNormalization rawValues = RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaNormalization percentageChange = RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaNormalization rollingAverage = RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaNormalization overlappedPercentage = RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaNormalization ratio = RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaNormalization._('RATIO');

static const List<RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
final class RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMeta {const RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMeta({required this.aggInterval, required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMeta(
  aggInterval: RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaAggInterval.fromJson(json['aggInterval'] as String),
  confidenceInfo: RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaAggInterval aggInterval;

final RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaUnits> units;

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
RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMeta copyWith({RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaAggInterval? aggInterval, RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaNormalization? normalization, List<RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMetaUnits>? units, }) { return RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMeta(
  aggInterval: aggInterval ?? this.aggInterval,
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMeta &&
          aggInterval == other.aggInterval &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(aggInterval, confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetDnsAs112TimeseriesGroupByProtocolResponseResultMeta(aggInterval: $aggInterval, confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
