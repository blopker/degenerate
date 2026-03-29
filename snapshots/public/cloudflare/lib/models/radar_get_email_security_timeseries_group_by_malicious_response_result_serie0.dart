// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class RadarGetEmailSecurityTimeseriesGroupByMaliciousResponseResultSerie0 {const RadarGetEmailSecurityTimeseriesGroupByMaliciousResponseResultSerie0({required this.malicious, required this.notMalicious, });

factory RadarGetEmailSecurityTimeseriesGroupByMaliciousResponseResultSerie0.fromJson(Map<String, dynamic> json) { return RadarGetEmailSecurityTimeseriesGroupByMaliciousResponseResultSerie0(
  malicious: (json['MALICIOUS'] as List<dynamic>).map((e) => e as String).toList(),
  notMalicious: (json['NOT_MALICIOUS'] as List<dynamic>).map((e) => e as String).toList(),
); }

final List<String> malicious;

final List<String> notMalicious;

Map<String, dynamic> toJson() { return {
  'MALICIOUS': malicious,
  'NOT_MALICIOUS': notMalicious,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('MALICIOUS') &&
      json.containsKey('NOT_MALICIOUS'); } 
RadarGetEmailSecurityTimeseriesGroupByMaliciousResponseResultSerie0 copyWith({List<String>? malicious, List<String>? notMalicious, }) { return RadarGetEmailSecurityTimeseriesGroupByMaliciousResponseResultSerie0(
  malicious: malicious ?? this.malicious,
  notMalicious: notMalicious ?? this.notMalicious,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailSecurityTimeseriesGroupByMaliciousResponseResultSerie0 &&
          listEquals(malicious, other.malicious) &&
          listEquals(notMalicious, other.notMalicious); } 
@override int get hashCode { return Object.hash(Object.hashAll(malicious), Object.hashAll(notMalicious)); } 
@override String toString() { return 'RadarGetEmailSecurityTimeseriesGroupByMaliciousResponseResultSerie0(malicious: $malicious, notMalicious: $notMalicious)'; } 
 }
