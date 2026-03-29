// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_quality_speed_summary_response_result_meta_confidence_info.dart';import 'radar_get_quality_speed_summary_response_result_meta_date_range.dart';import 'radar_get_quality_speed_summary_response_result_meta_units.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final class RadarGetQualitySpeedSummaryResponseResultMetaNormalization {const RadarGetQualitySpeedSummaryResponseResultMetaNormalization._(this.value);

factory RadarGetQualitySpeedSummaryResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetQualitySpeedSummaryResponseResultMetaNormalization._(json),
}; }

static const RadarGetQualitySpeedSummaryResponseResultMetaNormalization percentage = RadarGetQualitySpeedSummaryResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetQualitySpeedSummaryResponseResultMetaNormalization min0Max = RadarGetQualitySpeedSummaryResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetQualitySpeedSummaryResponseResultMetaNormalization minMax = RadarGetQualitySpeedSummaryResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetQualitySpeedSummaryResponseResultMetaNormalization rawValues = RadarGetQualitySpeedSummaryResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetQualitySpeedSummaryResponseResultMetaNormalization percentageChange = RadarGetQualitySpeedSummaryResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetQualitySpeedSummaryResponseResultMetaNormalization rollingAverage = RadarGetQualitySpeedSummaryResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetQualitySpeedSummaryResponseResultMetaNormalization overlappedPercentage = RadarGetQualitySpeedSummaryResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetQualitySpeedSummaryResponseResultMetaNormalization ratio = RadarGetQualitySpeedSummaryResponseResultMetaNormalization._('RATIO');

static const List<RadarGetQualitySpeedSummaryResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetQualitySpeedSummaryResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetQualitySpeedSummaryResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
final class RadarGetQualitySpeedSummaryResponseResultMeta {const RadarGetQualitySpeedSummaryResponseResultMeta({required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetQualitySpeedSummaryResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetQualitySpeedSummaryResponseResultMeta(
  confidenceInfo: RadarGetQualitySpeedSummaryResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetQualitySpeedSummaryResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetQualitySpeedSummaryResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetQualitySpeedSummaryResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

final RadarGetQualitySpeedSummaryResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetQualitySpeedSummaryResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetQualitySpeedSummaryResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetQualitySpeedSummaryResponseResultMetaUnits> units;

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
RadarGetQualitySpeedSummaryResponseResultMeta copyWith({RadarGetQualitySpeedSummaryResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetQualitySpeedSummaryResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetQualitySpeedSummaryResponseResultMetaNormalization? normalization, List<RadarGetQualitySpeedSummaryResponseResultMetaUnits>? units, }) { return RadarGetQualitySpeedSummaryResponseResultMeta(
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetQualitySpeedSummaryResponseResultMeta &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetQualitySpeedSummaryResponseResultMeta(confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
