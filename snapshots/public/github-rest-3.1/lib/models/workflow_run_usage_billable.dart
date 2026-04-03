// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workflow_run_usage_billable_macos.dart';import 'workflow_run_usage_billable_ubuntu.dart';import 'workflow_run_usage_billable_windows.dart';@immutable final class WorkflowRunUsageBillable {const WorkflowRunUsageBillable({this.ubuntu, this.macos, this.windows, });

factory WorkflowRunUsageBillable.fromJson(Map<String, dynamic> json) { return WorkflowRunUsageBillable(
  ubuntu: json['UBUNTU'] != null ? WorkflowRunUsageBillableUbuntu.fromJson(json['UBUNTU'] as Map<String, dynamic>) : null,
  macos: json['MACOS'] != null ? WorkflowRunUsageBillableMacos.fromJson(json['MACOS'] as Map<String, dynamic>) : null,
  windows: json['WINDOWS'] != null ? WorkflowRunUsageBillableWindows.fromJson(json['WINDOWS'] as Map<String, dynamic>) : null,
); }

final WorkflowRunUsageBillableUbuntu? ubuntu;

final WorkflowRunUsageBillableMacos? macos;

final WorkflowRunUsageBillableWindows? windows;

Map<String, dynamic> toJson() { return {
  if (ubuntu != null) 'UBUNTU': ubuntu?.toJson(),
  if (macos != null) 'MACOS': macos?.toJson(),
  if (windows != null) 'WINDOWS': windows?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'UBUNTU', 'MACOS', 'WINDOWS'}.contains(key)); } 
WorkflowRunUsageBillable copyWith({WorkflowRunUsageBillableUbuntu Function()? ubuntu, WorkflowRunUsageBillableMacos Function()? macos, WorkflowRunUsageBillableWindows Function()? windows, }) { return WorkflowRunUsageBillable(
  ubuntu: ubuntu != null ? ubuntu() : this.ubuntu,
  macos: macos != null ? macos() : this.macos,
  windows: windows != null ? windows() : this.windows,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkflowRunUsageBillable &&
          ubuntu == other.ubuntu &&
          macos == other.macos &&
          windows == other.windows; } 
@override int get hashCode { return Object.hash(ubuntu, macos, windows); } 
@override String toString() { return 'WorkflowRunUsageBillable(ubuntu: $ubuntu, macos: $macos, windows: $windows)'; } 
 }
