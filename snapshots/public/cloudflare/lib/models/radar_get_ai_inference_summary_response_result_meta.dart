// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_ai_inference_summary_response_result_meta_confidence_info.dart';import 'radar_get_ai_inference_summary_response_result_meta_date_range.dart';import 'radar_get_ai_inference_summary_response_result_meta_units.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final class RadarGetAiInferenceSummaryResponseResultMetaNormalization {const RadarGetAiInferenceSummaryResponseResultMetaNormalization._(this.value);

factory RadarGetAiInferenceSummaryResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetAiInferenceSummaryResponseResultMetaNormalization._(json),
}; }

static const RadarGetAiInferenceSummaryResponseResultMetaNormalization percentage = RadarGetAiInferenceSummaryResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetAiInferenceSummaryResponseResultMetaNormalization min0Max = RadarGetAiInferenceSummaryResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetAiInferenceSummaryResponseResultMetaNormalization minMax = RadarGetAiInferenceSummaryResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetAiInferenceSummaryResponseResultMetaNormalization rawValues = RadarGetAiInferenceSummaryResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetAiInferenceSummaryResponseResultMetaNormalization percentageChange = RadarGetAiInferenceSummaryResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetAiInferenceSummaryResponseResultMetaNormalization rollingAverage = RadarGetAiInferenceSummaryResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetAiInferenceSummaryResponseResultMetaNormalization overlappedPercentage = RadarGetAiInferenceSummaryResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetAiInferenceSummaryResponseResultMetaNormalization ratio = RadarGetAiInferenceSummaryResponseResultMetaNormalization._('RATIO');

static const List<RadarGetAiInferenceSummaryResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAiInferenceSummaryResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAiInferenceSummaryResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
final class RadarGetAiInferenceSummaryResponseResultMeta {const RadarGetAiInferenceSummaryResponseResultMeta({required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetAiInferenceSummaryResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetAiInferenceSummaryResponseResultMeta(
  confidenceInfo: RadarGetAiInferenceSummaryResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetAiInferenceSummaryResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetAiInferenceSummaryResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetAiInferenceSummaryResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

final RadarGetAiInferenceSummaryResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetAiInferenceSummaryResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetAiInferenceSummaryResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetAiInferenceSummaryResponseResultMetaUnits> units;

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
RadarGetAiInferenceSummaryResponseResultMeta copyWith({RadarGetAiInferenceSummaryResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetAiInferenceSummaryResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetAiInferenceSummaryResponseResultMetaNormalization? normalization, List<RadarGetAiInferenceSummaryResponseResultMetaUnits>? units, }) { return RadarGetAiInferenceSummaryResponseResultMeta(
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAiInferenceSummaryResponseResultMeta &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetAiInferenceSummaryResponseResultMeta(confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
