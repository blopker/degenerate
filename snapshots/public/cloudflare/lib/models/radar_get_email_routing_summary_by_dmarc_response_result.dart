// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_email_routing_summary_by_dmarc_response_result_meta.dart';import 'radar_get_email_routing_summary_by_dmarc_response_result_summary0.dart';@immutable final class RadarGetEmailRoutingSummaryByDmarcResponseResult {const RadarGetEmailRoutingSummaryByDmarcResponseResult({required this.meta, required this.summary0, });

factory RadarGetEmailRoutingSummaryByDmarcResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetEmailRoutingSummaryByDmarcResponseResult(
  meta: RadarGetEmailRoutingSummaryByDmarcResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  summary0: RadarGetEmailRoutingSummaryByDmarcResponseResultSummary0.fromJson(json['summary_0'] as Map<String, dynamic>),
); }

/// Metadata for the results.
final RadarGetEmailRoutingSummaryByDmarcResponseResultMeta meta;

final RadarGetEmailRoutingSummaryByDmarcResponseResultSummary0 summary0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'summary_0': summary0.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('summary_0'); } 
RadarGetEmailRoutingSummaryByDmarcResponseResult copyWith({RadarGetEmailRoutingSummaryByDmarcResponseResultMeta? meta, RadarGetEmailRoutingSummaryByDmarcResponseResultSummary0? summary0, }) { return RadarGetEmailRoutingSummaryByDmarcResponseResult(
  meta: meta ?? this.meta,
  summary0: summary0 ?? this.summary0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailRoutingSummaryByDmarcResponseResult &&
          meta == other.meta &&
          summary0 == other.summary0; } 
@override int get hashCode { return Object.hash(meta, summary0); } 
@override String toString() { return 'RadarGetEmailRoutingSummaryByDmarcResponseResult(meta: $meta, summary0: $summary0)'; } 
 }
