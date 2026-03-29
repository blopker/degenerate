// GENERATED CODE - DO NOT MODIFY BY HAND

final class WorkflowUsageBillableMacos {const WorkflowUsageBillableMacos({this.totalMs});

factory WorkflowUsageBillableMacos.fromJson(Map<String, dynamic> json) { return WorkflowUsageBillableMacos(
  totalMs: json['total_ms'] != null ? (json['total_ms'] as num).toInt() : null,
); }

final int? totalMs;

Map<String, dynamic> toJson() { return {
  'total_ms': ?totalMs,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
WorkflowUsageBillableMacos copyWith({int Function()? totalMs}) { return WorkflowUsageBillableMacos(
  totalMs: totalMs != null ? totalMs() : this.totalMs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkflowUsageBillableMacos &&
          totalMs == other.totalMs; } 
@override int get hashCode { return totalMs.hashCode; } 
@override String toString() { return 'WorkflowUsageBillableMacos(totalMs: $totalMs)'; } 
 }
