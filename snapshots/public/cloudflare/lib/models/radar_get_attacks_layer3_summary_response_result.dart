// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'radar_get_attacks_layer3_summary_response_result_meta.dart';@immutable final class RadarGetAttacksLayer3SummaryResponseResult {const RadarGetAttacksLayer3SummaryResponseResult({required this.meta, required this.summary0, });

factory RadarGetAttacksLayer3SummaryResponseResult.fromJson(Map<String, dynamic> json) { return RadarGetAttacksLayer3SummaryResponseResult(
  meta: RadarGetAttacksLayer3SummaryResponseResultMeta.fromJson(json['meta'] as Map<String, dynamic>),
  summary0: (json['summary_0'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)),
); }

/// Metadata for the results.
final RadarGetAttacksLayer3SummaryResponseResultMeta meta;

final Map<String,String> summary0;

Map<String, dynamic> toJson() { return {
  'meta': meta.toJson(),
  'summary_0': summary0,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('meta') &&
      json.containsKey('summary_0'); } 
RadarGetAttacksLayer3SummaryResponseResult copyWith({RadarGetAttacksLayer3SummaryResponseResultMeta? meta, Map<String,String>? summary0, }) { return RadarGetAttacksLayer3SummaryResponseResult(
  meta: meta ?? this.meta,
  summary0: summary0 ?? this.summary0,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RadarGetAttacksLayer3SummaryResponseResult &&
          meta == other.meta &&
          summary0 == other.summary0; } 
@override int get hashCode { return Object.hash(meta, summary0); } 
@override String toString() { return 'RadarGetAttacksLayer3SummaryResponseResult(meta: $meta, summary0: $summary0)'; } 
 }
