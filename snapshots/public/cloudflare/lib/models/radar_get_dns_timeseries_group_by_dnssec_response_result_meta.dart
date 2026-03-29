// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_dns_timeseries_group_by_dnssec_response_result_meta_confidence_info.dart';import 'radar_get_dns_timeseries_group_by_dnssec_response_result_meta_date_range.dart';import 'radar_get_dns_timeseries_group_by_dnssec_response_result_meta_units.dart';/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final class RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaAggInterval {const RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaAggInterval._(this.value);

factory RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaAggInterval.fromJson(String json) { return switch (json) {
  'FIFTEEN_MINUTES' => fifteenMinutes,
  'ONE_HOUR' => oneHour,
  'ONE_DAY' => oneDay,
  'ONE_WEEK' => oneWeek,
  'ONE_MONTH' => oneMonth,
  _ => RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaAggInterval._(json),
}; }

static const RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaAggInterval fifteenMinutes = RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaAggInterval._('FIFTEEN_MINUTES');

static const RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaAggInterval oneHour = RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaAggInterval._('ONE_HOUR');

static const RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaAggInterval oneDay = RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaAggInterval._('ONE_DAY');

static const RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaAggInterval oneWeek = RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaAggInterval._('ONE_WEEK');

static const RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaAggInterval oneMonth = RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaAggInterval._('ONE_MONTH');

static const List<RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaAggInterval> values = [fifteenMinutes, oneHour, oneDay, oneWeek, oneMonth];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaAggInterval($value)'; } 
 }
/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final class RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaNormalization {const RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaNormalization._(this.value);

factory RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaNormalization._(json),
}; }

static const RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaNormalization percentage = RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaNormalization min0Max = RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaNormalization minMax = RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaNormalization rawValues = RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaNormalization percentageChange = RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaNormalization rollingAverage = RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaNormalization overlappedPercentage = RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaNormalization ratio = RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaNormalization._('RATIO');

static const List<RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
final class RadarGetDnsTimeseriesGroupByDnssecResponseResultMeta {const RadarGetDnsTimeseriesGroupByDnssecResponseResultMeta({required this.aggInterval, required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetDnsTimeseriesGroupByDnssecResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetDnsTimeseriesGroupByDnssecResponseResultMeta(
  aggInterval: RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaAggInterval.fromJson(json['aggInterval'] as String),
  confidenceInfo: RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaAggInterval aggInterval;

final RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaUnits> units;

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
RadarGetDnsTimeseriesGroupByDnssecResponseResultMeta copyWith({RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaAggInterval? aggInterval, RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaNormalization? normalization, List<RadarGetDnsTimeseriesGroupByDnssecResponseResultMetaUnits>? units, }) { return RadarGetDnsTimeseriesGroupByDnssecResponseResultMeta(
  aggInterval: aggInterval ?? this.aggInterval,
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsTimeseriesGroupByDnssecResponseResultMeta &&
          aggInterval == other.aggInterval &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(aggInterval, confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupByDnssecResponseResultMeta(aggInterval: $aggInterval, confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
