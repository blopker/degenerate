// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_email_routing_summary_response_result_meta_confidence_info.dart';import 'radar_get_email_routing_summary_response_result_meta_date_range.dart';import 'radar_get_email_routing_summary_response_result_meta_units.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final class RadarGetEmailRoutingSummaryResponseResultMetaNormalization {const RadarGetEmailRoutingSummaryResponseResultMetaNormalization._(this.value);

factory RadarGetEmailRoutingSummaryResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetEmailRoutingSummaryResponseResultMetaNormalization._(json),
}; }

static const RadarGetEmailRoutingSummaryResponseResultMetaNormalization percentage = RadarGetEmailRoutingSummaryResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetEmailRoutingSummaryResponseResultMetaNormalization min0Max = RadarGetEmailRoutingSummaryResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetEmailRoutingSummaryResponseResultMetaNormalization minMax = RadarGetEmailRoutingSummaryResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetEmailRoutingSummaryResponseResultMetaNormalization rawValues = RadarGetEmailRoutingSummaryResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetEmailRoutingSummaryResponseResultMetaNormalization percentageChange = RadarGetEmailRoutingSummaryResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetEmailRoutingSummaryResponseResultMetaNormalization rollingAverage = RadarGetEmailRoutingSummaryResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetEmailRoutingSummaryResponseResultMetaNormalization overlappedPercentage = RadarGetEmailRoutingSummaryResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetEmailRoutingSummaryResponseResultMetaNormalization ratio = RadarGetEmailRoutingSummaryResponseResultMetaNormalization._('RATIO');

static const List<RadarGetEmailRoutingSummaryResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailRoutingSummaryResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailRoutingSummaryResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
final class RadarGetEmailRoutingSummaryResponseResultMeta {const RadarGetEmailRoutingSummaryResponseResultMeta({required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetEmailRoutingSummaryResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetEmailRoutingSummaryResponseResultMeta(
  confidenceInfo: RadarGetEmailRoutingSummaryResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetEmailRoutingSummaryResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetEmailRoutingSummaryResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetEmailRoutingSummaryResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

final RadarGetEmailRoutingSummaryResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetEmailRoutingSummaryResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetEmailRoutingSummaryResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetEmailRoutingSummaryResponseResultMetaUnits> units;

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
RadarGetEmailRoutingSummaryResponseResultMeta copyWith({RadarGetEmailRoutingSummaryResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetEmailRoutingSummaryResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetEmailRoutingSummaryResponseResultMetaNormalization? normalization, List<RadarGetEmailRoutingSummaryResponseResultMetaUnits>? units, }) { return RadarGetEmailRoutingSummaryResponseResultMeta(
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailRoutingSummaryResponseResultMeta &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetEmailRoutingSummaryResponseResultMeta(confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
