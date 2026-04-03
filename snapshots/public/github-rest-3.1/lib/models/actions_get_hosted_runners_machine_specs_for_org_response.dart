// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'actions_hosted_runner_machine_spec.dart';@immutable final class ActionsGetHostedRunnersMachineSpecsForOrgResponse {const ActionsGetHostedRunnersMachineSpecsForOrgResponse({required this.totalCount, required this.machineSpecs, });

factory ActionsGetHostedRunnersMachineSpecsForOrgResponse.fromJson(Map<String, dynamic> json) { return ActionsGetHostedRunnersMachineSpecsForOrgResponse(
  totalCount: (json['total_count'] as num).toInt(),
  machineSpecs: (json['machine_specs'] as List<dynamic>).map((e) => ActionsHostedRunnerMachineSpec.fromJson(e as Map<String, dynamic>)).toList(),
); }

final int totalCount;

final List<ActionsHostedRunnerMachineSpec> machineSpecs;

Map<String, dynamic> toJson() { return {
  'total_count': totalCount,
  'machine_specs': machineSpecs.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('total_count') && json['total_count'] is num &&
      json.containsKey('machine_specs'); } 
ActionsGetHostedRunnersMachineSpecsForOrgResponse copyWith({int? totalCount, List<ActionsHostedRunnerMachineSpec>? machineSpecs, }) { return ActionsGetHostedRunnersMachineSpecsForOrgResponse(
  totalCount: totalCount ?? this.totalCount,
  machineSpecs: machineSpecs ?? this.machineSpecs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsGetHostedRunnersMachineSpecsForOrgResponse &&
          totalCount == other.totalCount &&
          listEquals(machineSpecs, other.machineSpecs); } 
@override int get hashCode { return Object.hash(totalCount, Object.hashAll(machineSpecs)); } 
@override String toString() { return 'ActionsGetHostedRunnersMachineSpecsForOrgResponse(totalCount: $totalCount, machineSpecs: $machineSpecs)'; } 
 }
