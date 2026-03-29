// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_netflows_top_locations_response_result_meta_confidence_info.dart';import 'radar_get_netflows_top_locations_response_result_meta_date_range.dart';import 'radar_get_netflows_top_locations_response_result_meta_units.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final class RadarGetNetflowsTopLocationsResponseResultMetaNormalization {const RadarGetNetflowsTopLocationsResponseResultMetaNormalization._(this.value);

factory RadarGetNetflowsTopLocationsResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetNetflowsTopLocationsResponseResultMetaNormalization._(json),
}; }

static const RadarGetNetflowsTopLocationsResponseResultMetaNormalization percentage = RadarGetNetflowsTopLocationsResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetNetflowsTopLocationsResponseResultMetaNormalization min0Max = RadarGetNetflowsTopLocationsResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetNetflowsTopLocationsResponseResultMetaNormalization minMax = RadarGetNetflowsTopLocationsResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetNetflowsTopLocationsResponseResultMetaNormalization rawValues = RadarGetNetflowsTopLocationsResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetNetflowsTopLocationsResponseResultMetaNormalization percentageChange = RadarGetNetflowsTopLocationsResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetNetflowsTopLocationsResponseResultMetaNormalization rollingAverage = RadarGetNetflowsTopLocationsResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetNetflowsTopLocationsResponseResultMetaNormalization overlappedPercentage = RadarGetNetflowsTopLocationsResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetNetflowsTopLocationsResponseResultMetaNormalization ratio = RadarGetNetflowsTopLocationsResponseResultMetaNormalization._('RATIO');

static const List<RadarGetNetflowsTopLocationsResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetNetflowsTopLocationsResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetNetflowsTopLocationsResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
final class RadarGetNetflowsTopLocationsResponseResultMeta {const RadarGetNetflowsTopLocationsResponseResultMeta({required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetNetflowsTopLocationsResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetNetflowsTopLocationsResponseResultMeta(
  confidenceInfo: json['confidenceInfo'] != null ? RadarGetNetflowsTopLocationsResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>) : null,
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetNetflowsTopLocationsResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetNetflowsTopLocationsResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetNetflowsTopLocationsResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

final RadarGetNetflowsTopLocationsResponseResultMetaConfidenceInfo? confidenceInfo;

final List<RadarGetNetflowsTopLocationsResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetNetflowsTopLocationsResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetNetflowsTopLocationsResponseResultMetaUnits> units;

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
RadarGetNetflowsTopLocationsResponseResultMeta copyWith({RadarGetNetflowsTopLocationsResponseResultMetaConfidenceInfo? Function()? confidenceInfo, List<RadarGetNetflowsTopLocationsResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetNetflowsTopLocationsResponseResultMetaNormalization? normalization, List<RadarGetNetflowsTopLocationsResponseResultMetaUnits>? units, }) { return RadarGetNetflowsTopLocationsResponseResultMeta(
  confidenceInfo: confidenceInfo != null ? confidenceInfo() : this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetNetflowsTopLocationsResponseResultMeta &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetNetflowsTopLocationsResponseResultMeta(confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
