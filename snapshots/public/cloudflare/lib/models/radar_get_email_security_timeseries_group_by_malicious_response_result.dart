// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_email_security_timeseries_group_by_malicious_response_result_meta.dart';import 'radar_get_email_security_timeseries_group_by_malicious_response_result_serie0.dart';final class RadarGetEmailSecurityTimeseriesGroupByMaliciousResponseResult {const RadarGetEmailSecurityTimeseriesGroupByMaliciousResponseResult({required this.meta, required this.serie0, });

factory RadarGetEmailSecurityTimeseriesGroupByMaliciousResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetEmailSecurityTimeseriesGroupByMaliciousResponseResult(
  meta: RadarGetEmailSecurityTimeseriesGroupByMaliciousResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  serie0: RadarGetEmailSecurityTimeseriesGroupByMaliciousResponseResultSerie0.fromJson(json['serie_0'] as Map<String, dynamic>),
); }

/// Metadata for the results.
final RadarGetEmailSecurityTimeseriesGroupByMaliciousResponseResultMeta meta;

final RadarGetEmailSecurityTimeseriesGroupByMaliciousResponseResultSerie0 serie0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'serie_0': serie0.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('serie_0'); } 
RadarGetEmailSecurityTimeseriesGroupByMaliciousResponseResult copyWith({RadarGetEmailSecurityTimeseriesGroupByMaliciousResponseResultMeta? meta, RadarGetEmailSecurityTimeseriesGroupByMaliciousResponseResultSerie0? serie0, }) { return RadarGetEmailSecurityTimeseriesGroupByMaliciousResponseResult(
  meta: meta ?? this.meta,
  serie0: serie0 ?? this.serie0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailSecurityTimeseriesGroupByMaliciousResponseResult &&
          meta == other.meta &&
          serie0 == other.serie0; } 
@override int get hashCode { return Object.hash(meta, serie0); } 
@override String toString() { return 'RadarGetEmailSecurityTimeseriesGroupByMaliciousResponseResult(meta: $meta, serie0: $serie0)'; } 
 }
