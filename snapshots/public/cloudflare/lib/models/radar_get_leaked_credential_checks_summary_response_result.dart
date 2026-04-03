// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_leaked_credential_checks_summary_response_result_meta.dart';@immutable final class RadarGetLeakedCredentialChecksSummaryResponseResult {const RadarGetLeakedCredentialChecksSummaryResponseResult({required this.meta, required this.summary0, });

factory RadarGetLeakedCredentialChecksSummaryResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetLeakedCredentialChecksSummaryResponseResult(
  meta: RadarGetLeakedCredentialChecksSummaryResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  summary0: (json['summary_0'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)),
); }

/// Metadata for the results.
final RadarGetLeakedCredentialChecksSummaryResponseResultMeta meta;

final Map<String,String> summary0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'summary_0': summary0,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('summary_0'); } 
RadarGetLeakedCredentialChecksSummaryResponseResult copyWith({RadarGetLeakedCredentialChecksSummaryResponseResultMeta? meta, Map<String,String>? summary0, }) { return RadarGetLeakedCredentialChecksSummaryResponseResult(
  meta: meta ?? this.meta,
  summary0: summary0 ?? this.summary0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetLeakedCredentialChecksSummaryResponseResult &&
          meta == other.meta &&
          summary0 == other.summary0; } 
@override int get hashCode { return Object.hash(meta, summary0); } 
@override String toString() { return 'RadarGetLeakedCredentialChecksSummaryResponseResult(meta: $meta, summary0: $summary0)'; } 
 }
