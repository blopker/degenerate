// GENERATED CODE - DO NOT MODIFY BY HAND

/// Resource limits for the Worker.
final class WorkersVersionItemFullResourcesScriptRuntimeLimits {const WorkersVersionItemFullResourcesScriptRuntimeLimits({this.cpuMs});

factory WorkersVersionItemFullResourcesScriptRuntimeLimits.fromJson(Map<String, dynamic> json) { return WorkersVersionItemFullResourcesScriptRuntimeLimits(
  cpuMs: json['cpu_ms'] != null ? (json['cpu_ms'] as num).toInt() : null,
); }

/// The amount of CPU time this Worker can use in milliseconds.
final int? cpuMs;

Map<String, dynamic> toJson() { return {
  'cpu_ms': ?cpuMs,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'cpu_ms'}.contains(key)); } 
WorkersVersionItemFullResourcesScriptRuntimeLimits copyWith({int Function()? cpuMs}) { return WorkersVersionItemFullResourcesScriptRuntimeLimits(
  cpuMs: cpuMs != null ? cpuMs() : this.cpuMs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersVersionItemFullResourcesScriptRuntimeLimits &&
          cpuMs == other.cpuMs; } 
@override int get hashCode { return cpuMs.hashCode; } 
@override String toString() { return 'WorkersVersionItemFullResourcesScriptRuntimeLimits(cpuMs: $cpuMs)'; } 
 }
