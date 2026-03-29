// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_dns_top_ases_response_result_meta_confidence_info.dart';import 'radar_get_dns_top_ases_response_result_meta_date_range.dart';import 'radar_get_dns_top_ases_response_result_meta_units.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final class RadarGetDnsTopAsesResponseResultMetaNormalization {const RadarGetDnsTopAsesResponseResultMetaNormalization._(this.value);

factory RadarGetDnsTopAsesResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetDnsTopAsesResponseResultMetaNormalization._(json),
}; }

static const RadarGetDnsTopAsesResponseResultMetaNormalization percentage = RadarGetDnsTopAsesResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetDnsTopAsesResponseResultMetaNormalization min0Max = RadarGetDnsTopAsesResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetDnsTopAsesResponseResultMetaNormalization minMax = RadarGetDnsTopAsesResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetDnsTopAsesResponseResultMetaNormalization rawValues = RadarGetDnsTopAsesResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetDnsTopAsesResponseResultMetaNormalization percentageChange = RadarGetDnsTopAsesResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetDnsTopAsesResponseResultMetaNormalization rollingAverage = RadarGetDnsTopAsesResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetDnsTopAsesResponseResultMetaNormalization overlappedPercentage = RadarGetDnsTopAsesResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetDnsTopAsesResponseResultMetaNormalization ratio = RadarGetDnsTopAsesResponseResultMetaNormalization._('RATIO');

static const List<RadarGetDnsTopAsesResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsTopAsesResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsTopAsesResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
final class RadarGetDnsTopAsesResponseResultMeta {const RadarGetDnsTopAsesResponseResultMeta({required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetDnsTopAsesResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetDnsTopAsesResponseResultMeta(
  confidenceInfo: json['confidenceInfo'] != null ? RadarGetDnsTopAsesResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>) : null,
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetDnsTopAsesResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetDnsTopAsesResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetDnsTopAsesResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

final RadarGetDnsTopAsesResponseResultMetaConfidenceInfo? confidenceInfo;

final List<RadarGetDnsTopAsesResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetDnsTopAsesResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetDnsTopAsesResponseResultMetaUnits> units;

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
RadarGetDnsTopAsesResponseResultMeta copyWith({RadarGetDnsTopAsesResponseResultMetaConfidenceInfo? Function()? confidenceInfo, List<RadarGetDnsTopAsesResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetDnsTopAsesResponseResultMetaNormalization? normalization, List<RadarGetDnsTopAsesResponseResultMetaUnits>? units, }) { return RadarGetDnsTopAsesResponseResultMeta(
  confidenceInfo: confidenceInfo != null ? confidenceInfo() : this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsTopAsesResponseResultMeta &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetDnsTopAsesResponseResultMeta(confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
