// GENERATED CODE - DO NOT MODIFY BY HAND

final class WorkflowUsageBillableWindows {const WorkflowUsageBillableWindows({this.totalMs});

factory WorkflowUsageBillableWindows.fromJson(Map<String, dynamic> json) { return WorkflowUsageBillableWindows(
  totalMs: json['total_ms'] != null ? (json['total_ms'] as num).toInt() : null,
); }

final int? totalMs;

Map<String, dynamic> toJson() { return {
  'total_ms': ?totalMs,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'total_ms'}.contains(key)); } 
WorkflowUsageBillableWindows copyWith({int Function()? totalMs}) { return WorkflowUsageBillableWindows(
  totalMs: totalMs != null ? totalMs() : this.totalMs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkflowUsageBillableWindows &&
          totalMs == other.totalMs; } 
@override int get hashCode { return totalMs.hashCode; } 
@override String toString() { return 'WorkflowUsageBillableWindows(totalMs: $totalMs)'; } 
 }
