// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// User-defined resource limits for Workers with standard usage model.
@immutable final class WorkersUserLimits {const WorkersUserLimits({this.cpuMs = const Omittable.absent()});

factory WorkersUserLimits.fromJson(Map<String, dynamic> json) { return WorkersUserLimits(
  cpuMs: json.containsKey('cpu_ms') ? Omittable(json['cpu_ms'] != null ? (json['cpu_ms'] as num).toInt() : null) : const Omittable.absent(),
); }

/// The amount of CPU time this Worker can use in milliseconds.
final Omittable<int?> cpuMs;

Map<String, dynamic> toJson() { return {
  if (cpuMs.isPresent) 'cpu_ms': cpuMs.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'cpu_ms'}.contains(key)); } 
WorkersUserLimits copyWith({Omittable<int?>? cpuMs}) { return WorkersUserLimits(
  cpuMs: cpuMs ?? this.cpuMs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersUserLimits &&
          cpuMs == other.cpuMs; } 
@override int get hashCode { return cpuMs.hashCode; } 
@override String toString() { return 'WorkersUserLimits(cpuMs: $cpuMs)'; } 
 }
