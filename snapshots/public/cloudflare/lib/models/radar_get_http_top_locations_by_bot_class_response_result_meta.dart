// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_http_top_locations_by_bot_class_response_result_meta_confidence_info.dart';import 'radar_get_http_top_locations_by_bot_class_response_result_meta_date_range.dart';import 'radar_get_http_top_locations_by_bot_class_response_result_meta_units.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
@immutable final class RadarGetHttpTopLocationsByBotClassResponseResultMetaNormalization {const RadarGetHttpTopLocationsByBotClassResponseResultMetaNormalization._(this.value);

factory RadarGetHttpTopLocationsByBotClassResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetHttpTopLocationsByBotClassResponseResultMetaNormalization._(json),
}; }

static const RadarGetHttpTopLocationsByBotClassResponseResultMetaNormalization percentage = RadarGetHttpTopLocationsByBotClassResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetHttpTopLocationsByBotClassResponseResultMetaNormalization min0Max = RadarGetHttpTopLocationsByBotClassResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetHttpTopLocationsByBotClassResponseResultMetaNormalization minMax = RadarGetHttpTopLocationsByBotClassResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetHttpTopLocationsByBotClassResponseResultMetaNormalization rawValues = RadarGetHttpTopLocationsByBotClassResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetHttpTopLocationsByBotClassResponseResultMetaNormalization percentageChange = RadarGetHttpTopLocationsByBotClassResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetHttpTopLocationsByBotClassResponseResultMetaNormalization rollingAverage = RadarGetHttpTopLocationsByBotClassResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetHttpTopLocationsByBotClassResponseResultMetaNormalization overlappedPercentage = RadarGetHttpTopLocationsByBotClassResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetHttpTopLocationsByBotClassResponseResultMetaNormalization ratio = RadarGetHttpTopLocationsByBotClassResponseResultMetaNormalization._('RATIO');

static const List<RadarGetHttpTopLocationsByBotClassResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByBotClassResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByBotClassResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
@immutable final class RadarGetHttpTopLocationsByBotClassResponseResultMeta {const RadarGetHttpTopLocationsByBotClassResponseResultMeta({required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetHttpTopLocationsByBotClassResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetHttpTopLocationsByBotClassResponseResultMeta(
  confidenceInfo: json['confidenceInfo'] != null ? RadarGetHttpTopLocationsByBotClassResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>) : null,
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetHttpTopLocationsByBotClassResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetHttpTopLocationsByBotClassResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetHttpTopLocationsByBotClassResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

final RadarGetHttpTopLocationsByBotClassResponseResultMetaConfidenceInfo? confidenceInfo;

final List<RadarGetHttpTopLocationsByBotClassResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetHttpTopLocationsByBotClassResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetHttpTopLocationsByBotClassResponseResultMetaUnits> units;

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
RadarGetHttpTopLocationsByBotClassResponseResultMeta copyWith({RadarGetHttpTopLocationsByBotClassResponseResultMetaConfidenceInfo? Function()? confidenceInfo, List<RadarGetHttpTopLocationsByBotClassResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetHttpTopLocationsByBotClassResponseResultMetaNormalization? normalization, List<RadarGetHttpTopLocationsByBotClassResponseResultMetaUnits>? units, }) { return RadarGetHttpTopLocationsByBotClassResponseResultMeta(
  confidenceInfo: confidenceInfo != null ? confidenceInfo() : this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTopLocationsByBotClassResponseResultMeta &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetHttpTopLocationsByBotClassResponseResultMeta(confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
