// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_dns_summary_by_response_code_response_result_meta_confidence_info.dart';import 'radar_get_dns_summary_by_response_code_response_result_meta_date_range.dart';import 'radar_get_dns_summary_by_response_code_response_result_meta_units.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
@immutable final class RadarGetDnsSummaryByResponseCodeResponseResultMetaNormalization {const RadarGetDnsSummaryByResponseCodeResponseResultMetaNormalization._(this.value);

factory RadarGetDnsSummaryByResponseCodeResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetDnsSummaryByResponseCodeResponseResultMetaNormalization._(json),
}; }

static const RadarGetDnsSummaryByResponseCodeResponseResultMetaNormalization percentage = RadarGetDnsSummaryByResponseCodeResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetDnsSummaryByResponseCodeResponseResultMetaNormalization min0Max = RadarGetDnsSummaryByResponseCodeResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetDnsSummaryByResponseCodeResponseResultMetaNormalization minMax = RadarGetDnsSummaryByResponseCodeResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetDnsSummaryByResponseCodeResponseResultMetaNormalization rawValues = RadarGetDnsSummaryByResponseCodeResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetDnsSummaryByResponseCodeResponseResultMetaNormalization percentageChange = RadarGetDnsSummaryByResponseCodeResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetDnsSummaryByResponseCodeResponseResultMetaNormalization rollingAverage = RadarGetDnsSummaryByResponseCodeResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetDnsSummaryByResponseCodeResponseResultMetaNormalization overlappedPercentage = RadarGetDnsSummaryByResponseCodeResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetDnsSummaryByResponseCodeResponseResultMetaNormalization ratio = RadarGetDnsSummaryByResponseCodeResponseResultMetaNormalization._('RATIO');

static const List<RadarGetDnsSummaryByResponseCodeResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsSummaryByResponseCodeResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsSummaryByResponseCodeResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
@immutable final class RadarGetDnsSummaryByResponseCodeResponseResultMeta {const RadarGetDnsSummaryByResponseCodeResponseResultMeta({required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetDnsSummaryByResponseCodeResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetDnsSummaryByResponseCodeResponseResultMeta(
  confidenceInfo: RadarGetDnsSummaryByResponseCodeResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetDnsSummaryByResponseCodeResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetDnsSummaryByResponseCodeResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetDnsSummaryByResponseCodeResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

final RadarGetDnsSummaryByResponseCodeResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetDnsSummaryByResponseCodeResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetDnsSummaryByResponseCodeResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetDnsSummaryByResponseCodeResponseResultMetaUnits> units;

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
RadarGetDnsSummaryByResponseCodeResponseResultMeta copyWith({RadarGetDnsSummaryByResponseCodeResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetDnsSummaryByResponseCodeResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetDnsSummaryByResponseCodeResponseResultMetaNormalization? normalization, List<RadarGetDnsSummaryByResponseCodeResponseResultMetaUnits>? units, }) { return RadarGetDnsSummaryByResponseCodeResponseResultMeta(
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsSummaryByResponseCodeResponseResultMeta &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetDnsSummaryByResponseCodeResponseResultMeta(confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
