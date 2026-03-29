// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_dns_as112_timeseries_by_query_type_response_result_meta_confidence_info.dart';import 'radar_get_dns_as112_timeseries_by_query_type_response_result_meta_date_range.dart';import 'radar_get_dns_as112_timeseries_by_query_type_response_result_meta_units.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final class RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaNormalization {const RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaNormalization._(this.value);

factory RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaNormalization._(json),
}; }

static const RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaNormalization percentage = RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaNormalization min0Max = RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaNormalization minMax = RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaNormalization rawValues = RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaNormalization percentageChange = RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaNormalization rollingAverage = RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaNormalization overlappedPercentage = RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaNormalization ratio = RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaNormalization._('RATIO');

static const List<RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
final class RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMeta {const RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMeta({required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMeta(
  confidenceInfo: RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

final RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaUnits> units;

Map<String, dynamic> toJson() { return {
  'confidenceInfo': confidenceInfo.toJson(),
  'dateRange': dateRange.map((e) => e.toJson()).toList(),
  'lastUpdated': lastUpdated.toIso8601String(),
  'normalization': normalization.toJson(),
  'units': units.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('confidenceInfo') &&
      json.containsKey('dateRange') &&
      json.containsKey('lastUpdated') && json['lastUpdated'] is String &&
      json.containsKey('normalization') &&
      json.containsKey('units'); } 
RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMeta copyWith({RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaNormalization? normalization, List<RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMetaUnits>? units, }) { return RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMeta(
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMeta &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetDnsAs112TimeseriesByQueryTypeResponseResultMeta(confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
