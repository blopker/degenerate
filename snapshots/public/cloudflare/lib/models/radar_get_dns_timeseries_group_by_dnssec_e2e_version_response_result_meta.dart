// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_dns_timeseries_group_by_dnssec_e2e_version_response_result_meta_confidence_info.dart';import 'radar_get_dns_timeseries_group_by_dnssec_e2e_version_response_result_meta_date_range.dart';import 'radar_get_dns_timeseries_group_by_dnssec_e2e_version_response_result_meta_units.dart';/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
@immutable final class RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaAggInterval {const RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaAggInterval._(this.value);

factory RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaAggInterval.fromJson(String json) { return switch (json) {
  'FIFTEEN_MINUTES' => fifteenMinutes,
  'ONE_HOUR' => oneHour,
  'ONE_DAY' => oneDay,
  'ONE_WEEK' => oneWeek,
  'ONE_MONTH' => oneMonth,
  _ => RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaAggInterval._(json),
}; }

static const RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaAggInterval fifteenMinutes = RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaAggInterval._('FIFTEEN_MINUTES');

static const RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaAggInterval oneHour = RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaAggInterval._('ONE_HOUR');

static const RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaAggInterval oneDay = RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaAggInterval._('ONE_DAY');

static const RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaAggInterval oneWeek = RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaAggInterval._('ONE_WEEK');

static const RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaAggInterval oneMonth = RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaAggInterval._('ONE_MONTH');

static const List<RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaAggInterval> values = [fifteenMinutes, oneHour, oneDay, oneWeek, oneMonth];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaAggInterval($value)'; } 
 }
/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
@immutable final class RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaNormalization {const RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaNormalization._(this.value);

factory RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaNormalization._(json),
}; }

static const RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaNormalization percentage = RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaNormalization min0Max = RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaNormalization minMax = RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaNormalization rawValues = RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaNormalization percentageChange = RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaNormalization rollingAverage = RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaNormalization overlappedPercentage = RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaNormalization ratio = RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaNormalization._('RATIO');

static const List<RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
@immutable final class RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMeta {const RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMeta({required this.aggInterval, required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMeta(
  aggInterval: RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaAggInterval.fromJson(json['aggInterval'] as String),
  confidenceInfo: RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaAggInterval aggInterval;

final RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaUnits> units;

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
RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMeta copyWith({RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaAggInterval? aggInterval, RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaNormalization? normalization, List<RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMetaUnits>? units, }) { return RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMeta(
  aggInterval: aggInterval ?? this.aggInterval,
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMeta &&
          aggInterval == other.aggInterval &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(aggInterval, confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetDnsTimeseriesGroupByDnssecE2eVersionResponseResultMeta(aggInterval: $aggInterval, confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
