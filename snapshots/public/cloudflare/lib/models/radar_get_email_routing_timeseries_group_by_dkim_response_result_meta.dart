// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_email_routing_timeseries_group_by_dkim_response_result_meta_confidence_info.dart';import 'radar_get_email_routing_timeseries_group_by_dkim_response_result_meta_date_range.dart';import 'radar_get_email_routing_timeseries_group_by_dkim_response_result_meta_units.dart';/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final class RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaAggInterval {const RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaAggInterval._(this.value);

factory RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaAggInterval.fromJson(String json) { return switch (json) {
  'FIFTEEN_MINUTES' => fifteenMinutes,
  'ONE_HOUR' => oneHour,
  'ONE_DAY' => oneDay,
  'ONE_WEEK' => oneWeek,
  'ONE_MONTH' => oneMonth,
  _ => RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaAggInterval._(json),
}; }

static const RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaAggInterval fifteenMinutes = RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaAggInterval._('FIFTEEN_MINUTES');

static const RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaAggInterval oneHour = RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaAggInterval._('ONE_HOUR');

static const RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaAggInterval oneDay = RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaAggInterval._('ONE_DAY');

static const RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaAggInterval oneWeek = RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaAggInterval._('ONE_WEEK');

static const RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaAggInterval oneMonth = RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaAggInterval._('ONE_MONTH');

static const List<RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaAggInterval> values = [fifteenMinutes, oneHour, oneDay, oneWeek, oneMonth];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaAggInterval($value)'; } 
 }
/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final class RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaNormalization {const RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaNormalization._(this.value);

factory RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaNormalization._(json),
}; }

static const RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaNormalization percentage = RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaNormalization min0Max = RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaNormalization minMax = RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaNormalization rawValues = RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaNormalization percentageChange = RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaNormalization rollingAverage = RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaNormalization overlappedPercentage = RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaNormalization ratio = RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaNormalization._('RATIO');

static const List<RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
final class RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMeta {const RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMeta({required this.aggInterval, required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMeta(
  aggInterval: RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaAggInterval.fromJson(json['aggInterval'] as String),
  confidenceInfo: RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaAggInterval aggInterval;

final RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaUnits> units;

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
RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMeta copyWith({RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaAggInterval? aggInterval, RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaNormalization? normalization, List<RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMetaUnits>? units, }) { return RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMeta(
  aggInterval: aggInterval ?? this.aggInterval,
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMeta &&
          aggInterval == other.aggInterval &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(aggInterval, confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetEmailRoutingTimeseriesGroupByDkimResponseResultMeta(aggInterval: $aggInterval, confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
