// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetDnsSummaryByDnssecResponseResultSummary0 {const RadarGetDnsSummaryByDnssecResponseResultSummary0({required this.insecure, required this.invalid, required this.other, required this.secure, });

factory RadarGetDnsSummaryByDnssecResponseResultSummary0.fromJson(Map<String, dynamic> json) { return RadarGetDnsSummaryByDnssecResponseResultSummary0(
  insecure: json['INSECURE'] as String,
  invalid: json['INVALID'] as String,
  other: json['OTHER'] as String,
  secure: json['SECURE'] as String,
); }

/// A numeric string.
final String insecure;

/// A numeric string.
final String invalid;

/// A numeric string.
final String other;

/// A numeric string.
final String secure;

Map<String, dynamic> toJson() { return {
  'INSECURE': insecure,
  'INVALID': invalid,
  'OTHER': other,
  'SECURE': secure,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('INSECURE') && json['INSECURE'] is String &&
      json.containsKey('INVALID') && json['INVALID'] is String &&
      json.containsKey('OTHER') && json['OTHER'] is String &&
      json.containsKey('SECURE') && json['SECURE'] is String; } 
RadarGetDnsSummaryByDnssecResponseResultSummary0 copyWith({String? insecure, String? invalid, String? other, String? secure, }) { return RadarGetDnsSummaryByDnssecResponseResultSummary0(
  insecure: insecure ?? this.insecure,
  invalid: invalid ?? this.invalid,
  other: other ?? this.other,
  secure: secure ?? this.secure,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetDnsSummaryByDnssecResponseResultSummary0 &&
          insecure == other.insecure &&
          invalid == other.invalid &&
          this.other == other.other &&
          secure == other.secure; } 
@override int get hashCode { return Object.hash(insecure, invalid, other, secure); } 
@override String toString() { return 'RadarGetDnsSummaryByDnssecResponseResultSummary0(insecure: $insecure, invalid: $invalid, other: $other, secure: $secure)'; } 
 }
