// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_email_routing_timeseries_group_by_encrypted_response_result_meta_confidence_info.dart';import 'radar_get_email_routing_timeseries_group_by_encrypted_response_result_meta_date_range.dart';import 'radar_get_email_routing_timeseries_group_by_encrypted_response_result_meta_units.dart';/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final class RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaAggInterval {const RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaAggInterval._(this.value);

factory RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaAggInterval.fromJson(String json) { return switch (json) {
  'FIFTEEN_MINUTES' => fifteenMinutes,
  'ONE_HOUR' => oneHour,
  'ONE_DAY' => oneDay,
  'ONE_WEEK' => oneWeek,
  'ONE_MONTH' => oneMonth,
  _ => RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaAggInterval._(json),
}; }

static const RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaAggInterval fifteenMinutes = RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaAggInterval._('FIFTEEN_MINUTES');

static const RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaAggInterval oneHour = RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaAggInterval._('ONE_HOUR');

static const RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaAggInterval oneDay = RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaAggInterval._('ONE_DAY');

static const RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaAggInterval oneWeek = RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaAggInterval._('ONE_WEEK');

static const RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaAggInterval oneMonth = RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaAggInterval._('ONE_MONTH');

static const List<RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaAggInterval> values = [fifteenMinutes, oneHour, oneDay, oneWeek, oneMonth];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaAggInterval && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaAggInterval($value)'; } 
 }
/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final class RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaNormalization {const RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaNormalization._(this.value);

factory RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaNormalization._(json),
}; }

static const RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaNormalization percentage = RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaNormalization min0Max = RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaNormalization minMax = RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaNormalization rawValues = RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaNormalization percentageChange = RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaNormalization rollingAverage = RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaNormalization overlappedPercentage = RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaNormalization ratio = RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaNormalization._('RATIO');

static const List<RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
final class RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMeta {const RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMeta({required this.aggInterval, required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMeta(
  aggInterval: RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaAggInterval.fromJson(json['aggInterval'] as String),
  confidenceInfo: RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Aggregation interval of the results (e.g., in 15 minutes or 1 hour intervals). Refer to [Aggregation intervals](https://developers.cloudflare.com/radar/concepts/aggregation-intervals/).
final RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaAggInterval aggInterval;

final RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaUnits> units;

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
RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMeta copyWith({RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaAggInterval? aggInterval, RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaNormalization? normalization, List<RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMetaUnits>? units, }) { return RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMeta(
  aggInterval: aggInterval ?? this.aggInterval,
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMeta &&
          aggInterval == other.aggInterval &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(aggInterval, confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetEmailRoutingTimeseriesGroupByEncryptedResponseResultMeta(aggInterval: $aggInterval, confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
