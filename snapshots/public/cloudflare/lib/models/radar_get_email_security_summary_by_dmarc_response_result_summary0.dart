// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailSecuritySummaryByDmarcResponseResultSummary0 {const RadarGetEmailSecuritySummaryByDmarcResponseResultSummary0({required this.fail, required this.none, required this.pass, });

factory RadarGetEmailSecuritySummaryByDmarcResponseResultSummary0.fromJson(Map<String, dynamic> json) { return RadarGetEmailSecuritySummaryByDmarcResponseResultSummary0(
  fail: json['FAIL'] as String,
  none: json['NONE'] as String,
  pass: json['PASS'] as String,
); }

/// A numeric string.
final String fail;

/// A numeric string.
final String none;

/// A numeric string.
final String pass;

Map<String, dynamic> toJson() { return {
  'FAIL': fail,
  'NONE': none,
  'PASS': pass,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('FAIL') && json['FAIL'] is String &&
      json.containsKey('NONE') && json['NONE'] is String &&
      json.containsKey('PASS') && json['PASS'] is String; } 
RadarGetEmailSecuritySummaryByDmarcResponseResultSummary0 copyWith({String? fail, String? none, String? pass, }) { return RadarGetEmailSecuritySummaryByDmarcResponseResultSummary0(
  fail: fail ?? this.fail,
  none: none ?? this.none,
  pass: pass ?? this.pass,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailSecuritySummaryByDmarcResponseResultSummary0 &&
          fail == other.fail &&
          none == other.none &&
          pass == other.pass; } 
@override int get hashCode { return Object.hash(fail, none, pass); } 
@override String toString() { return 'RadarGetEmailSecuritySummaryByDmarcResponseResultSummary0(fail: $fail, none: $none, pass: $pass)'; } 
 }
