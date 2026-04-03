// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_email_security_timeseries_group_by_threat_category_response_result_meta_confidence_info.dart';import 'radar_get_email_security_timeseries_group_by_threat_category_response_result_meta_date_range.dart';import 'radar_get_email_security_timeseries_group_by_threat_category_response_result_meta_units.dart';/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
@immutable final class RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaAggInterval {const RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaAggInterval._(this.value);

factory RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaAggInterval.fromJson(String json) { return switch (json) {
  'FIFTEEN_MINUTES' => fifteenMinutes,
  'ONE_HOUR' => oneHour,
  'ONE_DAY' => oneDay,
  'ONE_WEEK' => oneWeek,
  'ONE_MONTH' => oneMonth,
  _ => RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaAggInterval._(json),
}; }

static const RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaAggInterval fifteenMinutes = RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaAggInterval._('FIFTEEN_MINUTES');

static const RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaAggInterval oneHour = RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaAggInterval._('ONE_HOUR');

static const RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaAggInterval oneDay = RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaAggInterval._('ONE_DAY');

static const RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaAggInterval oneWeek = RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaAggInterval._('ONE_WEEK');

static const RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaAggInterval oneMonth = RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaAggInterval._('ONE_MONTH');

static const List<RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaAggInterval> values = [fifteenMinutes, oneHour, oneDay, oneWeek, oneMonth];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaAggInterval($value)'; } 
 }
/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
@immutable final class RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaNormalization {const RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaNormalization._(this.value);

factory RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaNormalization._(json),
}; }

static const RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaNormalization percentage = RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaNormalization min0Max = RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaNormalization minMax = RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaNormalization rawValues = RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaNormalization percentageChange = RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaNormalization rollingAverage = RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaNormalization overlappedPercentage = RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaNormalization ratio = RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaNormalization._('RATIO');

static const List<RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
@immutable final class RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMeta {const RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMeta({required this.aggInterval, required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMeta(
  aggInterval: RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaAggInterval.fromJson(json['aggInterval'] as String),
  confidenceInfo: RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaAggInterval aggInterval;

final RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaUnits> units;

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
RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMeta copyWith({RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaAggInterval? aggInterval, RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaNormalization? normalization, List<RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMetaUnits>? units, }) { return RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMeta(
  aggInterval: aggInterval ?? this.aggInterval,
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMeta &&
          aggInterval == other.aggInterval &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(aggInterval, confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetEmailSecurityTimeseriesGroupByThreatCategoryResponseResultMeta(aggInterval: $aggInterval, confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
