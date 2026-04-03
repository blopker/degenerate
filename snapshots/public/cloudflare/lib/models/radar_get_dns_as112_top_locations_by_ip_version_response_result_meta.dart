// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_dns_as112_top_locations_by_ip_version_response_result_meta_confidence_info.dart';import 'radar_get_dns_as112_top_locations_by_ip_version_response_result_meta_date_range.dart';import 'radar_get_dns_as112_top_locations_by_ip_version_response_result_meta_units.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
@immutable final class RadarGetDnsAs112TopLocationsByIpVersionResponseResultMetaNormalization {const RadarGetDnsAs112TopLocationsByIpVersionResponseResultMetaNormalization._(this.value);

factory RadarGetDnsAs112TopLocationsByIpVersionResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetDnsAs112TopLocationsByIpVersionResponseResultMetaNormalization._(json),
}; }

static const RadarGetDnsAs112TopLocationsByIpVersionResponseResultMetaNormalization percentage = RadarGetDnsAs112TopLocationsByIpVersionResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetDnsAs112TopLocationsByIpVersionResponseResultMetaNormalization min0Max = RadarGetDnsAs112TopLocationsByIpVersionResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetDnsAs112TopLocationsByIpVersionResponseResultMetaNormalization minMax = RadarGetDnsAs112TopLocationsByIpVersionResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetDnsAs112TopLocationsByIpVersionResponseResultMetaNormalization rawValues = RadarGetDnsAs112TopLocationsByIpVersionResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetDnsAs112TopLocationsByIpVersionResponseResultMetaNormalization percentageChange = RadarGetDnsAs112TopLocationsByIpVersionResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetDnsAs112TopLocationsByIpVersionResponseResultMetaNormalization rollingAverage = RadarGetDnsAs112TopLocationsByIpVersionResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetDnsAs112TopLocationsByIpVersionResponseResultMetaNormalization overlappedPercentage = RadarGetDnsAs112TopLocationsByIpVersionResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetDnsAs112TopLocationsByIpVersionResponseResultMetaNormalization ratio = RadarGetDnsAs112TopLocationsByIpVersionResponseResultMetaNormalization._('RATIO');

static const List<RadarGetDnsAs112TopLocationsByIpVersionResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetDnsAs112TopLocationsByIpVersionResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetDnsAs112TopLocationsByIpVersionResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
@immutable final class RadarGetDnsAs112TopLocationsByIpVersionResponseResultMeta {const RadarGetDnsAs112TopLocationsByIpVersionResponseResultMeta({required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetDnsAs112TopLocationsByIpVersionResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetDnsAs112TopLocationsByIpVersionResponseResultMeta(
  confidenceInfo: json['confidenceInfo'] != null ? RadarGetDnsAs112TopLocationsByIpVersionResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>) : null,
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetDnsAs112TopLocationsByIpVersionResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetDnsAs112TopLocationsByIpVersionResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetDnsAs112TopLocationsByIpVersionResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

final RadarGetDnsAs112TopLocationsByIpVersionResponseResultMetaConfidenceInfo? confidenceInfo;

final List<RadarGetDnsAs112TopLocationsByIpVersionResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetDnsAs112TopLocationsByIpVersionResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetDnsAs112TopLocationsByIpVersionResponseResultMetaUnits> units;

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
RadarGetDnsAs112TopLocationsByIpVersionResponseResultMeta copyWith({RadarGetDnsAs112TopLocationsByIpVersionResponseResultMetaConfidenceInfo? Function()? confidenceInfo, List<RadarGetDnsAs112TopLocationsByIpVersionResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetDnsAs112TopLocationsByIpVersionResponseResultMetaNormalization? normalization, List<RadarGetDnsAs112TopLocationsByIpVersionResponseResultMetaUnits>? units, }) { return RadarGetDnsAs112TopLocationsByIpVersionResponseResultMeta(
  confidenceInfo: confidenceInfo != null ? confidenceInfo() : this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsAs112TopLocationsByIpVersionResponseResultMeta &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetDnsAs112TopLocationsByIpVersionResponseResultMeta(confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
