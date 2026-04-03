// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_http_top_locations_by_ip_version_response_result_meta_confidence_info.dart';import 'radar_get_http_top_locations_by_ip_version_response_result_meta_date_range.dart';import 'radar_get_http_top_locations_by_ip_version_response_result_meta_units.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
@immutable final class RadarGetHttpTopLocationsByIpVersionResponseResultMetaNormalization {const RadarGetHttpTopLocationsByIpVersionResponseResultMetaNormalization._(this.value);

factory RadarGetHttpTopLocationsByIpVersionResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetHttpTopLocationsByIpVersionResponseResultMetaNormalization._(json),
}; }

static const RadarGetHttpTopLocationsByIpVersionResponseResultMetaNormalization percentage = RadarGetHttpTopLocationsByIpVersionResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetHttpTopLocationsByIpVersionResponseResultMetaNormalization min0Max = RadarGetHttpTopLocationsByIpVersionResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetHttpTopLocationsByIpVersionResponseResultMetaNormalization minMax = RadarGetHttpTopLocationsByIpVersionResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetHttpTopLocationsByIpVersionResponseResultMetaNormalization rawValues = RadarGetHttpTopLocationsByIpVersionResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetHttpTopLocationsByIpVersionResponseResultMetaNormalization percentageChange = RadarGetHttpTopLocationsByIpVersionResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetHttpTopLocationsByIpVersionResponseResultMetaNormalization rollingAverage = RadarGetHttpTopLocationsByIpVersionResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetHttpTopLocationsByIpVersionResponseResultMetaNormalization overlappedPercentage = RadarGetHttpTopLocationsByIpVersionResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetHttpTopLocationsByIpVersionResponseResultMetaNormalization ratio = RadarGetHttpTopLocationsByIpVersionResponseResultMetaNormalization._('RATIO');

static const List<RadarGetHttpTopLocationsByIpVersionResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByIpVersionResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByIpVersionResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
@immutable final class RadarGetHttpTopLocationsByIpVersionResponseResultMeta {const RadarGetHttpTopLocationsByIpVersionResponseResultMeta({required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetHttpTopLocationsByIpVersionResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetHttpTopLocationsByIpVersionResponseResultMeta(
  confidenceInfo: json['confidenceInfo'] != null ? RadarGetHttpTopLocationsByIpVersionResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>) : null,
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetHttpTopLocationsByIpVersionResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetHttpTopLocationsByIpVersionResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetHttpTopLocationsByIpVersionResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

final RadarGetHttpTopLocationsByIpVersionResponseResultMetaConfidenceInfo? confidenceInfo;

final List<RadarGetHttpTopLocationsByIpVersionResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetHttpTopLocationsByIpVersionResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetHttpTopLocationsByIpVersionResponseResultMetaUnits> units;

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
RadarGetHttpTopLocationsByIpVersionResponseResultMeta copyWith({RadarGetHttpTopLocationsByIpVersionResponseResultMetaConfidenceInfo? Function()? confidenceInfo, List<RadarGetHttpTopLocationsByIpVersionResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetHttpTopLocationsByIpVersionResponseResultMetaNormalization? normalization, List<RadarGetHttpTopLocationsByIpVersionResponseResultMetaUnits>? units, }) { return RadarGetHttpTopLocationsByIpVersionResponseResultMeta(
  confidenceInfo: confidenceInfo != null ? confidenceInfo() : this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTopLocationsByIpVersionResponseResultMeta &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetHttpTopLocationsByIpVersionResponseResultMeta(confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
