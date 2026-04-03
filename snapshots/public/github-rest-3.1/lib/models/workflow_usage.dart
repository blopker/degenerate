// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workflow_usage_billable.dart';/// Workflow Usage
@immutable final class WorkflowUsage {const WorkflowUsage({required this.billable});

factory WorkflowUsage.fromJson(Map<String, dynamic> json) { return WorkflowUsage(
  billable: WorkflowUsageBillable.fromJson(json['billable'] as Map<String, dynamic>),
); }

final WorkflowUsageBillable billable;

Map<String, dynamic> toJson() { return {
  'billable': billable.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('billable'); } 
WorkflowUsage copyWith({WorkflowUsageBillable? billable}) { return WorkflowUsage(
  billable: billable ?? this.billable,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkflowUsage &&
          billable == other.billable; } 
@override int get hashCode { return billable.hashCode; } 
@override String toString() { return 'WorkflowUsage(billable: $billable)'; } 
 }
