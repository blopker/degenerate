// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_email_security_summary_by_threat_category_response_result_meta_confidence_info.dart';import 'radar_get_email_security_summary_by_threat_category_response_result_meta_date_range.dart';import 'radar_get_email_security_summary_by_threat_category_response_result_meta_units.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final class RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMetaNormalization {const RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMetaNormalization._(this.value);

factory RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMetaNormalization._(json),
}; }

static const RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMetaNormalization percentage = RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMetaNormalization min0Max = RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMetaNormalization minMax = RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMetaNormalization rawValues = RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMetaNormalization percentageChange = RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMetaNormalization rollingAverage = RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMetaNormalization overlappedPercentage = RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMetaNormalization ratio = RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMetaNormalization._('RATIO');

static const List<RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
final class RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMeta {const RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMeta({required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMeta(
  confidenceInfo: RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

final RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMetaUnits> units;

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
RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMeta copyWith({RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMetaNormalization? normalization, List<RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMetaUnits>? units, }) { return RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMeta(
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMeta &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetEmailSecuritySummaryByThreatCategoryResponseResultMeta(confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
