// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_http_top_locations_by_browser_family_response_result_meta_confidence_info.dart';import 'radar_get_http_top_locations_by_browser_family_response_result_meta_date_range.dart';import 'radar_get_http_top_locations_by_browser_family_response_result_meta_units.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
@immutable final class RadarGetHttpTopLocationsByBrowserFamilyResponseResultMetaNormalization {const RadarGetHttpTopLocationsByBrowserFamilyResponseResultMetaNormalization._(this.value);

factory RadarGetHttpTopLocationsByBrowserFamilyResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetHttpTopLocationsByBrowserFamilyResponseResultMetaNormalization._(json),
}; }

static const RadarGetHttpTopLocationsByBrowserFamilyResponseResultMetaNormalization percentage = RadarGetHttpTopLocationsByBrowserFamilyResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetHttpTopLocationsByBrowserFamilyResponseResultMetaNormalization min0Max = RadarGetHttpTopLocationsByBrowserFamilyResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetHttpTopLocationsByBrowserFamilyResponseResultMetaNormalization minMax = RadarGetHttpTopLocationsByBrowserFamilyResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetHttpTopLocationsByBrowserFamilyResponseResultMetaNormalization rawValues = RadarGetHttpTopLocationsByBrowserFamilyResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetHttpTopLocationsByBrowserFamilyResponseResultMetaNormalization percentageChange = RadarGetHttpTopLocationsByBrowserFamilyResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetHttpTopLocationsByBrowserFamilyResponseResultMetaNormalization rollingAverage = RadarGetHttpTopLocationsByBrowserFamilyResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetHttpTopLocationsByBrowserFamilyResponseResultMetaNormalization overlappedPercentage = RadarGetHttpTopLocationsByBrowserFamilyResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetHttpTopLocationsByBrowserFamilyResponseResultMetaNormalization ratio = RadarGetHttpTopLocationsByBrowserFamilyResponseResultMetaNormalization._('RATIO');

static const List<RadarGetHttpTopLocationsByBrowserFamilyResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByBrowserFamilyResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByBrowserFamilyResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
@immutable final class RadarGetHttpTopLocationsByBrowserFamilyResponseResultMeta {const RadarGetHttpTopLocationsByBrowserFamilyResponseResultMeta({required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetHttpTopLocationsByBrowserFamilyResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetHttpTopLocationsByBrowserFamilyResponseResultMeta(
  confidenceInfo: json['confidenceInfo'] != null ? RadarGetHttpTopLocationsByBrowserFamilyResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>) : null,
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetHttpTopLocationsByBrowserFamilyResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetHttpTopLocationsByBrowserFamilyResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetHttpTopLocationsByBrowserFamilyResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

final RadarGetHttpTopLocationsByBrowserFamilyResponseResultMetaConfidenceInfo? confidenceInfo;

final List<RadarGetHttpTopLocationsByBrowserFamilyResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetHttpTopLocationsByBrowserFamilyResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetHttpTopLocationsByBrowserFamilyResponseResultMetaUnits> units;

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
RadarGetHttpTopLocationsByBrowserFamilyResponseResultMeta copyWith({RadarGetHttpTopLocationsByBrowserFamilyResponseResultMetaConfidenceInfo? Function()? confidenceInfo, List<RadarGetHttpTopLocationsByBrowserFamilyResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetHttpTopLocationsByBrowserFamilyResponseResultMetaNormalization? normalization, List<RadarGetHttpTopLocationsByBrowserFamilyResponseResultMetaUnits>? units, }) { return RadarGetHttpTopLocationsByBrowserFamilyResponseResultMeta(
  confidenceInfo: confidenceInfo != null ? confidenceInfo() : this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTopLocationsByBrowserFamilyResponseResultMeta &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetHttpTopLocationsByBrowserFamilyResponseResultMeta(confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
