// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_email_routing_summary_by_arc_response_result_meta_confidence_info.dart';import 'radar_get_email_routing_summary_by_arc_response_result_meta_date_range.dart';import 'radar_get_email_routing_summary_by_arc_response_result_meta_units.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
@immutable final class RadarGetEmailRoutingSummaryByArcResponseResultMetaNormalization {const RadarGetEmailRoutingSummaryByArcResponseResultMetaNormalization._(this.value);

factory RadarGetEmailRoutingSummaryByArcResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetEmailRoutingSummaryByArcResponseResultMetaNormalization._(json),
}; }

static const RadarGetEmailRoutingSummaryByArcResponseResultMetaNormalization percentage = RadarGetEmailRoutingSummaryByArcResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetEmailRoutingSummaryByArcResponseResultMetaNormalization min0Max = RadarGetEmailRoutingSummaryByArcResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetEmailRoutingSummaryByArcResponseResultMetaNormalization minMax = RadarGetEmailRoutingSummaryByArcResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetEmailRoutingSummaryByArcResponseResultMetaNormalization rawValues = RadarGetEmailRoutingSummaryByArcResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetEmailRoutingSummaryByArcResponseResultMetaNormalization percentageChange = RadarGetEmailRoutingSummaryByArcResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetEmailRoutingSummaryByArcResponseResultMetaNormalization rollingAverage = RadarGetEmailRoutingSummaryByArcResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetEmailRoutingSummaryByArcResponseResultMetaNormalization overlappedPercentage = RadarGetEmailRoutingSummaryByArcResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetEmailRoutingSummaryByArcResponseResultMetaNormalization ratio = RadarGetEmailRoutingSummaryByArcResponseResultMetaNormalization._('RATIO');

static const List<RadarGetEmailRoutingSummaryByArcResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailRoutingSummaryByArcResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailRoutingSummaryByArcResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
@immutable final class RadarGetEmailRoutingSummaryByArcResponseResultMeta {const RadarGetEmailRoutingSummaryByArcResponseResultMeta({required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetEmailRoutingSummaryByArcResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetEmailRoutingSummaryByArcResponseResultMeta(
  confidenceInfo: RadarGetEmailRoutingSummaryByArcResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetEmailRoutingSummaryByArcResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetEmailRoutingSummaryByArcResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetEmailRoutingSummaryByArcResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

final RadarGetEmailRoutingSummaryByArcResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetEmailRoutingSummaryByArcResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetEmailRoutingSummaryByArcResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetEmailRoutingSummaryByArcResponseResultMetaUnits> units;

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
RadarGetEmailRoutingSummaryByArcResponseResultMeta copyWith({RadarGetEmailRoutingSummaryByArcResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetEmailRoutingSummaryByArcResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetEmailRoutingSummaryByArcResponseResultMetaNormalization? normalization, List<RadarGetEmailRoutingSummaryByArcResponseResultMetaUnits>? units, }) { return RadarGetEmailRoutingSummaryByArcResponseResultMeta(
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailRoutingSummaryByArcResponseResultMeta &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetEmailRoutingSummaryByArcResponseResultMeta(confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
