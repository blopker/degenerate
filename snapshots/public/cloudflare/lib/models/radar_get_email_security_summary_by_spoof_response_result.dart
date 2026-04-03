// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_email_security_summary_by_spoof_response_result_meta.dart';import 'radar_get_email_security_summary_by_spoof_response_result_summary0.dart';@immutable final class RadarGetEmailSecuritySummaryBySpoofResponseResult {const RadarGetEmailSecuritySummaryBySpoofResponseResult({required this.meta, required this.summary0, });

factory RadarGetEmailSecuritySummaryBySpoofResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetEmailSecuritySummaryBySpoofResponseResult(
  meta: RadarGetEmailSecuritySummaryBySpoofResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  summary0: RadarGetEmailSecuritySummaryBySpoofResponseResultSummary0.fromJson(json['summary_0'] as Map<String, dynamic>),
); }

/// Metadata for the results.
final RadarGetEmailSecuritySummaryBySpoofResponseResultMeta meta;

final RadarGetEmailSecuritySummaryBySpoofResponseResultSummary0 summary0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'summary_0': summary0.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('summary_0'); } 
RadarGetEmailSecuritySummaryBySpoofResponseResult copyWith({RadarGetEmailSecuritySummaryBySpoofResponseResultMeta? meta, RadarGetEmailSecuritySummaryBySpoofResponseResultSummary0? summary0, }) { return RadarGetEmailSecuritySummaryBySpoofResponseResult(
  meta: meta ?? this.meta,
  summary0: summary0 ?? this.summary0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetEmailSecuritySummaryBySpoofResponseResult &&
          meta == other.meta &&
          summary0 == other.summary0; } 
@override int get hashCode { return Object.hash(meta, summary0); } 
@override String toString() { return 'RadarGetEmailSecuritySummaryBySpoofResponseResult(meta: $meta, summary0: $summary0)'; } 
 }
