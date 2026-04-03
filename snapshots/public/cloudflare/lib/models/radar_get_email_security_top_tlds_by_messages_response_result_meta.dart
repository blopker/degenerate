// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_email_security_top_tlds_by_messages_response_result_meta_confidence_info.dart';import 'radar_get_email_security_top_tlds_by_messages_response_result_meta_date_range.dart';import 'radar_get_email_security_top_tlds_by_messages_response_result_meta_units.dart';/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
@immutable final class RadarGetEmailSecurityTopTldsByMessagesResponseResultMetaNormalization {const RadarGetEmailSecurityTopTldsByMessagesResponseResultMetaNormalization._(this.value);

factory RadarGetEmailSecurityTopTldsByMessagesResponseResultMetaNormalization.fromJson(String json) { return switch (json) {
  'PERCENTAGE' => percentage,
  'MIN0_MAX' => min0Max,
  'MIN_MAX' => minMax,
  'RAW_VALUES' => rawValues,
  'PERCENTAGE_CHANGE' => percentageChange,
  'ROLLING_AVERAGE' => rollingAverage,
  'OVERLAPPED_PERCENTAGE' => overlappedPercentage,
  'RATIO' => ratio,
  _ => RadarGetEmailSecurityTopTldsByMessagesResponseResultMetaNormalization._(json),
}; }

static const RadarGetEmailSecurityTopTldsByMessagesResponseResultMetaNormalization percentage = RadarGetEmailSecurityTopTldsByMessagesResponseResultMetaNormalization._('PERCENTAGE');

static const RadarGetEmailSecurityTopTldsByMessagesResponseResultMetaNormalization min0Max = RadarGetEmailSecurityTopTldsByMessagesResponseResultMetaNormalization._('MIN0_MAX');

static const RadarGetEmailSecurityTopTldsByMessagesResponseResultMetaNormalization minMax = RadarGetEmailSecurityTopTldsByMessagesResponseResultMetaNormalization._('MIN_MAX');

static const RadarGetEmailSecurityTopTldsByMessagesResponseResultMetaNormalization rawValues = RadarGetEmailSecurityTopTldsByMessagesResponseResultMetaNormalization._('RAW_VALUES');

static const RadarGetEmailSecurityTopTldsByMessagesResponseResultMetaNormalization percentageChange = RadarGetEmailSecurityTopTldsByMessagesResponseResultMetaNormalization._('PERCENTAGE_CHANGE');

static const RadarGetEmailSecurityTopTldsByMessagesResponseResultMetaNormalization rollingAverage = RadarGetEmailSecurityTopTldsByMessagesResponseResultMetaNormalization._('ROLLING_AVERAGE');

static const RadarGetEmailSecurityTopTldsByMessagesResponseResultMetaNormalization overlappedPercentage = RadarGetEmailSecurityTopTldsByMessagesResponseResultMetaNormalization._('OVERLAPPED_PERCENTAGE');

static const RadarGetEmailSecurityTopTldsByMessagesResponseResultMetaNormalization ratio = RadarGetEmailSecurityTopTldsByMessagesResponseResultMetaNormalization._('RATIO');

static const List<RadarGetEmailSecurityTopTldsByMessagesResponseResultMetaNormalization> values = [percentage, min0Max, minMax, rawValues, percentageChange, rollingAverage, overlappedPercentage, ratio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RadarGetEmailSecurityTopTldsByMessagesResponseResultMetaNormalization && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RadarGetEmailSecurityTopTldsByMessagesResponseResultMetaNormalization($value)'; } 
 }
/// Metadata for the results.
@immutable final class RadarGetEmailSecurityTopTldsByMessagesResponseResultMeta {const RadarGetEmailSecurityTopTldsByMessagesResponseResultMeta({required this.confidenceInfo, required this.dateRange, required this.lastUpdated, required this.normalization, required this.units, });

factory RadarGetEmailSecurityTopTldsByMessagesResponseResultMeta.fromJson(Map<String, dynamic> json) { return RadarGetEmailSecurityTopTldsByMessagesResponseResultMeta(
  confidenceInfo: json['confidenceInfo'] != null ? RadarGetEmailSecurityTopTldsByMessagesResponseResultMetaConfidenceInfo.fromJson(json['confidenceInfo'] as Map<String, dynamic>) : null,
  dateRange: (json['dateRange'] as List<dynamic>).map((e) => RadarGetEmailSecurityTopTldsByMessagesResponseResultMetaDateRange.fromJson(e as Map<String, dynamic>)).toList(),
  lastUpdated: DateTime.parse(json['lastUpdated'] as String),
  normalization: RadarGetEmailSecurityTopTldsByMessagesResponseResultMetaNormalization.fromJson(json['normalization'] as String),
  units: (json['units'] as List<dynamic>).map((e) => RadarGetEmailSecurityTopTldsByMessagesResponseResultMetaUnits.fromJson(e as Map<String, dynamic>)).toList(),
); }

final RadarGetEmailSecurityTopTldsByMessagesResponseResultMetaConfidenceInfo? confidenceInfo;

final List<RadarGetEmailSecurityTopTldsByMessagesResponseResultMetaDateRange> dateRange;

/// Timestamp of the last dataset update.
final DateTime lastUpdated;

/// Normalization method applied to the results. Refer to [Normalization methods](https://developers.cloudflare.com/radar/concepts/normalization/).
final RadarGetEmailSecurityTopTldsByMessagesResponseResultMetaNormalization normalization;

/// Measurement units for the results.
final List<RadarGetEmailSecurityTopTldsByMessagesResponseResultMetaUnits> units;

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
RadarGetEmailSecurityTopTldsByMessagesResponseResultMeta copyWith({RadarGetEmailSecurityTopTldsByMessagesResponseResultMetaConfidenceInfo? Function()? confidenceInfo, List<RadarGetEmailSecurityTopTldsByMessagesResponseResultMetaDateRange>? dateRange, DateTime? lastUpdated, RadarGetEmailSecurityTopTldsByMessagesResponseResultMetaNormalization? normalization, List<RadarGetEmailSecurityTopTldsByMessagesResponseResultMetaUnits>? units, }) { return RadarGetEmailSecurityTopTldsByMessagesResponseResultMeta(
  confidenceInfo: confidenceInfo != null ? confidenceInfo() : this.confidenceInfo,
  dateRange: dateRange ?? this.dateRange,
  lastUpdated: lastUpdated ?? this.lastUpdated,
  normalization: normalization ?? this.normalization,
  units: units ?? this.units,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailSecurityTopTldsByMessagesResponseResultMeta &&
          confidenceInfo == other.confidenceInfo &&
          listEquals(dateRange, other.dateRange) &&
          lastUpdated == other.lastUpdated &&
          normalization == other.normalization &&
          listEquals(units, other.units); } 
@override int get hashCode { return Object.hash(confidenceInfo, Object.hashAll(dateRange), lastUpdated, normalization, Object.hashAll(units)); } 
@override String toString() { return 'RadarGetEmailSecurityTopTldsByMessagesResponseResultMeta(confidenceInfo: $confidenceInfo, dateRange: $dateRange, lastUpdated: $lastUpdated, normalization: $normalization, units: $units)'; } 
 }
