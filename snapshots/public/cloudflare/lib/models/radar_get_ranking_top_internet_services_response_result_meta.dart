// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_ranking_top_internet_services_response_result_meta_confidence_info.dart';import 'radar_get_ranking_top_internet_services_response_result_meta_date_range.dart';import 'radar_get_ranking_top_internet_services_response_result_meta_units.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final class RadarGetRankingTopInternetServicesResponseResultMetaNormalization {const RadarGetRankingTopInternetServicesResponseResultMetaNormalization._(this.value);

factory RadarGetRankingTopInternetServicesResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetRankingTopInternetServicesResponseResultMetaNormalization._(json),
}; }

static const RadarGetRankingTopInternetServicesResponseResultMetaNormalization percentage = RadarGetRankingTopInternetServicesResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetRankingTopInternetServicesResponseResultMetaNormalization min0Max = RadarGetRankingTopInternetServicesResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetRankingTopInternetServicesResponseResultMetaNormalization minMax = RadarGetRankingTopInternetServicesResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetRankingTopInternetServicesResponseResultMetaNormalization rawValues = RadarGetRankingTopInternetServicesResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetRankingTopInternetServicesResponseResultMetaNormalization percentageChange = RadarGetRankingTopInternetServicesResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetRankingTopInternetServicesResponseResultMetaNormalization rollingAverage = RadarGetRankingTopInternetServicesResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetRankingTopInternetServicesResponseResultMetaNormalization overlappedPercentage = RadarGetRankingTopInternetServicesResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetRankingTopInternetServicesResponseResultMetaNormalization ratio = RadarGetRankingTopInternetServicesResponseResultMetaNormalization._('RATIO');

static const List<RadarGetRankingTopInternetServicesResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetRankingTopInternetServicesResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetRankingTopInternetServicesResponseResultMetaNormalization($value)'; } 
 }
final class RadarGetRankingTopInternetServicesResponseResultMeta {const RadarGetRankingTopInternetServicesResponseResultMeta({required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetRankingTopInternetServicesResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetRankingTopInternetServicesResponseResultMeta(
  confidenceInfo: json['confidenceInfo'] != null ? RadarGetRankingTopInternetServicesResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>) : null,
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetRankingTopInternetServicesResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetRankingTopInternetServicesResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetRankingTopInternetServicesResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

final RadarGetRankingTopInternetServicesResponseResultMetaConfidenceInfo? confidenceInfo;

final List<RadarGetRankingTopInternetServicesResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetRankingTopInternetServicesResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetRankingTopInternetServicesResponseResultMetaUnits> units;

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
RadarGetRankingTopInternetServicesResponseResultMeta copyWith({RadarGetRankingTopInternetServicesResponseResultMetaConfidenceInfo? Function()? confidenceInfo, List<RadarGetRankingTopInternetServicesResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetRankingTopInternetServicesResponseResultMetaNormalization? normalization, List<RadarGetRankingTopInternetServicesResponseResultMetaUnits>? units, }) { return RadarGetRankingTopInternetServicesResponseResultMeta(
  confidenceInfo: confidenceInfo != null ? confidenceInfo() : this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetRankingTopInternetServicesResponseResultMeta &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetRankingTopInternetServicesResponseResultMeta(confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
