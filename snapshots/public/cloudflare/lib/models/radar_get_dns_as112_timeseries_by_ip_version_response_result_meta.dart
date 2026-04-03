// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_dns_as112_timeseries_by_ip_version_response_result_meta_confidence_info.dart';import 'radar_get_dns_as112_timeseries_by_ip_version_response_result_meta_date_range.dart';import 'radar_get_dns_as112_timeseries_by_ip_version_response_result_meta_units.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
@immutable final class RadarGetDnsAs112TimeseriesByIpVersionResponseResultMetaNormalization {const RadarGetDnsAs112TimeseriesByIpVersionResponseResultMetaNormalization._(this.value);

factory RadarGetDnsAs112TimeseriesByIpVersionResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetDnsAs112TimeseriesByIpVersionResponseResultMetaNormalization._(json),
}; }

static const RadarGetDnsAs112TimeseriesByIpVersionResponseResultMetaNormalization percentage = RadarGetDnsAs112TimeseriesByIpVersionResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetDnsAs112TimeseriesByIpVersionResponseResultMetaNormalization min0Max = RadarGetDnsAs112TimeseriesByIpVersionResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetDnsAs112TimeseriesByIpVersionResponseResultMetaNormalization minMax = RadarGetDnsAs112TimeseriesByIpVersionResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetDnsAs112TimeseriesByIpVersionResponseResultMetaNormalization rawValues = RadarGetDnsAs112TimeseriesByIpVersionResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetDnsAs112TimeseriesByIpVersionResponseResultMetaNormalization percentageChange = RadarGetDnsAs112TimeseriesByIpVersionResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetDnsAs112TimeseriesByIpVersionResponseResultMetaNormalization rollingAverage = RadarGetDnsAs112TimeseriesByIpVersionResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetDnsAs112TimeseriesByIpVersionResponseResultMetaNormalization overlappedPercentage = RadarGetDnsAs112TimeseriesByIpVersionResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetDnsAs112TimeseriesByIpVersionResponseResultMetaNormalization ratio = RadarGetDnsAs112TimeseriesByIpVersionResponseResultMetaNormalization._('RATIO');

static const List<RadarGetDnsAs112TimeseriesByIpVersionResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsAs112TimeseriesByIpVersionResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsAs112TimeseriesByIpVersionResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
@immutable final class RadarGetDnsAs112TimeseriesByIpVersionResponseResultMeta {const RadarGetDnsAs112TimeseriesByIpVersionResponseResultMeta({required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetDnsAs112TimeseriesByIpVersionResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetDnsAs112TimeseriesByIpVersionResponseResultMeta(
  confidenceInfo: RadarGetDnsAs112TimeseriesByIpVersionResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetDnsAs112TimeseriesByIpVersionResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetDnsAs112TimeseriesByIpVersionResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetDnsAs112TimeseriesByIpVersionResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

final RadarGetDnsAs112TimeseriesByIpVersionResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetDnsAs112TimeseriesByIpVersionResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetDnsAs112TimeseriesByIpVersionResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetDnsAs112TimeseriesByIpVersionResponseResultMetaUnits> units;

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
RadarGetDnsAs112TimeseriesByIpVersionResponseResultMeta copyWith({RadarGetDnsAs112TimeseriesByIpVersionResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetDnsAs112TimeseriesByIpVersionResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetDnsAs112TimeseriesByIpVersionResponseResultMetaNormalization? normalization, List<RadarGetDnsAs112TimeseriesByIpVersionResponseResultMetaUnits>? units, }) { return RadarGetDnsAs112TimeseriesByIpVersionResponseResultMeta(
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsAs112TimeseriesByIpVersionResponseResultMeta &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetDnsAs112TimeseriesByIpVersionResponseResultMeta(confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
