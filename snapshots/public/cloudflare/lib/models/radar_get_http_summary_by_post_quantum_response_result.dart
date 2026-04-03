// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_http_summary_by_post_quantum_response_result_meta.dart';import 'radar_get_http_summary_by_post_quantum_response_result_summary0.dart';@immutable final class RadarGetHttpSummaryByPostQuantumResponseResult {const RadarGetHttpSummaryByPostQuantumResponseResult({required this.meta, required this.summary0, });

factory RadarGetHttpSummaryByPostQuantumResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetHttpSummaryByPostQuantumResponseResult(
  meta: RadarGetHttpSummaryByPostQuantumResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  summary0: RadarGetHttpSummaryByPostQuantumResponseResultSummary0.fromJson(json['summary_0'] as Map<String, dynamic>),
); }

/// Metadata for the results.
final RadarGetHttpSummaryByPostQuantumResponseResultMeta meta;

final RadarGetHttpSummaryByPostQuantumResponseResultSummary0 summary0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'summary_0': summary0.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('summary_0'); } 
RadarGetHttpSummaryByPostQuantumResponseResult copyWith({RadarGetHttpSummaryByPostQuantumResponseResultMeta? meta, RadarGetHttpSummaryByPostQuantumResponseResultSummary0? summary0, }) { return RadarGetHttpSummaryByPostQuantumResponseResult(
  meta: meta ?? this.meta,
  summary0: summary0 ?? this.summary0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetHttpSummaryByPostQuantumResponseResult &&
          meta == other.meta &&
          summary0 == other.summary0; } 
@override int get hashCode { return Object.hash(meta, summary0); } 
@override String toString() { return 'RadarGetHttpSummaryByPostQuantumResponseResult(meta: $meta, summary0: $summary0)'; } 
 }
