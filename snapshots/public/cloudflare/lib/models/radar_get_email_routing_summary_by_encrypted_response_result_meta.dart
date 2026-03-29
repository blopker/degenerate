// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_email_routing_summary_by_encrypted_response_result_meta_confidence_info.dart';import 'radar_get_email_routing_summary_by_encrypted_response_result_meta_date_range.dart';import 'radar_get_email_routing_summary_by_encrypted_response_result_meta_units.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final class RadarGetEmailRoutingSummaryByEncryptedResponseResultMetaNormalization {const RadarGetEmailRoutingSummaryByEncryptedResponseResultMetaNormalization._(this.value);

factory RadarGetEmailRoutingSummaryByEncryptedResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetEmailRoutingSummaryByEncryptedResponseResultMetaNormalization._(json),
}; }

static const RadarGetEmailRoutingSummaryByEncryptedResponseResultMetaNormalization percentage = RadarGetEmailRoutingSummaryByEncryptedResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetEmailRoutingSummaryByEncryptedResponseResultMetaNormalization min0Max = RadarGetEmailRoutingSummaryByEncryptedResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetEmailRoutingSummaryByEncryptedResponseResultMetaNormalization minMax = RadarGetEmailRoutingSummaryByEncryptedResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetEmailRoutingSummaryByEncryptedResponseResultMetaNormalization rawValues = RadarGetEmailRoutingSummaryByEncryptedResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetEmailRoutingSummaryByEncryptedResponseResultMetaNormalization percentageChange = RadarGetEmailRoutingSummaryByEncryptedResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetEmailRoutingSummaryByEncryptedResponseResultMetaNormalization rollingAverage = RadarGetEmailRoutingSummaryByEncryptedResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetEmailRoutingSummaryByEncryptedResponseResultMetaNormalization overlappedPercentage = RadarGetEmailRoutingSummaryByEncryptedResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetEmailRoutingSummaryByEncryptedResponseResultMetaNormalization ratio = RadarGetEmailRoutingSummaryByEncryptedResponseResultMetaNormalization._('RATIO');

static const List<RadarGetEmailRoutingSummaryByEncryptedResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailRoutingSummaryByEncryptedResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailRoutingSummaryByEncryptedResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
final class RadarGetEmailRoutingSummaryByEncryptedResponseResultMeta {const RadarGetEmailRoutingSummaryByEncryptedResponseResultMeta({required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetEmailRoutingSummaryByEncryptedResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetEmailRoutingSummaryByEncryptedResponseResultMeta(
  confidenceInfo: RadarGetEmailRoutingSummaryByEncryptedResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>),
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetEmailRoutingSummaryByEncryptedResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetEmailRoutingSummaryByEncryptedResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetEmailRoutingSummaryByEncryptedResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

final RadarGetEmailRoutingSummaryByEncryptedResponseResultMetaConfidenceInfo confidenceInfo;

final List<RadarGetEmailRoutingSummaryByEncryptedResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetEmailRoutingSummaryByEncryptedResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetEmailRoutingSummaryByEncryptedResponseResultMetaUnits> units;

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
RadarGetEmailRoutingSummaryByEncryptedResponseResultMeta copyWith({RadarGetEmailRoutingSummaryByEncryptedResponseResultMetaConfidenceInfo? confidenceInfo, List<RadarGetEmailRoutingSummaryByEncryptedResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetEmailRoutingSummaryByEncryptedResponseResultMetaNormalization? normalization, List<RadarGetEmailRoutingSummaryByEncryptedResponseResultMetaUnits>? units, }) { return RadarGetEmailRoutingSummaryByEncryptedResponseResultMeta(
  confidenceInfo: confidenceInfo ?? this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailRoutingSummaryByEncryptedResponseResultMeta &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetEmailRoutingSummaryByEncryptedResponseResultMeta(confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
