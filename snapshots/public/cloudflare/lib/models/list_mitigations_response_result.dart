// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'abuse_reports_mitigation_list_item.dart';@immutable final class ListMitigationsResponseResult {const ListMitigationsResponseResult({required this.mitigations});

factory ListMitigationsResponseResult.fromJson(Map<String, dynamic> json) { return ListMitigationsResponseResult(
  mitigations: (json['mitigations'] as List<dynamic>).map((e) => AbuseReportsMitigationListItem.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<AbuseReportsMitigationListItem> mitigations;

Map<String, dynamic> toJson() { return {
  'mitigations': mitigations.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('mitigations'); } 
ListMitigationsResponseResult copyWith({List<AbuseReportsMitigationListItem>? mitigations}) { return ListMitigationsResponseResult(
  mitigations: mitigations ?? this.mitigations,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ListMitigationsResponseResult &&
          listEquals(mitigations, other.mitigations); } 
@override int get hashCode { return Object.hashAll(mitigations).hashCode; } 
@override String toString() { return 'ListMitigationsResponseResult(mitigations: $mitigations)'; } 
 }
