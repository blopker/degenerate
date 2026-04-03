// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_http_top_locations_by_http_version_response_result_meta_confidence_info.dart';import 'radar_get_http_top_locations_by_http_version_response_result_meta_date_range.dart';import 'radar_get_http_top_locations_by_http_version_response_result_meta_units.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
@immutable final class RadarGetHttpTopLocationsByHttpVersionResponseResultMetaNormalization {const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaNormalization._(this.value);

factory RadarGetHttpTopLocationsByHttpVersionResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetHttpTopLocationsByHttpVersionResponseResultMetaNormalization._(json),
}; }

static const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaNormalization percentage = RadarGetHttpTopLocationsByHttpVersionResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaNormalization min0Max = RadarGetHttpTopLocationsByHttpVersionResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaNormalization minMax = RadarGetHttpTopLocationsByHttpVersionResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaNormalization rawValues = RadarGetHttpTopLocationsByHttpVersionResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaNormalization percentageChange = RadarGetHttpTopLocationsByHttpVersionResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaNormalization rollingAverage = RadarGetHttpTopLocationsByHttpVersionResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaNormalization overlappedPercentage = RadarGetHttpTopLocationsByHttpVersionResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetHttpTopLocationsByHttpVersionResponseResultMetaNormalization ratio = RadarGetHttpTopLocationsByHttpVersionResponseResultMetaNormalization._('RATIO');

static const List<RadarGetHttpTopLocationsByHttpVersionResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByHttpVersionResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByHttpVersionResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
@immutable final class RadarGetHttpTopLocationsByHttpVersionResponseResultMeta {const RadarGetHttpTopLocationsByHttpVersionResponseResultMeta({required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetHttpTopLocationsByHttpVersionResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetHttpTopLocationsByHttpVersionResponseResultMeta(
  confidenceInfo: json['confidenceInfo'] != null ? RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>) : null,
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetHttpTopLocationsByHttpVersionResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetHttpTopLocationsByHttpVersionResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetHttpTopLocationsByHttpVersionResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

final RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfo? confidenceInfo;

final List<RadarGetHttpTopLocationsByHttpVersionResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetHttpTopLocationsByHttpVersionResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetHttpTopLocationsByHttpVersionResponseResultMetaUnits> units;

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
RadarGetHttpTopLocationsByHttpVersionResponseResultMeta copyWith({RadarGetHttpTopLocationsByHttpVersionResponseResultMetaConfidenceInfo? Function()? confidenceInfo, List<RadarGetHttpTopLocationsByHttpVersionResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetHttpTopLocationsByHttpVersionResponseResultMetaNormalization? normalization, List<RadarGetHttpTopLocationsByHttpVersionResponseResultMetaUnits>? units, }) { return RadarGetHttpTopLocationsByHttpVersionResponseResultMeta(
  confidenceInfo: confidenceInfo != null ? confidenceInfo() : this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTopLocationsByHttpVersionResponseResultMeta &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetHttpTopLocationsByHttpVersionResponseResultMeta(confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
