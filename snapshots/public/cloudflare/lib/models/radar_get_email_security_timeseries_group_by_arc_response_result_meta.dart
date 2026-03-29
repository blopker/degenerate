// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_email_security_timeseries_group_by_arc_response_result_meta_confidence_info.dart';import 'radar_get_email_security_timeseries_group_by_arc_response_result_meta_date_range.dart';import 'radar_get_email_security_timeseries_group_by_arc_response_result_meta_units.dart';/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final class RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaAggInterval {const RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaAggInterval._(this.value);

factory RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaAggInterval.fromJson(String json) { return switch (json) {
  'FIFTEEN_MINUTES' => fifteenMinutes,
  'ONE_HOUR' => oneHour,
  'ONE_DAY' => oneDay,
  'ONE_WEEK' => oneWeek,
  'ONE_MONTH' => oneMonth,
  _ => RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaAggInterval._(json),
}; }

static const RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaAggInterval fifteenMinutes = RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaAggInterval._('FIFTEEN_MINUTES');

static const RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaAggInterval oneHour = RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaAggInterval._('ONE_HOUR');

static const RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaAggInterval oneDay = RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaAggInterval._('ONE_DAY');

static const RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaAggInterval oneWeek = RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaAggInterval._('ONE_WEEK');

static const RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaAggInterval oneMonth = RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaAggInterval._('ONE_MONTH');

static const List<RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaAggInterval> values = [fifteenMinutes, oneHour, oneDay, oneWeek, oneMonth];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaAggInterval($value)'; } 
 }
/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final class RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaNormalization {const RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaNormalization._(this.value);

factory RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaNormalization._(json),
}; }

static const RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaNormalization percentage = RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaNormalization min0Max = RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaNormalization minMax = RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaNormalization rawValues = RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaNormalization percentageChange = RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaNormalization rollingAverage = RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaNormalization overlappedPercentage = RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaNormalization ratio = RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaNormalization._('RATIO');

static const List<RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
final class RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMeta {const RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMeta({required this.aggInterval, required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMeta(
  aggInterval: RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaAggInterval.fromJson(json['aggInterval'] as String),
  confidenceInfo: RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaAggInterval aggInterval;

final RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaUnits> units;

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
RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMeta copyWith({RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaAggInterval? aggInterval, RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaNormalization? normalization, List<RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMetaUnits>? units, }) { return RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMeta(
  aggInterval: aggInterval ?? this.aggInterval,
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMeta &&
          aggInterval == other.aggInterval &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(aggInterval, confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetEmailSecurityTimeseriesGroupByArcResponseResultMeta(aggInterval: $aggInterval, confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
