// GENERATED CODE - DO NOT MODIFY BY HAND

/// Resource limits enforced at runtime.
final class WorkersVersionLimits {const WorkersVersionLimits({required this.cpuMs});

factory WorkersVersionLimits.fromJson(Map<String, dynamic> json) { return WorkersVersionLimits(
  cpuMs: (json['cpu_ms'] as num).toInt(),
); }

/// CPU time limit in milliseconds.
final int cpuMs;

Map<String, dynamic> toJson() { return {
  'cpu_ms': cpuMs,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('cpu_ms') && json['cpu_ms'] is num; } 
WorkersVersionLimits copyWith({int? cpuMs}) { return WorkersVersionLimits(
  cpuMs: cpuMs ?? this.cpuMs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersVersionLimits &&
          cpuMs == other.cpuMs; } 
@override int get hashCode { return cpuMs.hashCode; } 
@override String toString() { return 'WorkersVersionLimits(cpuMs: $cpuMs)'; } 
 }
