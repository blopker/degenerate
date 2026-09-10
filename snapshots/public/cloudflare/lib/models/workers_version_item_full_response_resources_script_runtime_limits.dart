// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Resource limits for the Worker.
@immutable final class WorkersVersionItemFullResponseResourcesScriptRuntimeLimits {const WorkersVersionItemFullResponseResourcesScriptRuntimeLimits({this.cpuMs});

factory WorkersVersionItemFullResponseResourcesScriptRuntimeLimits.fromJson(Map<String, dynamic> json) { return WorkersVersionItemFullResponseResourcesScriptRuntimeLimits(
  cpuMs: json['cpu_ms'] != null ? (json['cpu_ms'] as num).toInt() : null,
); }

/// The amount of CPU time this Worker can use in milliseconds.
final int? cpuMs;

Map<String, dynamic> toJson() { return {
  'cpu_ms': ?cpuMs,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'cpu_ms'}.contains(key)); } 
WorkersVersionItemFullResponseResourcesScriptRuntimeLimits copyWith({int? Function()? cpuMs}) { return WorkersVersionItemFullResponseResourcesScriptRuntimeLimits(
  cpuMs: cpuMs != null ? cpuMs() : this.cpuMs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersVersionItemFullResponseResourcesScriptRuntimeLimits &&
          cpuMs == other.cpuMs; } 
@override int get hashCode { return cpuMs.hashCode; } 
@override String toString() { return 'WorkersVersionItemFullResponseResourcesScriptRuntimeLimits(cpuMs: $cpuMs)'; } 
 }
