// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Provides details of a particular machine spec.
@immutable final class ActionsHostedRunnerMachineSpec {const ActionsHostedRunnerMachineSpec({required this.id, required this.cpuCores, required this.memoryGb, required this.storageGb, });

factory ActionsHostedRunnerMachineSpec.fromJson(Map<String, dynamic> json) { return ActionsHostedRunnerMachineSpec(
  id: json['id'] as String,
  cpuCores: (json['cpu_cores'] as num).toInt(),
  memoryGb: (json['memory_gb'] as num).toInt(),
  storageGb: (json['storage_gb'] as num).toInt(),
); }

/// The ID used for the `size` parameter when creating a new runner.
final String id;

/// The number of cores.
final int cpuCores;

/// The available RAM for the machine spec.
final int memoryGb;

/// The available SSD storage for the machine spec.
final int storageGb;

Map<String, dynamic> toJson() { return {
  'id': id,
  'cpu_cores': cpuCores,
  'memory_gb': memoryGb,
  'storage_gb': storageGb,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('cpu_cores') && json['cpu_cores'] is num &&
      json.containsKey('memory_gb') && json['memory_gb'] is num &&
      json.containsKey('storage_gb') && json['storage_gb'] is num; } 
ActionsHostedRunnerMachineSpec copyWith({String? id, int? cpuCores, int? memoryGb, int? storageGb, }) { return ActionsHostedRunnerMachineSpec(
  id: id ?? this.id,
  cpuCores: cpuCores ?? this.cpuCores,
  memoryGb: memoryGb ?? this.memoryGb,
  storageGb: storageGb ?? this.storageGb,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ActionsHostedRunnerMachineSpec &&
          id == other.id &&
          cpuCores == other.cpuCores &&
          memoryGb == other.memoryGb &&
          storageGb == other.storageGb; } 
@override int get hashCode { return Object.hash(id, cpuCores, memoryGb, storageGb); } 
@override String toString() { return 'ActionsHostedRunnerMachineSpec(id: $id, cpuCores: $cpuCores, memoryGb: $memoryGb, storageGb: $storageGb)'; } 
 }
