// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_attacks_layer3_top_industries_response_result_meta_confidence_info.dart';import 'radar_get_attacks_layer3_top_industries_response_result_meta_date_range.dart';import 'radar_get_attacks_layer3_top_industries_response_result_meta_units.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
@immutable final class RadarGetAttacksLayer3TopIndustriesResponseResultMetaNormalization {const RadarGetAttacksLayer3TopIndustriesResponseResultMetaNormalization._(this.value);

factory RadarGetAttacksLayer3TopIndustriesResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetAttacksLayer3TopIndustriesResponseResultMetaNormalization._(json),
}; }

static const RadarGetAttacksLayer3TopIndustriesResponseResultMetaNormalization percentage = RadarGetAttacksLayer3TopIndustriesResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetAttacksLayer3TopIndustriesResponseResultMetaNormalization min0Max = RadarGetAttacksLayer3TopIndustriesResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetAttacksLayer3TopIndustriesResponseResultMetaNormalization minMax = RadarGetAttacksLayer3TopIndustriesResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetAttacksLayer3TopIndustriesResponseResultMetaNormalization rawValues = RadarGetAttacksLayer3TopIndustriesResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetAttacksLayer3TopIndustriesResponseResultMetaNormalization percentageChange = RadarGetAttacksLayer3TopIndustriesResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetAttacksLayer3TopIndustriesResponseResultMetaNormalization rollingAverage = RadarGetAttacksLayer3TopIndustriesResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetAttacksLayer3TopIndustriesResponseResultMetaNormalization overlappedPercentage = RadarGetAttacksLayer3TopIndustriesResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetAttacksLayer3TopIndustriesResponseResultMetaNormalization ratio = RadarGetAttacksLayer3TopIndustriesResponseResultMetaNormalization._('RATIO');

static const List<RadarGetAttacksLayer3TopIndustriesResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer3TopIndustriesResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer3TopIndustriesResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
@immutable final class RadarGetAttacksLayer3TopIndustriesResponseResultMeta {const RadarGetAttacksLayer3TopIndustriesResponseResultMeta({required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetAttacksLayer3TopIndustriesResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer3TopIndustriesResponseResultMeta(
  confidenceInfo: json['confidenceInfo'] != null ? RadarGetAttacksLayer3TopIndustriesResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>) : null,
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetAttacksLayer3TopIndustriesResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetAttacksLayer3TopIndustriesResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetAttacksLayer3TopIndustriesResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

final RadarGetAttacksLayer3TopIndustriesResponseResultMetaConfidenceInfo? confidenceInfo;

final List<RadarGetAttacksLayer3TopIndustriesResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetAttacksLayer3TopIndustriesResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetAttacksLayer3TopIndustriesResponseResultMetaUnits> units;

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
RadarGetAttacksLayer3TopIndustriesResponseResultMeta copyWith({RadarGetAttacksLayer3TopIndustriesResponseResultMetaConfidenceInfo? Function()? confidenceInfo, List<RadarGetAttacksLayer3TopIndustriesResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetAttacksLayer3TopIndustriesResponseResultMetaNormalization? normalization, List<RadarGetAttacksLayer3TopIndustriesResponseResultMetaUnits>? units, }) { return RadarGetAttacksLayer3TopIndustriesResponseResultMeta(
  confidenceInfo: confidenceInfo != null ? confidenceInfo() : this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer3TopIndustriesResponseResultMeta &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetAttacksLayer3TopIndustriesResponseResultMeta(confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
