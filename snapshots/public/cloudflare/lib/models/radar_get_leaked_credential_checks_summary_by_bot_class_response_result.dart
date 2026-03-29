// GENERATED CODE - DO NOT MODIFY BY HAND

import 'radar_get_leaked_credential_checks_summary_by_bot_class_response_result_meta.dart';import 'radar_get_leaked_credential_checks_summary_by_bot_class_response_result_summary0.dart';final class RadarGetLeakedCredentialChecksSummaryByBotClassResponseResult {const RadarGetLeakedCredentialChecksSummaryByBotClassResponseResult({required this.meta, required this.summary0, });

factory RadarGetLeakedCredentialChecksSummaryByBotClassResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetLeakedCredentialChecksSummaryByBotClassResponseResult(
  meta: RadarGetLeakedCredentialChecksSummaryByBotClassResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  summary0: RadarGetLeakedCredentialChecksSummaryByBotClassResponseResultSummary0.fromJson(json['summary_0'] as Map<String, dynamic>),
); }

/// Metadata for the results.
final RadarGetLeakedCredentialChecksSummaryByBotClassResponseResultMeta meta;

final RadarGetLeakedCredentialChecksSummaryByBotClassResponseResultSummary0 summary0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'summary_0': summary0.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('summary_0'); } 
RadarGetLeakedCredentialChecksSummaryByBotClassResponseResult copyWith({RadarGetLeakedCredentialChecksSummaryByBotClassResponseResultMeta? meta, RadarGetLeakedCredentialChecksSummaryByBotClassResponseResultSummary0? summary0, }) { return RadarGetLeakedCredentialChecksSummaryByBotClassResponseResult(
  meta: meta ?? this.meta,
  summary0: summary0 ?? this.summary0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetLeakedCredentialChecksSummaryByBotClassResponseResult &&
          meta == other.meta &&
          summary0 == other.summary0; } 
@override int get hashCode { return Object.hash(meta, summary0); } 
@override String toString() { return 'RadarGetLeakedCredentialChecksSummaryByBotClassResponseResult(meta: $meta, summary0: $summary0)'; } 
 }
