// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_http_top_browser_families_response_result_meta_confidence_info.dart';import 'radar_get_http_top_browser_families_response_result_meta_date_range.dart';import 'radar_get_http_top_browser_families_response_result_meta_units.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final class RadarGetHttpTopBrowserFamiliesResponseResultMetaNormalization {const RadarGetHttpTopBrowserFamiliesResponseResultMetaNormalization._(this.value);

factory RadarGetHttpTopBrowserFamiliesResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetHttpTopBrowserFamiliesResponseResultMetaNormalization._(json),
}; }

static const RadarGetHttpTopBrowserFamiliesResponseResultMetaNormalization percentage = RadarGetHttpTopBrowserFamiliesResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetHttpTopBrowserFamiliesResponseResultMetaNormalization min0Max = RadarGetHttpTopBrowserFamiliesResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetHttpTopBrowserFamiliesResponseResultMetaNormalization minMax = RadarGetHttpTopBrowserFamiliesResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetHttpTopBrowserFamiliesResponseResultMetaNormalization rawValues = RadarGetHttpTopBrowserFamiliesResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetHttpTopBrowserFamiliesResponseResultMetaNormalization percentageChange = RadarGetHttpTopBrowserFamiliesResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetHttpTopBrowserFamiliesResponseResultMetaNormalization rollingAverage = RadarGetHttpTopBrowserFamiliesResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetHttpTopBrowserFamiliesResponseResultMetaNormalization overlappedPercentage = RadarGetHttpTopBrowserFamiliesResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetHttpTopBrowserFamiliesResponseResultMetaNormalization ratio = RadarGetHttpTopBrowserFamiliesResponseResultMetaNormalization._('RATIO');

static const List<RadarGetHttpTopBrowserFamiliesResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopBrowserFamiliesResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopBrowserFamiliesResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
final class RadarGetHttpTopBrowserFamiliesResponseResultMeta {const RadarGetHttpTopBrowserFamiliesResponseResultMeta({required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetHttpTopBrowserFamiliesResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetHttpTopBrowserFamiliesResponseResultMeta(
  confidenceInfo: json['confidenceInfo'] != null ? RadarGetHttpTopBrowserFamiliesResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>) : null,
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetHttpTopBrowserFamiliesResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetHttpTopBrowserFamiliesResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetHttpTopBrowserFamiliesResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

final RadarGetHttpTopBrowserFamiliesResponseResultMetaConfidenceInfo? confidenceInfo;

final List<RadarGetHttpTopBrowserFamiliesResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetHttpTopBrowserFamiliesResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetHttpTopBrowserFamiliesResponseResultMetaUnits> units;

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
RadarGetHttpTopBrowserFamiliesResponseResultMeta copyWith({RadarGetHttpTopBrowserFamiliesResponseResultMetaConfidenceInfo? Function()? confidenceInfo, List<RadarGetHttpTopBrowserFamiliesResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetHttpTopBrowserFamiliesResponseResultMetaNormalization? normalization, List<RadarGetHttpTopBrowserFamiliesResponseResultMetaUnits>? units, }) { return RadarGetHttpTopBrowserFamiliesResponseResultMeta(
  confidenceInfo: confidenceInfo != null ? confidenceInfo() : this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTopBrowserFamiliesResponseResultMeta &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetHttpTopBrowserFamiliesResponseResultMeta(confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
