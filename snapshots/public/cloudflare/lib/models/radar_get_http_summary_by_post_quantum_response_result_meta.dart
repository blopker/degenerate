// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_http_summary_by_post_quantum_response_result_meta_confidence_info.dart';import 'radar_get_http_summary_by_post_quantum_response_result_meta_date_range.dart';import 'radar_get_http_summary_by_post_quantum_response_result_meta_units.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
@immutable final class RadarGetHttpSummaryByPostQuantumResponseResultMetaNormalization {const RadarGetHttpSummaryByPostQuantumResponseResultMetaNormalization._(this.value);

factory RadarGetHttpSummaryByPostQuantumResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetHttpSummaryByPostQuantumResponseResultMetaNormalization._(json),
}; }

static const RadarGetHttpSummaryByPostQuantumResponseResultMetaNormalization percentage = RadarGetHttpSummaryByPostQuantumResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetHttpSummaryByPostQuantumResponseResultMetaNormalization min0Max = RadarGetHttpSummaryByPostQuantumResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetHttpSummaryByPostQuantumResponseResultMetaNormalization minMax = RadarGetHttpSummaryByPostQuantumResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetHttpSummaryByPostQuantumResponseResultMetaNormalization rawValues = RadarGetHttpSummaryByPostQuantumResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetHttpSummaryByPostQuantumResponseResultMetaNormalization percentageChange = RadarGetHttpSummaryByPostQuantumResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetHttpSummaryByPostQuantumResponseResultMetaNormalization rollingAverage = RadarGetHttpSummaryByPostQuantumResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetHttpSummaryByPostQuantumResponseResultMetaNormalization overlappedPercentage = RadarGetHttpSummaryByPostQuantumResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetHttpSummaryByPostQuantumResponseResultMetaNormalization ratio = RadarGetHttpSummaryByPostQuantumResponseResultMetaNormalization._('RATIO');

static const List<RadarGetHttpSummaryByPostQuantumResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpSummaryByPostQuantumResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpSummaryByPostQuantumResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
@immutable final class RadarGetHttpSummaryByPostQuantumResponseResultMeta {const RadarGetHttpSummaryByPostQuantumResponseResultMeta({required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetHttpSummaryByPostQuantumResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetHttpSummaryByPostQuantumResponseResultMeta(
  confidenceInfo: RadarGetHttpSummaryByPostQuantumResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetHttpSummaryByPostQuantumResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetHttpSummaryByPostQuantumResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetHttpSummaryByPostQuantumResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

final RadarGetHttpSummaryByPostQuantumResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetHttpSummaryByPostQuantumResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetHttpSummaryByPostQuantumResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetHttpSummaryByPostQuantumResponseResultMetaUnits> units;

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
RadarGetHttpSummaryByPostQuantumResponseResultMeta copyWith({RadarGetHttpSummaryByPostQuantumResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetHttpSummaryByPostQuantumResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetHttpSummaryByPostQuantumResponseResultMetaNormalization? normalization, List<RadarGetHttpSummaryByPostQuantumResponseResultMetaUnits>? units, }) { return RadarGetHttpSummaryByPostQuantumResponseResultMeta(
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpSummaryByPostQuantumResponseResultMeta &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetHttpSummaryByPostQuantumResponseResultMeta(confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
