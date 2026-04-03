// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_email_security_summary_by_spf_response_result_meta_confidence_info.dart';import 'radar_get_email_security_summary_by_spf_response_result_meta_date_range.dart';import 'radar_get_email_security_summary_by_spf_response_result_meta_units.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
@immutable final class RadarGetEmailSecuritySummaryBySpfResponseResultMetaNormalization {const RadarGetEmailSecuritySummaryBySpfResponseResultMetaNormalization._(this.value);

factory RadarGetEmailSecuritySummaryBySpfResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetEmailSecuritySummaryBySpfResponseResultMetaNormalization._(json),
}; }

static const RadarGetEmailSecuritySummaryBySpfResponseResultMetaNormalization percentage = RadarGetEmailSecuritySummaryBySpfResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetEmailSecuritySummaryBySpfResponseResultMetaNormalization min0Max = RadarGetEmailSecuritySummaryBySpfResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetEmailSecuritySummaryBySpfResponseResultMetaNormalization minMax = RadarGetEmailSecuritySummaryBySpfResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetEmailSecuritySummaryBySpfResponseResultMetaNormalization rawValues = RadarGetEmailSecuritySummaryBySpfResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetEmailSecuritySummaryBySpfResponseResultMetaNormalization percentageChange = RadarGetEmailSecuritySummaryBySpfResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetEmailSecuritySummaryBySpfResponseResultMetaNormalization rollingAverage = RadarGetEmailSecuritySummaryBySpfResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetEmailSecuritySummaryBySpfResponseResultMetaNormalization overlappedPercentage = RadarGetEmailSecuritySummaryBySpfResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetEmailSecuritySummaryBySpfResponseResultMetaNormalization ratio = RadarGetEmailSecuritySummaryBySpfResponseResultMetaNormalization._('RATIO');

static const List<RadarGetEmailSecuritySummaryBySpfResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecuritySummaryBySpfResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecuritySummaryBySpfResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
@immutable final class RadarGetEmailSecuritySummaryBySpfResponseResultMeta {const RadarGetEmailSecuritySummaryBySpfResponseResultMeta({required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetEmailSecuritySummaryBySpfResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetEmailSecuritySummaryBySpfResponseResultMeta(
  confidenceInfo: RadarGetEmailSecuritySummaryBySpfResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetEmailSecuritySummaryBySpfResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetEmailSecuritySummaryBySpfResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetEmailSecuritySummaryBySpfResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

final RadarGetEmailSecuritySummaryBySpfResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetEmailSecuritySummaryBySpfResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetEmailSecuritySummaryBySpfResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetEmailSecuritySummaryBySpfResponseResultMetaUnits> units;

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
RadarGetEmailSecuritySummaryBySpfResponseResultMeta copyWith({RadarGetEmailSecuritySummaryBySpfResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetEmailSecuritySummaryBySpfResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetEmailSecuritySummaryBySpfResponseResultMetaNormalization? normalization, List<RadarGetEmailSecuritySummaryBySpfResponseResultMetaUnits>? units, }) { return RadarGetEmailSecuritySummaryBySpfResponseResultMeta(
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailSecuritySummaryBySpfResponseResultMeta &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetEmailSecuritySummaryBySpfResponseResultMeta(confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
