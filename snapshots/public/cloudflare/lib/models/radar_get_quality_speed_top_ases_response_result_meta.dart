// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_quality_speed_top_ases_response_result_meta_confidence_info.dart';import 'radar_get_quality_speed_top_ases_response_result_meta_date_range.dart';import 'radar_get_quality_speed_top_ases_response_result_meta_units.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final class RadarGetQualitySpeedTopAsesResponseResultMetaNormalization {const RadarGetQualitySpeedTopAsesResponseResultMetaNormalization._(this.value);

factory RadarGetQualitySpeedTopAsesResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetQualitySpeedTopAsesResponseResultMetaNormalization._(json),
}; }

static const RadarGetQualitySpeedTopAsesResponseResultMetaNormalization percentage = RadarGetQualitySpeedTopAsesResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetQualitySpeedTopAsesResponseResultMetaNormalization min0Max = RadarGetQualitySpeedTopAsesResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetQualitySpeedTopAsesResponseResultMetaNormalization minMax = RadarGetQualitySpeedTopAsesResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetQualitySpeedTopAsesResponseResultMetaNormalization rawValues = RadarGetQualitySpeedTopAsesResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetQualitySpeedTopAsesResponseResultMetaNormalization percentageChange = RadarGetQualitySpeedTopAsesResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetQualitySpeedTopAsesResponseResultMetaNormalization rollingAverage = RadarGetQualitySpeedTopAsesResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetQualitySpeedTopAsesResponseResultMetaNormalization overlappedPercentage = RadarGetQualitySpeedTopAsesResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetQualitySpeedTopAsesResponseResultMetaNormalization ratio = RadarGetQualitySpeedTopAsesResponseResultMetaNormalization._('RATIO');

static const List<RadarGetQualitySpeedTopAsesResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetQualitySpeedTopAsesResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetQualitySpeedTopAsesResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
final class RadarGetQualitySpeedTopAsesResponseResultMeta {const RadarGetQualitySpeedTopAsesResponseResultMeta({required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetQualitySpeedTopAsesResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetQualitySpeedTopAsesResponseResultMeta(
  confidenceInfo: json['confidenceInfo'] != null ? RadarGetQualitySpeedTopAsesResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>) : null,
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetQualitySpeedTopAsesResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetQualitySpeedTopAsesResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetQualitySpeedTopAsesResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

final RadarGetQualitySpeedTopAsesResponseResultMetaConfidenceInfo? confidenceInfo;

final List<RadarGetQualitySpeedTopAsesResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetQualitySpeedTopAsesResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetQualitySpeedTopAsesResponseResultMetaUnits> units;

Map<String, dynamic> toJson() { return {
  if (confidenceInfo != null) 'confidenceInfo': confidenceInfo?.toJson(),
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
RadarGetQualitySpeedTopAsesResponseResultMeta copyWith({RadarGetQualitySpeedTopAsesResponseResultMetaConfidenceInfo? Function()? confidenceInfo, List<RadarGetQualitySpeedTopAsesResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetQualitySpeedTopAsesResponseResultMetaNormalization? normalization, List<RadarGetQualitySpeedTopAsesResponseResultMetaUnits>? units, }) { return RadarGetQualitySpeedTopAsesResponseResultMeta(
  confidenceInfo: confidenceInfo != null ? confidenceInfo() : this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetQualitySpeedTopAsesResponseResultMeta &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetQualitySpeedTopAsesResponseResultMeta(confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
