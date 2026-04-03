// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_verified_bots_top_categories_by_http_requests_response_result_meta_confidence_info.dart';import 'radar_get_verified_bots_top_categories_by_http_requests_response_result_meta_date_range.dart';import 'radar_get_verified_bots_top_categories_by_http_requests_response_result_meta_units.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
@immutable final class RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaNormalization {const RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaNormalization._(this.value);

factory RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaNormalization._(json),
}; }

static const RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaNormalization percentage = RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaNormalization min0Max = RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaNormalization minMax = RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaNormalization rawValues = RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaNormalization percentageChange = RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaNormalization rollingAverage = RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaNormalization overlappedPercentage = RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaNormalization ratio = RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaNormalization._('RATIO');

static const List<RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
@immutable final class RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMeta {const RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMeta({required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMeta(
  confidenceInfo: json['confidenceInfo'] != null ? RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>) : null,
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

final RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaConfidenceInfo? confidenceInfo;

final List<RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaUnits> units;

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
RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMeta copyWith({RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaConfidenceInfo? Function()? confidenceInfo, List<RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaNormalization? normalization, List<RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMetaUnits>? units, }) { return RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMeta(
  confidenceInfo: confidenceInfo != null ? confidenceInfo() : this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMeta &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetVerifiedBotsTopCategoriesByHttpRequestsResponseResultMeta(confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
