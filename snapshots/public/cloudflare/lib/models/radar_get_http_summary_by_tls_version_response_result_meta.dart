// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_http_summary_by_tls_version_response_result_meta_confidence_info.dart';import 'radar_get_http_summary_by_tls_version_response_result_meta_date_range.dart';import 'radar_get_http_summary_by_tls_version_response_result_meta_units.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final class RadarGetHttpSummaryByTlsVersionResponseResultMetaNormalization {const RadarGetHttpSummaryByTlsVersionResponseResultMetaNormalization._(this.value);

factory RadarGetHttpSummaryByTlsVersionResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetHttpSummaryByTlsVersionResponseResultMetaNormalization._(json),
}; }

static const RadarGetHttpSummaryByTlsVersionResponseResultMetaNormalization percentage = RadarGetHttpSummaryByTlsVersionResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetHttpSummaryByTlsVersionResponseResultMetaNormalization min0Max = RadarGetHttpSummaryByTlsVersionResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetHttpSummaryByTlsVersionResponseResultMetaNormalization minMax = RadarGetHttpSummaryByTlsVersionResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetHttpSummaryByTlsVersionResponseResultMetaNormalization rawValues = RadarGetHttpSummaryByTlsVersionResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetHttpSummaryByTlsVersionResponseResultMetaNormalization percentageChange = RadarGetHttpSummaryByTlsVersionResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetHttpSummaryByTlsVersionResponseResultMetaNormalization rollingAverage = RadarGetHttpSummaryByTlsVersionResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetHttpSummaryByTlsVersionResponseResultMetaNormalization overlappedPercentage = RadarGetHttpSummaryByTlsVersionResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetHttpSummaryByTlsVersionResponseResultMetaNormalization ratio = RadarGetHttpSummaryByTlsVersionResponseResultMetaNormalization._('RATIO');

static const List<RadarGetHttpSummaryByTlsVersionResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpSummaryByTlsVersionResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpSummaryByTlsVersionResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
final class RadarGetHttpSummaryByTlsVersionResponseResultMeta {const RadarGetHttpSummaryByTlsVersionResponseResultMeta({required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetHttpSummaryByTlsVersionResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetHttpSummaryByTlsVersionResponseResultMeta(
  confidenceInfo: RadarGetHttpSummaryByTlsVersionResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetHttpSummaryByTlsVersionResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetHttpSummaryByTlsVersionResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetHttpSummaryByTlsVersionResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

final RadarGetHttpSummaryByTlsVersionResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetHttpSummaryByTlsVersionResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetHttpSummaryByTlsVersionResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetHttpSummaryByTlsVersionResponseResultMetaUnits> units;

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
RadarGetHttpSummaryByTlsVersionResponseResultMeta copyWith({RadarGetHttpSummaryByTlsVersionResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetHttpSummaryByTlsVersionResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetHttpSummaryByTlsVersionResponseResultMetaNormalization? normalization, List<RadarGetHttpSummaryByTlsVersionResponseResultMetaUnits>? units, }) { return RadarGetHttpSummaryByTlsVersionResponseResultMeta(
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpSummaryByTlsVersionResponseResultMeta &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetHttpSummaryByTlsVersionResponseResultMeta(confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
