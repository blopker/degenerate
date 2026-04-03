// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Custom resource allocation with explicit vcpu, memory, and disk. Custom resource allocations must adhere to the following limits:
/// - At least 1 vCPU
/// - At least 3 GiB memory for each vCPU
/// - Disk GB can be at most 2x memory in GiB
/// 
@immutable final class CcCustomResourceAllocation {const CcCustomResourceAllocation({required this.diskMb, required this.memoryMib, required this.vcpu, });

factory CcCustomResourceAllocation.fromJson(Map<String, dynamic> json) { return CcCustomResourceAllocation(
  diskMb: (json['disk_mb'] as num).toInt(),
  memoryMib: (json['memory_mib'] as num).toInt(),
  vcpu: (json['vcpu'] as num).toDouble(),
); }

/// The disk size in MB.
final int diskMb;

/// Specify the memory to be used for the deployment, in MiB. The default will be the one configured for the account.
final int memoryMib;

/// Specify the vcpu to be used for the deployment. Vcpu must be at least 1. The input value will be rounded to
/// the nearest 0.0001. The default will be the one configured for the account.
/// 
final double vcpu;

Map<String, dynamic> toJson() { return {
  'disk_mb': diskMb,
  'memory_mib': memoryMib,
  'vcpu': vcpu,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('disk_mb') && json['disk_mb'] is num &&
      json.containsKey('memory_mib') && json['memory_mib'] is num &&
      json.containsKey('vcpu') && json['vcpu'] is num; } 
CcCustomResourceAllocation copyWith({int? diskMb, int? memoryMib, double? vcpu, }) { return CcCustomResourceAllocation(
  diskMb: diskMb ?? this.diskMb,
  memoryMib: memoryMib ?? this.memoryMib,
  vcpu: vcpu ?? this.vcpu,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CcCustomResourceAllocation &&
          diskMb == other.diskMb &&
          memoryMib == other.memoryMib &&
          vcpu == other.vcpu; } 
@override int get hashCode { return Object.hash(diskMb, memoryMib, vcpu); } 
@override String toString() { return 'CcCustomResourceAllocation(diskMb: $diskMb, memoryMib: $memoryMib, vcpu: $vcpu)'; } 
 }
