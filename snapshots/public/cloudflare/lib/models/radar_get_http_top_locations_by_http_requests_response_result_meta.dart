// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_http_top_locations_by_http_requests_response_result_meta_confidence_info.dart';import 'radar_get_http_top_locations_by_http_requests_response_result_meta_date_range.dart';import 'radar_get_http_top_locations_by_http_requests_response_result_meta_units.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
@immutable final class RadarGetHttpTopLocationsByHttpRequestsResponseResultMetaNormalization {const RadarGetHttpTopLocationsByHttpRequestsResponseResultMetaNormalization._(this.value);

factory RadarGetHttpTopLocationsByHttpRequestsResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetHttpTopLocationsByHttpRequestsResponseResultMetaNormalization._(json),
}; }

static const RadarGetHttpTopLocationsByHttpRequestsResponseResultMetaNormalization percentage = RadarGetHttpTopLocationsByHttpRequestsResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetHttpTopLocationsByHttpRequestsResponseResultMetaNormalization min0Max = RadarGetHttpTopLocationsByHttpRequestsResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetHttpTopLocationsByHttpRequestsResponseResultMetaNormalization minMax = RadarGetHttpTopLocationsByHttpRequestsResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetHttpTopLocationsByHttpRequestsResponseResultMetaNormalization rawValues = RadarGetHttpTopLocationsByHttpRequestsResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetHttpTopLocationsByHttpRequestsResponseResultMetaNormalization percentageChange = RadarGetHttpTopLocationsByHttpRequestsResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetHttpTopLocationsByHttpRequestsResponseResultMetaNormalization rollingAverage = RadarGetHttpTopLocationsByHttpRequestsResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetHttpTopLocationsByHttpRequestsResponseResultMetaNormalization overlappedPercentage = RadarGetHttpTopLocationsByHttpRequestsResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetHttpTopLocationsByHttpRequestsResponseResultMetaNormalization ratio = RadarGetHttpTopLocationsByHttpRequestsResponseResultMetaNormalization._('RATIO');

static const List<RadarGetHttpTopLocationsByHttpRequestsResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByHttpRequestsResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByHttpRequestsResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
@immutable final class RadarGetHttpTopLocationsByHttpRequestsResponseResultMeta {const RadarGetHttpTopLocationsByHttpRequestsResponseResultMeta({required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetHttpTopLocationsByHttpRequestsResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetHttpTopLocationsByHttpRequestsResponseResultMeta(
  confidenceInfo: json['confidenceInfo'] != null ? RadarGetHttpTopLocationsByHttpRequestsResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>) : null,
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetHttpTopLocationsByHttpRequestsResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetHttpTopLocationsByHttpRequestsResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetHttpTopLocationsByHttpRequestsResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

final RadarGetHttpTopLocationsByHttpRequestsResponseResultMetaConfidenceInfo? confidenceInfo;

final List<RadarGetHttpTopLocationsByHttpRequestsResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetHttpTopLocationsByHttpRequestsResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetHttpTopLocationsByHttpRequestsResponseResultMetaUnits> units;

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
RadarGetHttpTopLocationsByHttpRequestsResponseResultMeta copyWith({RadarGetHttpTopLocationsByHttpRequestsResponseResultMetaConfidenceInfo? Function()? confidenceInfo, List<RadarGetHttpTopLocationsByHttpRequestsResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetHttpTopLocationsByHttpRequestsResponseResultMetaNormalization? normalization, List<RadarGetHttpTopLocationsByHttpRequestsResponseResultMetaUnits>? units, }) { return RadarGetHttpTopLocationsByHttpRequestsResponseResultMeta(
  confidenceInfo: confidenceInfo != null ? confidenceInfo() : this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTopLocationsByHttpRequestsResponseResultMeta &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetHttpTopLocationsByHttpRequestsResponseResultMeta(confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
