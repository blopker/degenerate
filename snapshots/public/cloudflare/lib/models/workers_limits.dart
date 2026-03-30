// GENERATED CODE - DO NOT MODIFY BY HAND

/// Limits to apply for this Worker.
final class WorkersLimits {const WorkersLimits({this.cpuMs});

factory WorkersLimits.fromJson(Map<String, dynamic> json) { return WorkersLimits(
  cpuMs: json['cpu_ms'] != null ? (json['cpu_ms'] as num).toInt() : null,
); }

/// The amount of CPU time this Worker can use in milliseconds.
final int? cpuMs;

Map<String, dynamic> toJson() { return {
  'cpu_ms': ?cpuMs,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'cpu_ms'}.contains(key)); } 
WorkersLimits copyWith({int Function()? cpuMs}) { return WorkersLimits(
  cpuMs: cpuMs != null ? cpuMs() : this.cpuMs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersLimits &&
          cpuMs == other.cpuMs; } 
@override int get hashCode { return cpuMs.hashCode; } 
@override String toString() { return 'WorkersLimits(cpuMs: $cpuMs)'; } 
 }
