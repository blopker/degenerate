// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_email_security_summary_by_spoof_response_result_meta_confidence_info.dart';import 'radar_get_email_security_summary_by_spoof_response_result_meta_date_range.dart';import 'radar_get_email_security_summary_by_spoof_response_result_meta_units.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
@immutable final class RadarGetEmailSecuritySummaryBySpoofResponseResultMetaNormalization {const RadarGetEmailSecuritySummaryBySpoofResponseResultMetaNormalization._(this.value);

factory RadarGetEmailSecuritySummaryBySpoofResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetEmailSecuritySummaryBySpoofResponseResultMetaNormalization._(json),
}; }

static const RadarGetEmailSecuritySummaryBySpoofResponseResultMetaNormalization percentage = RadarGetEmailSecuritySummaryBySpoofResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetEmailSecuritySummaryBySpoofResponseResultMetaNormalization min0Max = RadarGetEmailSecuritySummaryBySpoofResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetEmailSecuritySummaryBySpoofResponseResultMetaNormalization minMax = RadarGetEmailSecuritySummaryBySpoofResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetEmailSecuritySummaryBySpoofResponseResultMetaNormalization rawValues = RadarGetEmailSecuritySummaryBySpoofResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetEmailSecuritySummaryBySpoofResponseResultMetaNormalization percentageChange = RadarGetEmailSecuritySummaryBySpoofResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetEmailSecuritySummaryBySpoofResponseResultMetaNormalization rollingAverage = RadarGetEmailSecuritySummaryBySpoofResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetEmailSecuritySummaryBySpoofResponseResultMetaNormalization overlappedPercentage = RadarGetEmailSecuritySummaryBySpoofResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetEmailSecuritySummaryBySpoofResponseResultMetaNormalization ratio = RadarGetEmailSecuritySummaryBySpoofResponseResultMetaNormalization._('RATIO');

static const List<RadarGetEmailSecuritySummaryBySpoofResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecuritySummaryBySpoofResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecuritySummaryBySpoofResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
@immutable final class RadarGetEmailSecuritySummaryBySpoofResponseResultMeta {const RadarGetEmailSecuritySummaryBySpoofResponseResultMeta({required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetEmailSecuritySummaryBySpoofResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetEmailSecuritySummaryBySpoofResponseResultMeta(
  confidenceInfo: RadarGetEmailSecuritySummaryBySpoofResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetEmailSecuritySummaryBySpoofResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetEmailSecuritySummaryBySpoofResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetEmailSecuritySummaryBySpoofResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

final RadarGetEmailSecuritySummaryBySpoofResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetEmailSecuritySummaryBySpoofResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetEmailSecuritySummaryBySpoofResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetEmailSecuritySummaryBySpoofResponseResultMetaUnits> units;

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
RadarGetEmailSecuritySummaryBySpoofResponseResultMeta copyWith({RadarGetEmailSecuritySummaryBySpoofResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetEmailSecuritySummaryBySpoofResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetEmailSecuritySummaryBySpoofResponseResultMetaNormalization? normalization, List<RadarGetEmailSecuritySummaryBySpoofResponseResultMetaUnits>? units, }) { return RadarGetEmailSecuritySummaryBySpoofResponseResultMeta(
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailSecuritySummaryBySpoofResponseResultMeta &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetEmailSecuritySummaryBySpoofResponseResultMeta(confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
