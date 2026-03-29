// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_http_summary_by_operating_system_response_result_meta_confidence_info.dart';import 'radar_get_http_summary_by_operating_system_response_result_meta_date_range.dart';import 'radar_get_http_summary_by_operating_system_response_result_meta_units.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final class RadarGetHttpSummaryByOperatingSystemResponseResultMetaNormalization {const RadarGetHttpSummaryByOperatingSystemResponseResultMetaNormalization._(this.value);

factory RadarGetHttpSummaryByOperatingSystemResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetHttpSummaryByOperatingSystemResponseResultMetaNormalization._(json),
}; }

static const RadarGetHttpSummaryByOperatingSystemResponseResultMetaNormalization percentage = RadarGetHttpSummaryByOperatingSystemResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetHttpSummaryByOperatingSystemResponseResultMetaNormalization min0Max = RadarGetHttpSummaryByOperatingSystemResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetHttpSummaryByOperatingSystemResponseResultMetaNormalization minMax = RadarGetHttpSummaryByOperatingSystemResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetHttpSummaryByOperatingSystemResponseResultMetaNormalization rawValues = RadarGetHttpSummaryByOperatingSystemResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetHttpSummaryByOperatingSystemResponseResultMetaNormalization percentageChange = RadarGetHttpSummaryByOperatingSystemResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetHttpSummaryByOperatingSystemResponseResultMetaNormalization rollingAverage = RadarGetHttpSummaryByOperatingSystemResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetHttpSummaryByOperatingSystemResponseResultMetaNormalization overlappedPercentage = RadarGetHttpSummaryByOperatingSystemResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetHttpSummaryByOperatingSystemResponseResultMetaNormalization ratio = RadarGetHttpSummaryByOperatingSystemResponseResultMetaNormalization._('RATIO');

static const List<RadarGetHttpSummaryByOperatingSystemResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpSummaryByOperatingSystemResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpSummaryByOperatingSystemResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
final class RadarGetHttpSummaryByOperatingSystemResponseResultMeta {const RadarGetHttpSummaryByOperatingSystemResponseResultMeta({required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetHttpSummaryByOperatingSystemResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetHttpSummaryByOperatingSystemResponseResultMeta(
  confidenceInfo: RadarGetHttpSummaryByOperatingSystemResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetHttpSummaryByOperatingSystemResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetHttpSummaryByOperatingSystemResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetHttpSummaryByOperatingSystemResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

final RadarGetHttpSummaryByOperatingSystemResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetHttpSummaryByOperatingSystemResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetHttpSummaryByOperatingSystemResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetHttpSummaryByOperatingSystemResponseResultMetaUnits> units;

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
RadarGetHttpSummaryByOperatingSystemResponseResultMeta copyWith({RadarGetHttpSummaryByOperatingSystemResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetHttpSummaryByOperatingSystemResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetHttpSummaryByOperatingSystemResponseResultMetaNormalization? normalization, List<RadarGetHttpSummaryByOperatingSystemResponseResultMetaUnits>? units, }) { return RadarGetHttpSummaryByOperatingSystemResponseResultMeta(
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpSummaryByOperatingSystemResponseResultMeta &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetHttpSummaryByOperatingSystemResponseResultMeta(confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
