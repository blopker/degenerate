// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetCtSummaryResponseResultSummary0Variant2 {const RadarGetCtSummaryResponseResultSummary0Variant2({required this.rfc6962, required this.$static, });

factory RadarGetCtSummaryResponseResultSummary0Variant2.fromJson(Map<String, dynamic> json) { return RadarGetCtSummaryResponseResultSummary0Variant2(
  rfc6962: json['rfc6962'] as String,
  $static: json['static'] as String,
); }

final String rfc6962;

final String $static;

Map<String, dynamic> toJson() { return {
  'rfc6962': rfc6962,
  'static': $static,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('rfc6962') && json['rfc6962'] is String &&
      json.containsKey('static') && json['static'] is String; } 
RadarGetCtSummaryResponseResultSummary0Variant2 copyWith({String? rfc6962, String? $static, }) { return RadarGetCtSummaryResponseResultSummary0Variant2(
  rfc6962: rfc6962 ?? this.rfc6962,
  $static: $static ?? this.$static,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetCtSummaryResponseResultSummary0Variant2 &&
          rfc6962 == other.rfc6962 &&
          $static == other.$static; } 
@override int get hashCode { return Object.hash(rfc6962, $static); } 
@override String toString() { return 'RadarGetCtSummaryResponseResultSummary0Variant2(rfc6962: $rfc6962, \$static: ${$static})'; } 
 }
