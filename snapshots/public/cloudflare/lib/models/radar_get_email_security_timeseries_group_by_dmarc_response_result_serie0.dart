// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RadarGetEmailSecurityTimeseriesGroupByDmarcResponseResultSerie0 {const RadarGetEmailSecurityTimeseriesGroupByDmarcResponseResultSerie0({required this.fail, required this.none, required this.pass, });

factory RadarGetEmailSecurityTimeseriesGroupByDmarcResponseResultSerie0.fromJson(Map<String, dynamic> json) { return RadarGetEmailSecurityTimeseriesGroupByDmarcResponseResultSerie0(
  fail: (json['FAIL'] as List<dynamic>).map((e) => e as String).toList(),
  none: (json['NONE'] as List<dynamic>).map((e) => e as String).toList(),
  pass: (json['PASS'] as List<dynamic>).map((e) => e as String).toList(),
); }

final List<String> fail;

final List<String> none;

final List<String> pass;

Map<String, dynamic> toJson() { return {
  'FAIL': fail,
  'NONE': none,
  'PASS': pass,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('FAIL') &&
      json.containsKey('NONE') &&
      json.containsKey('PASS'); } 
RadarGetEmailSecurityTimeseriesGroupByDmarcResponseResultSerie0 copyWith({List<String>? fail, List<String>? none, List<String>? pass, }) { return RadarGetEmailSecurityTimeseriesGroupByDmarcResponseResultSerie0(
  fail: fail ?? this.fail,
  none: none ?? this.none,
  pass: pass ?? this.pass,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailSecurityTimeseriesGroupByDmarcResponseResultSerie0 &&
          listEquals(fail, other.fail) &&
          listEquals(none, other.none) &&
          listEquals(pass, other.pass); } 
@override int get hashCode { return Object.hash(Object.hashAll(fail), Object.hashAll(none), Object.hashAll(pass)); } 
@override String toString() { return 'RadarGetEmailSecurityTimeseriesGroupByDmarcResponseResultSerie0(fail: $fail, none: $none, pass: $pass)'; } 
 }
