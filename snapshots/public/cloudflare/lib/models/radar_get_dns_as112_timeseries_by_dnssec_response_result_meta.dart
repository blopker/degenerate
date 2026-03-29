// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_dns_as112_timeseries_by_dnssec_response_result_meta_confidence_info.dart';import 'radar_get_dns_as112_timeseries_by_dnssec_response_result_meta_date_range.dart';import 'radar_get_dns_as112_timeseries_by_dnssec_response_result_meta_units.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final class RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaNormalization {const RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaNormalization._(this.value);

factory RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaNormalization._(json),
}; }

static const RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaNormalization percentage = RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaNormalization min0Max = RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaNormalization minMax = RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaNormalization rawValues = RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaNormalization percentageChange = RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaNormalization rollingAverage = RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaNormalization overlappedPercentage = RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaNormalization ratio = RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaNormalization._('RATIO');

static const List<RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
final class RadarGetDnsAs112TimeseriesByDnssecResponseResultMeta {const RadarGetDnsAs112TimeseriesByDnssecResponseResultMeta({required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetDnsAs112TimeseriesByDnssecResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetDnsAs112TimeseriesByDnssecResponseResultMeta(
  confidenceInfo: RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

final RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaUnits> units;

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
RadarGetDnsAs112TimeseriesByDnssecResponseResultMeta copyWith({RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaNormalization? normalization, List<RadarGetDnsAs112TimeseriesByDnssecResponseResultMetaUnits>? units, }) { return RadarGetDnsAs112TimeseriesByDnssecResponseResultMeta(
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsAs112TimeseriesByDnssecResponseResultMeta &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetDnsAs112TimeseriesByDnssecResponseResultMeta(confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
