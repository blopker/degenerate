// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_robots_txt_top_domain_categories_by_files_parsed_response_result_meta_confidence_info.dart';import 'radar_get_robots_txt_top_domain_categories_by_files_parsed_response_result_meta_date_range.dart';import 'radar_get_robots_txt_top_domain_categories_by_files_parsed_response_result_meta_units.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final class RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMetaNormalization {const RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMetaNormalization._(this.value);

factory RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMetaNormalization._(json),
}; }

static const RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMetaNormalization percentage = RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMetaNormalization min0Max = RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMetaNormalization minMax = RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMetaNormalization rawValues = RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMetaNormalization percentageChange = RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMetaNormalization rollingAverage = RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMetaNormalization overlappedPercentage = RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMetaNormalization ratio = RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMetaNormalization._('RATIO');

static const List<RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
final class RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMeta {const RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMeta({required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMeta(
  confidenceInfo: json['confidenceInfo'] != null ? RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>) : null,
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

final RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMetaConfidenceInfo? confidenceInfo;

final List<RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMetaUnits> units;

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
RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMeta copyWith({RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMetaConfidenceInfo? Function()? confidenceInfo, List<RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMetaNormalization? normalization, List<RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMetaUnits>? units, }) { return RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMeta(
  confidenceInfo: confidenceInfo != null ? confidenceInfo() : this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMeta &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetRobotsTxtTopDomainCategoriesByFilesParsedResponseResultMeta(confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
