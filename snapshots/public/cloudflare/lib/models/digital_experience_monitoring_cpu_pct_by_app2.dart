// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class DigitalExperienceMonitoringCpuPctByApp2 {const DigitalExperienceMonitoringCpuPctByApp2({this.cpuPct, this.name, });

factory DigitalExperienceMonitoringCpuPctByApp2.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringCpuPctByApp2(
  cpuPct: json['cpu_pct'] != null ? (json['cpu_pct'] as num).toDouble() : null,
  name: json['name'] as String?,
); }

final double? cpuPct;

final String? name;

Map<String, dynamic> toJson() { return {
  'cpu_pct': ?cpuPct,
  'name': ?name,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'cpu_pct', 'name'}.contains(key)); } 
DigitalExperienceMonitoringCpuPctByApp2 copyWith({double Function()? cpuPct, String Function()? name, }) { return DigitalExperienceMonitoringCpuPctByApp2(
  cpuPct: cpuPct != null ? cpuPct() : this.cpuPct,
  name: name != null ? name() : this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringCpuPctByApp2 &&
          cpuPct == other.cpuPct &&
          name == other.name; } 
@override int get hashCode { return Object.hash(cpuPct, name); } 
@override String toString() { return 'DigitalExperienceMonitoringCpuPctByApp2(cpuPct: $cpuPct, name: $name)'; } 
 }
