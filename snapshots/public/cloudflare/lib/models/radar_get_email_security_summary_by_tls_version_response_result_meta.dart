// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_email_security_summary_by_tls_version_response_result_meta_confidence_info.dart';import 'radar_get_email_security_summary_by_tls_version_response_result_meta_date_range.dart';import 'radar_get_email_security_summary_by_tls_version_response_result_meta_units.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final class RadarGetEmailSecuritySummaryByTlsVersionResponseResultMetaNormalization {const RadarGetEmailSecuritySummaryByTlsVersionResponseResultMetaNormalization._(this.value);

factory RadarGetEmailSecuritySummaryByTlsVersionResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetEmailSecuritySummaryByTlsVersionResponseResultMetaNormalization._(json),
}; }

static const RadarGetEmailSecuritySummaryByTlsVersionResponseResultMetaNormalization percentage = RadarGetEmailSecuritySummaryByTlsVersionResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetEmailSecuritySummaryByTlsVersionResponseResultMetaNormalization min0Max = RadarGetEmailSecuritySummaryByTlsVersionResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetEmailSecuritySummaryByTlsVersionResponseResultMetaNormalization minMax = RadarGetEmailSecuritySummaryByTlsVersionResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetEmailSecuritySummaryByTlsVersionResponseResultMetaNormalization rawValues = RadarGetEmailSecuritySummaryByTlsVersionResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetEmailSecuritySummaryByTlsVersionResponseResultMetaNormalization percentageChange = RadarGetEmailSecuritySummaryByTlsVersionResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetEmailSecuritySummaryByTlsVersionResponseResultMetaNormalization rollingAverage = RadarGetEmailSecuritySummaryByTlsVersionResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetEmailSecuritySummaryByTlsVersionResponseResultMetaNormalization overlappedPercentage = RadarGetEmailSecuritySummaryByTlsVersionResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetEmailSecuritySummaryByTlsVersionResponseResultMetaNormalization ratio = RadarGetEmailSecuritySummaryByTlsVersionResponseResultMetaNormalization._('RATIO');

static const List<RadarGetEmailSecuritySummaryByTlsVersionResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecuritySummaryByTlsVersionResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecuritySummaryByTlsVersionResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
final class RadarGetEmailSecuritySummaryByTlsVersionResponseResultMeta {const RadarGetEmailSecuritySummaryByTlsVersionResponseResultMeta({required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetEmailSecuritySummaryByTlsVersionResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetEmailSecuritySummaryByTlsVersionResponseResultMeta(
  confidenceInfo: RadarGetEmailSecuritySummaryByTlsVersionResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetEmailSecuritySummaryByTlsVersionResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetEmailSecuritySummaryByTlsVersionResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetEmailSecuritySummaryByTlsVersionResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

final RadarGetEmailSecuritySummaryByTlsVersionResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetEmailSecuritySummaryByTlsVersionResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetEmailSecuritySummaryByTlsVersionResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetEmailSecuritySummaryByTlsVersionResponseResultMetaUnits> units;

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
RadarGetEmailSecuritySummaryByTlsVersionResponseResultMeta copyWith({RadarGetEmailSecuritySummaryByTlsVersionResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetEmailSecuritySummaryByTlsVersionResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetEmailSecuritySummaryByTlsVersionResponseResultMetaNormalization? normalization, List<RadarGetEmailSecuritySummaryByTlsVersionResponseResultMetaUnits>? units, }) { return RadarGetEmailSecuritySummaryByTlsVersionResponseResultMeta(
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailSecuritySummaryByTlsVersionResponseResultMeta &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetEmailSecuritySummaryByTlsVersionResponseResultMeta(confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
