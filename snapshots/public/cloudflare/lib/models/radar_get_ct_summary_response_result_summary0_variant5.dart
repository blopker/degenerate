// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetCtSummaryResponseResultSummary0Variant5 {const RadarGetCtSummaryResponseResultSummary0Variant5({required this.expired, required this.valid, });

factory RadarGetCtSummaryResponseResultSummary0Variant5.fromJson(Map<String, dynamic> json) { return RadarGetCtSummaryResponseResultSummary0Variant5(
  expired: json['EXPIRED'] as String,
  valid: json['VALID'] as String,
); }

final String expired;

final String valid;

Map<String, dynamic> toJson() { return {
  'EXPIRED': expired,
  'VALID': valid,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('EXPIRED') && json['EXPIRED'] is String &&
      json.containsKey('VALID') && json['VALID'] is String; } 
RadarGetCtSummaryResponseResultSummary0Variant5 copyWith({String? expired, String? valid, }) { return RadarGetCtSummaryResponseResultSummary0Variant5(
  expired: expired ?? this.expired,
  valid: valid ?? this.valid,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetCtSummaryResponseResultSummary0Variant5 &&
          expired == other.expired &&
          valid == other.valid; } 
@override int get hashCode { return Object.hash(expired, valid); } 
@override String toString() { return 'RadarGetCtSummaryResponseResultSummary0Variant5(expired: $expired, valid: $valid)'; } 
 }
