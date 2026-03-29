// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_http_top_locations_by_tls_version_response_result_meta_confidence_info.dart';import 'radar_get_http_top_locations_by_tls_version_response_result_meta_date_range.dart';import 'radar_get_http_top_locations_by_tls_version_response_result_meta_units.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final class RadarGetHttpTopLocationsByTlsVersionResponseResultMetaNormalization {const RadarGetHttpTopLocationsByTlsVersionResponseResultMetaNormalization._(this.value);

factory RadarGetHttpTopLocationsByTlsVersionResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetHttpTopLocationsByTlsVersionResponseResultMetaNormalization._(json),
}; }

static const RadarGetHttpTopLocationsByTlsVersionResponseResultMetaNormalization percentage = RadarGetHttpTopLocationsByTlsVersionResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetHttpTopLocationsByTlsVersionResponseResultMetaNormalization min0Max = RadarGetHttpTopLocationsByTlsVersionResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetHttpTopLocationsByTlsVersionResponseResultMetaNormalization minMax = RadarGetHttpTopLocationsByTlsVersionResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetHttpTopLocationsByTlsVersionResponseResultMetaNormalization rawValues = RadarGetHttpTopLocationsByTlsVersionResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetHttpTopLocationsByTlsVersionResponseResultMetaNormalization percentageChange = RadarGetHttpTopLocationsByTlsVersionResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetHttpTopLocationsByTlsVersionResponseResultMetaNormalization rollingAverage = RadarGetHttpTopLocationsByTlsVersionResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetHttpTopLocationsByTlsVersionResponseResultMetaNormalization overlappedPercentage = RadarGetHttpTopLocationsByTlsVersionResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetHttpTopLocationsByTlsVersionResponseResultMetaNormalization ratio = RadarGetHttpTopLocationsByTlsVersionResponseResultMetaNormalization._('RATIO');

static const List<RadarGetHttpTopLocationsByTlsVersionResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetHttpTopLocationsByTlsVersionResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetHttpTopLocationsByTlsVersionResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
final class RadarGetHttpTopLocationsByTlsVersionResponseResultMeta {const RadarGetHttpTopLocationsByTlsVersionResponseResultMeta({required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetHttpTopLocationsByTlsVersionResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetHttpTopLocationsByTlsVersionResponseResultMeta(
  confidenceInfo: json['confidenceInfo'] != null ? RadarGetHttpTopLocationsByTlsVersionResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>) : null,
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetHttpTopLocationsByTlsVersionResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetHttpTopLocationsByTlsVersionResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetHttpTopLocationsByTlsVersionResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

final RadarGetHttpTopLocationsByTlsVersionResponseResultMetaConfidenceInfo? confidenceInfo;

final List<RadarGetHttpTopLocationsByTlsVersionResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetHttpTopLocationsByTlsVersionResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetHttpTopLocationsByTlsVersionResponseResultMetaUnits> units;

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
RadarGetHttpTopLocationsByTlsVersionResponseResultMeta copyWith({RadarGetHttpTopLocationsByTlsVersionResponseResultMetaConfidenceInfo? Function()? confidenceInfo, List<RadarGetHttpTopLocationsByTlsVersionResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetHttpTopLocationsByTlsVersionResponseResultMetaNormalization? normalization, List<RadarGetHttpTopLocationsByTlsVersionResponseResultMetaUnits>? units, }) { return RadarGetHttpTopLocationsByTlsVersionResponseResultMeta(
  confidenceInfo: confidenceInfo != null ? confidenceInfo() : this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpTopLocationsByTlsVersionResponseResultMeta &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetHttpTopLocationsByTlsVersionResponseResultMeta(confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
