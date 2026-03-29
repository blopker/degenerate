// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_email_security_summary_by_dkim_response_result_meta_confidence_info.dart';import 'radar_get_email_security_summary_by_dkim_response_result_meta_date_range.dart';import 'radar_get_email_security_summary_by_dkim_response_result_meta_units.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final class RadarGetEmailSecuritySummaryByDkimResponseResultMetaNormalization {const RadarGetEmailSecuritySummaryByDkimResponseResultMetaNormalization._(this.value);

factory RadarGetEmailSecuritySummaryByDkimResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetEmailSecuritySummaryByDkimResponseResultMetaNormalization._(json),
}; }

static const RadarGetEmailSecuritySummaryByDkimResponseResultMetaNormalization percentage = RadarGetEmailSecuritySummaryByDkimResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetEmailSecuritySummaryByDkimResponseResultMetaNormalization min0Max = RadarGetEmailSecuritySummaryByDkimResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetEmailSecuritySummaryByDkimResponseResultMetaNormalization minMax = RadarGetEmailSecuritySummaryByDkimResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetEmailSecuritySummaryByDkimResponseResultMetaNormalization rawValues = RadarGetEmailSecuritySummaryByDkimResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetEmailSecuritySummaryByDkimResponseResultMetaNormalization percentageChange = RadarGetEmailSecuritySummaryByDkimResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetEmailSecuritySummaryByDkimResponseResultMetaNormalization rollingAverage = RadarGetEmailSecuritySummaryByDkimResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetEmailSecuritySummaryByDkimResponseResultMetaNormalization overlappedPercentage = RadarGetEmailSecuritySummaryByDkimResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetEmailSecuritySummaryByDkimResponseResultMetaNormalization ratio = RadarGetEmailSecuritySummaryByDkimResponseResultMetaNormalization._('RATIO');

static const List<RadarGetEmailSecuritySummaryByDkimResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecuritySummaryByDkimResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecuritySummaryByDkimResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
final class RadarGetEmailSecuritySummaryByDkimResponseResultMeta {const RadarGetEmailSecuritySummaryByDkimResponseResultMeta({required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetEmailSecuritySummaryByDkimResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetEmailSecuritySummaryByDkimResponseResultMeta(
  confidenceInfo: RadarGetEmailSecuritySummaryByDkimResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetEmailSecuritySummaryByDkimResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetEmailSecuritySummaryByDkimResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetEmailSecuritySummaryByDkimResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

final RadarGetEmailSecuritySummaryByDkimResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetEmailSecuritySummaryByDkimResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetEmailSecuritySummaryByDkimResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetEmailSecuritySummaryByDkimResponseResultMetaUnits> units;

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
RadarGetEmailSecuritySummaryByDkimResponseResultMeta copyWith({RadarGetEmailSecuritySummaryByDkimResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetEmailSecuritySummaryByDkimResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetEmailSecuritySummaryByDkimResponseResultMetaNormalization? normalization, List<RadarGetEmailSecuritySummaryByDkimResponseResultMetaUnits>? units, }) { return RadarGetEmailSecuritySummaryByDkimResponseResultMeta(
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailSecuritySummaryByDkimResponseResultMeta &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetEmailSecuritySummaryByDkimResponseResultMeta(confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
