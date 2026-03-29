// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_dns_summary_by_cache_hit_status_response_result_meta_confidence_info.dart';import 'radar_get_dns_summary_by_cache_hit_status_response_result_meta_date_range.dart';import 'radar_get_dns_summary_by_cache_hit_status_response_result_meta_units.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final class RadarGetDnsSummaryByCacheHitStatusResponseResultMetaNormalization {const RadarGetDnsSummaryByCacheHitStatusResponseResultMetaNormalization._(this.value);

factory RadarGetDnsSummaryByCacheHitStatusResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetDnsSummaryByCacheHitStatusResponseResultMetaNormalization._(json),
}; }

static const RadarGetDnsSummaryByCacheHitStatusResponseResultMetaNormalization percentage = RadarGetDnsSummaryByCacheHitStatusResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetDnsSummaryByCacheHitStatusResponseResultMetaNormalization min0Max = RadarGetDnsSummaryByCacheHitStatusResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetDnsSummaryByCacheHitStatusResponseResultMetaNormalization minMax = RadarGetDnsSummaryByCacheHitStatusResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetDnsSummaryByCacheHitStatusResponseResultMetaNormalization rawValues = RadarGetDnsSummaryByCacheHitStatusResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetDnsSummaryByCacheHitStatusResponseResultMetaNormalization percentageChange = RadarGetDnsSummaryByCacheHitStatusResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetDnsSummaryByCacheHitStatusResponseResultMetaNormalization rollingAverage = RadarGetDnsSummaryByCacheHitStatusResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetDnsSummaryByCacheHitStatusResponseResultMetaNormalization overlappedPercentage = RadarGetDnsSummaryByCacheHitStatusResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetDnsSummaryByCacheHitStatusResponseResultMetaNormalization ratio = RadarGetDnsSummaryByCacheHitStatusResponseResultMetaNormalization._('RATIO');

static const List<RadarGetDnsSummaryByCacheHitStatusResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsSummaryByCacheHitStatusResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsSummaryByCacheHitStatusResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
final class RadarGetDnsSummaryByCacheHitStatusResponseResultMeta {const RadarGetDnsSummaryByCacheHitStatusResponseResultMeta({required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetDnsSummaryByCacheHitStatusResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetDnsSummaryByCacheHitStatusResponseResultMeta(
  confidenceInfo: RadarGetDnsSummaryByCacheHitStatusResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetDnsSummaryByCacheHitStatusResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetDnsSummaryByCacheHitStatusResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetDnsSummaryByCacheHitStatusResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

final RadarGetDnsSummaryByCacheHitStatusResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetDnsSummaryByCacheHitStatusResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetDnsSummaryByCacheHitStatusResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetDnsSummaryByCacheHitStatusResponseResultMetaUnits> units;

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
RadarGetDnsSummaryByCacheHitStatusResponseResultMeta copyWith({RadarGetDnsSummaryByCacheHitStatusResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetDnsSummaryByCacheHitStatusResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetDnsSummaryByCacheHitStatusResponseResultMetaNormalization? normalization, List<RadarGetDnsSummaryByCacheHitStatusResponseResultMetaUnits>? units, }) { return RadarGetDnsSummaryByCacheHitStatusResponseResultMeta(
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsSummaryByCacheHitStatusResponseResultMeta &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetDnsSummaryByCacheHitStatusResponseResultMeta(confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
