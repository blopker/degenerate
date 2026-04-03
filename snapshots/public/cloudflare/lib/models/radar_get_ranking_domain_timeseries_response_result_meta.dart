// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_ranking_domain_timeseries_response_result_meta_confidence_info.dart';import 'radar_get_ranking_domain_timeseries_response_result_meta_date_range.dart';import 'radar_get_ranking_domain_timeseries_response_result_meta_units.dart';/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
@immutable final class RadarGetRankingDomainTimeseriesResponseResultMetaAggInterval {const RadarGetRankingDomainTimeseriesResponseResultMetaAggInterval._(this.value);

factory RadarGetRankingDomainTimeseriesResponseResultMetaAggInterval.fromJson(String json) { return switch (json) {
  'FIFTEEN_MINUTES' => fifteenMinutes,
  'ONE_HOUR' => oneHour,
  'ONE_DAY' => oneDay,
  'ONE_WEEK' => oneWeek,
  'ONE_MONTH' => oneMonth,
  _ => RadarGetRankingDomainTimeseriesResponseResultMetaAggInterval._(json),
}; }

static const RadarGetRankingDomainTimeseriesResponseResultMetaAggInterval fifteenMinutes = RadarGetRankingDomainTimeseriesResponseResultMetaAggInterval._('FIFTEEN_MINUTES');

static const RadarGetRankingDomainTimeseriesResponseResultMetaAggInterval oneHour = RadarGetRankingDomainTimeseriesResponseResultMetaAggInterval._('ONE_HOUR');

static const RadarGetRankingDomainTimeseriesResponseResultMetaAggInterval oneDay = RadarGetRankingDomainTimeseriesResponseResultMetaAggInterval._('ONE_DAY');

static const RadarGetRankingDomainTimeseriesResponseResultMetaAggInterval oneWeek = RadarGetRankingDomainTimeseriesResponseResultMetaAggInterval._('ONE_WEEK');

static const RadarGetRankingDomainTimeseriesResponseResultMetaAggInterval oneMonth = RadarGetRankingDomainTimeseriesResponseResultMetaAggInterval._('ONE_MONTH');

static const List<RadarGetRankingDomainTimeseriesResponseResultMetaAggInterval> values = [fifteenMinutes, oneHour, oneDay, oneWeek, oneMonth];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetRankingDomainTimeseriesResponseResultMetaAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetRankingDomainTimeseriesResponseResultMetaAggInterval($value)'; } 
 }
/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
@immutable final class RadarGetRankingDomainTimeseriesResponseResultMetaNormalization {const RadarGetRankingDomainTimeseriesResponseResultMetaNormalization._(this.value);

factory RadarGetRankingDomainTimeseriesResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetRankingDomainTimeseriesResponseResultMetaNormalization._(json),
}; }

static const RadarGetRankingDomainTimeseriesResponseResultMetaNormalization percentage = RadarGetRankingDomainTimeseriesResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetRankingDomainTimeseriesResponseResultMetaNormalization min0Max = RadarGetRankingDomainTimeseriesResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetRankingDomainTimeseriesResponseResultMetaNormalization minMax = RadarGetRankingDomainTimeseriesResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetRankingDomainTimeseriesResponseResultMetaNormalization rawValues = RadarGetRankingDomainTimeseriesResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetRankingDomainTimeseriesResponseResultMetaNormalization percentageChange = RadarGetRankingDomainTimeseriesResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetRankingDomainTimeseriesResponseResultMetaNormalization rollingAverage = RadarGetRankingDomainTimeseriesResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetRankingDomainTimeseriesResponseResultMetaNormalization overlappedPercentage = RadarGetRankingDomainTimeseriesResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetRankingDomainTimeseriesResponseResultMetaNormalization ratio = RadarGetRankingDomainTimeseriesResponseResultMetaNormalization._('RATIO');

static const List<RadarGetRankingDomainTimeseriesResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetRankingDomainTimeseriesResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetRankingDomainTimeseriesResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
@immutable final class RadarGetRankingDomainTimeseriesResponseResultMeta {const RadarGetRankingDomainTimeseriesResponseResultMeta({required this.aggInterval, required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetRankingDomainTimeseriesResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetRankingDomainTimeseriesResponseResultMeta(
  aggInterval: RadarGetRankingDomainTimeseriesResponseResultMetaAggInterval.fromJson(json['aggInterval'] as String),
  confidenceInfo: RadarGetRankingDomainTimeseriesResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetRankingDomainTimeseriesResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetRankingDomainTimeseriesResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetRankingDomainTimeseriesResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final RadarGetRankingDomainTimeseriesResponseResultMetaAggInterval aggInterval;

final RadarGetRankingDomainTimeseriesResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetRankingDomainTimeseriesResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetRankingDomainTimeseriesResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetRankingDomainTimeseriesResponseResultMetaUnits> units;

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
RadarGetRankingDomainTimeseriesResponseResultMeta copyWith({RadarGetRankingDomainTimeseriesResponseResultMetaAggInterval? aggInterval, RadarGetRankingDomainTimeseriesResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetRankingDomainTimeseriesResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetRankingDomainTimeseriesResponseResultMetaNormalization? normalization, List<RadarGetRankingDomainTimeseriesResponseResultMetaUnits>? units, }) { return RadarGetRankingDomainTimeseriesResponseResultMeta(
  aggInterval: aggInterval ?? this.aggInterval,
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetRankingDomainTimeseriesResponseResultMeta &&
          aggInterval == other.aggInterval &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(aggInterval, confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetRankingDomainTimeseriesResponseResultMeta(aggInterval: $aggInterval, confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
