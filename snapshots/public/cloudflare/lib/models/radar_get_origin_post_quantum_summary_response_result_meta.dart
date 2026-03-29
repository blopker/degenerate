// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_origin_post_quantum_summary_response_result_meta_confidence_info.dart';import 'radar_get_origin_post_quantum_summary_response_result_meta_date_range.dart';import 'radar_get_origin_post_quantum_summary_response_result_meta_units.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final class RadarGetOriginPostQuantumSummaryResponseResultMetaNormalization {const RadarGetOriginPostQuantumSummaryResponseResultMetaNormalization._(this.value);

factory RadarGetOriginPostQuantumSummaryResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetOriginPostQuantumSummaryResponseResultMetaNormalization._(json),
}; }

static const RadarGetOriginPostQuantumSummaryResponseResultMetaNormalization percentage = RadarGetOriginPostQuantumSummaryResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetOriginPostQuantumSummaryResponseResultMetaNormalization min0Max = RadarGetOriginPostQuantumSummaryResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetOriginPostQuantumSummaryResponseResultMetaNormalization minMax = RadarGetOriginPostQuantumSummaryResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetOriginPostQuantumSummaryResponseResultMetaNormalization rawValues = RadarGetOriginPostQuantumSummaryResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetOriginPostQuantumSummaryResponseResultMetaNormalization percentageChange = RadarGetOriginPostQuantumSummaryResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetOriginPostQuantumSummaryResponseResultMetaNormalization rollingAverage = RadarGetOriginPostQuantumSummaryResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetOriginPostQuantumSummaryResponseResultMetaNormalization overlappedPercentage = RadarGetOriginPostQuantumSummaryResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetOriginPostQuantumSummaryResponseResultMetaNormalization ratio = RadarGetOriginPostQuantumSummaryResponseResultMetaNormalization._('RATIO');

static const List<RadarGetOriginPostQuantumSummaryResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetOriginPostQuantumSummaryResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetOriginPostQuantumSummaryResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
final class RadarGetOriginPostQuantumSummaryResponseResultMeta {const RadarGetOriginPostQuantumSummaryResponseResultMeta({required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetOriginPostQuantumSummaryResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetOriginPostQuantumSummaryResponseResultMeta(
  confidenceInfo: RadarGetOriginPostQuantumSummaryResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetOriginPostQuantumSummaryResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetOriginPostQuantumSummaryResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetOriginPostQuantumSummaryResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

final RadarGetOriginPostQuantumSummaryResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetOriginPostQuantumSummaryResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetOriginPostQuantumSummaryResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetOriginPostQuantumSummaryResponseResultMetaUnits> units;

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
RadarGetOriginPostQuantumSummaryResponseResultMeta copyWith({RadarGetOriginPostQuantumSummaryResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetOriginPostQuantumSummaryResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetOriginPostQuantumSummaryResponseResultMetaNormalization? normalization, List<RadarGetOriginPostQuantumSummaryResponseResultMetaUnits>? units, }) { return RadarGetOriginPostQuantumSummaryResponseResultMeta(
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetOriginPostQuantumSummaryResponseResultMeta &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetOriginPostQuantumSummaryResponseResultMeta(confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
