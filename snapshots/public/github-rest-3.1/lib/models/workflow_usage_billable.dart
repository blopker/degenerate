// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workflow_usage_billable_macos.dart';import 'workflow_usage_billable_ubuntu.dart';import 'workflow_usage_billable_windows.dart';@immutable final class WorkflowUsageBillable {const WorkflowUsageBillable({this.ubuntu, this.macos, this.windows, });

factory WorkflowUsageBillable.fromJson(Map<String, dynamic> json) { return WorkflowUsageBillable(
  ubuntu: json['UBUNTU'] != null ? WorkflowUsageBillableUbuntu.fromJson(json['UBUNTU'] as Map<String, dynamic>) : null,
  macos: json['MACOS'] != null ? WorkflowUsageBillableMacos.fromJson(json['MACOS'] as Map<String, dynamic>) : null,
  windows: json['WINDOWS'] != null ? WorkflowUsageBillableWindows.fromJson(json['WINDOWS'] as Map<String, dynamic>) : null,
); }

final WorkflowUsageBillableUbuntu? ubuntu;

final WorkflowUsageBillableMacos? macos;

final WorkflowUsageBillableWindows? windows;

Map<String, dynamic> toJson() { return {
  if (ubuntu != null) 'UBUNTU': ubuntu?.toJson(),
  if (macos != null) 'MACOS': macos?.toJson(),
  if (windows != null) 'WINDOWS': windows?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'UBUNTU', 'MACOS', 'WINDOWS'}.contains(key)); } 
WorkflowUsageBillable copyWith({WorkflowUsageBillableUbuntu Function()? ubuntu, WorkflowUsageBillableMacos Function()? macos, WorkflowUsageBillableWindows Function()? windows, }) { return WorkflowUsageBillable(
  ubuntu: ubuntu != null ? ubuntu() : this.ubuntu,
  macos: macos != null ? macos() : this.macos,
  windows: windows != null ? windows() : this.windows,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkflowUsageBillable &&
          ubuntu == other.ubuntu &&
          macos == other.macos &&
          windows == other.windows; } 
@override int get hashCode { return Object.hash(ubuntu, macos, windows); } 
@override String toString() { return 'WorkflowUsageBillable(ubuntu: $ubuntu, macos: $macos, windows: $windows)'; } 
 }
