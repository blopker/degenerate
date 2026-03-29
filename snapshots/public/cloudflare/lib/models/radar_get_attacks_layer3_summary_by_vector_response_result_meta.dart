// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_attacks_layer3_summary_by_vector_response_result_meta_confidence_info.dart';import 'radar_get_attacks_layer3_summary_by_vector_response_result_meta_date_range.dart';import 'radar_get_attacks_layer3_summary_by_vector_response_result_meta_units.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final class RadarGetAttacksLayer3SummaryByVectorResponseResultMetaNormalization {const RadarGetAttacksLayer3SummaryByVectorResponseResultMetaNormalization._(this.value);

factory RadarGetAttacksLayer3SummaryByVectorResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetAttacksLayer3SummaryByVectorResponseResultMetaNormalization._(json),
}; }

static const RadarGetAttacksLayer3SummaryByVectorResponseResultMetaNormalization percentage = RadarGetAttacksLayer3SummaryByVectorResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetAttacksLayer3SummaryByVectorResponseResultMetaNormalization min0Max = RadarGetAttacksLayer3SummaryByVectorResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetAttacksLayer3SummaryByVectorResponseResultMetaNormalization minMax = RadarGetAttacksLayer3SummaryByVectorResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetAttacksLayer3SummaryByVectorResponseResultMetaNormalization rawValues = RadarGetAttacksLayer3SummaryByVectorResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetAttacksLayer3SummaryByVectorResponseResultMetaNormalization percentageChange = RadarGetAttacksLayer3SummaryByVectorResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetAttacksLayer3SummaryByVectorResponseResultMetaNormalization rollingAverage = RadarGetAttacksLayer3SummaryByVectorResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetAttacksLayer3SummaryByVectorResponseResultMetaNormalization overlappedPercentage = RadarGetAttacksLayer3SummaryByVectorResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetAttacksLayer3SummaryByVectorResponseResultMetaNormalization ratio = RadarGetAttacksLayer3SummaryByVectorResponseResultMetaNormalization._('RATIO');

static const List<RadarGetAttacksLayer3SummaryByVectorResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetAttacksLayer3SummaryByVectorResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetAttacksLayer3SummaryByVectorResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
final class RadarGetAttacksLayer3SummaryByVectorResponseResultMeta {const RadarGetAttacksLayer3SummaryByVectorResponseResultMeta({required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetAttacksLayer3SummaryByVectorResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer3SummaryByVectorResponseResultMeta(
  confidenceInfo: RadarGetAttacksLayer3SummaryByVectorResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetAttacksLayer3SummaryByVectorResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetAttacksLayer3SummaryByVectorResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetAttacksLayer3SummaryByVectorResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

final RadarGetAttacksLayer3SummaryByVectorResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetAttacksLayer3SummaryByVectorResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetAttacksLayer3SummaryByVectorResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetAttacksLayer3SummaryByVectorResponseResultMetaUnits> units;

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
RadarGetAttacksLayer3SummaryByVectorResponseResultMeta copyWith({RadarGetAttacksLayer3SummaryByVectorResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetAttacksLayer3SummaryByVectorResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetAttacksLayer3SummaryByVectorResponseResultMetaNormalization? normalization, List<RadarGetAttacksLayer3SummaryByVectorResponseResultMetaUnits>? units, }) { return RadarGetAttacksLayer3SummaryByVectorResponseResultMeta(
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer3SummaryByVectorResponseResultMeta &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetAttacksLayer3SummaryByVectorResponseResultMeta(confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
