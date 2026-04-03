// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// User-defined resource limits for Workers with standard usage model.
@immutable final class WorkersUserLimits {const WorkersUserLimits({this.cpuMs});

factory WorkersUserLimits.fromJson(Map<String, dynamic> json) { return WorkersUserLimits(
  cpuMs: json['cpu_ms'] != null ? (json['cpu_ms'] as num).toInt() : null,
); }

/// The amount of CPU time this Worker can use in milliseconds.
final int? cpuMs;

Map<String, dynamic> toJson() { return {
  'cpu_ms': ?cpuMs,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'cpu_ms'}.contains(key)); } 
WorkersUserLimits copyWith({int? Function()? cpuMs}) { return WorkersUserLimits(
  cpuMs: cpuMs != null ? cpuMs() : this.cpuMs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersUserLimits &&
          cpuMs == other.cpuMs; } 
@override int get hashCode { return cpuMs.hashCode; } 
@override String toString() { return 'WorkersUserLimits(cpuMs: $cpuMs)'; } 
 }
