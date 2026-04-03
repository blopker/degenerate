// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WorkflowUsageBillableUbuntu {const WorkflowUsageBillableUbuntu({this.totalMs});

factory WorkflowUsageBillableUbuntu.fromJson(Map<String, dynamic> json) { return WorkflowUsageBillableUbuntu(
  totalMs: json['total_ms'] != null ? (json['total_ms'] as num).toInt() : null,
); }

final int? totalMs;

Map<String, dynamic> toJson() { return {
  'total_ms': ?totalMs,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'total_ms'}.contains(key)); } 
WorkflowUsageBillableUbuntu copyWith({int Function()? totalMs}) { return WorkflowUsageBillableUbuntu(
  totalMs: totalMs != null ? totalMs() : this.totalMs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkflowUsageBillableUbuntu &&
          totalMs == other.totalMs; } 
@override int get hashCode { return totalMs.hashCode; } 
@override String toString() { return 'WorkflowUsageBillableUbuntu(totalMs: $totalMs)'; } 
 }
