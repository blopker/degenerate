// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_http_top_browsers_response_result_meta_confidence_info.dart';import 'radar_get_http_top_browsers_response_result_meta_date_range.dart';import 'radar_get_http_top_browsers_response_result_meta_units.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final class RadarGetHttpTopBrowsersResponseResultMetaNormalization {const RadarGetHttpTopBrowsersResponseResultMetaNormalization._(this.value);

factory RadarGetHttpTopBrowsersResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetHttpTopBrowsersResponseResultMetaNormalization._(json),
}; }

static const RadarGetHttpTopBrowsersResponseResultMetaNormalization percentage = RadarGetHttpTopBrowsersResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetHttpTopBrowsersResponseResultMetaNormalization min0Max = RadarGetHttpTopBrowsersResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetHttpTopBrowsersResponseResultMetaNormalization minMax = RadarGetHttpTopBrowsersResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetHttpTopBrowsersResponseResultMetaNormalization rawValues = RadarGetHttpTopBrowsersResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetHttpTopBrowsersResponseResultMetaNormalization percentageChange = RadarGetHttpTopBrowsersResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetHttpTopBrowsersResponseResultMetaNormalization rollingAverage = RadarGetHttpTopBrowsersResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetHttpTopBrowsersResponseResultMetaNormalization overlappedPercentage = RadarGetHttpTopBrowsersResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetHttpTopBrowsersResponseResultMetaNormalization ratio = RadarGetHttpTopBrowsersResponseResultMetaNormalization._('RATIO');

static const List<RadarGetHttpTopBrowsersResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopBrowsersResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopBrowsersResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
final class RadarGetHttpTopBrowsersResponseResultMeta {const RadarGetHttpTopBrowsersResponseResultMeta({required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetHttpTopBrowsersResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetHttpTopBrowsersResponseResultMeta(
  confidenceInfo: json['confidenceInfo'] != null ? RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>) : null,
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetHttpTopBrowsersResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetHttpTopBrowsersResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetHttpTopBrowsersResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

final RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfo? confidenceInfo;

final List<RadarGetHttpTopBrowsersResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetHttpTopBrowsersResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetHttpTopBrowsersResponseResultMetaUnits> units;

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
RadarGetHttpTopBrowsersResponseResultMeta copyWith({RadarGetHttpTopBrowsersResponseResultMetaConfidenceInfo? Function()? confidenceInfo, List<RadarGetHttpTopBrowsersResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetHttpTopBrowsersResponseResultMetaNormalization? normalization, List<RadarGetHttpTopBrowsersResponseResultMetaUnits>? units, }) { return RadarGetHttpTopBrowsersResponseResultMeta(
  confidenceInfo: confidenceInfo != null ? confidenceInfo() : this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTopBrowsersResponseResultMeta &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetHttpTopBrowsersResponseResultMeta(confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
