// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Resource limits enforced at runtime.
@immutable final class WorkersVersionRequestLimits {const WorkersVersionRequestLimits({required this.cpuMs});

factory WorkersVersionRequestLimits.fromJson(Map<String, dynamic> json) { return WorkersVersionRequestLimits(
  cpuMs: (json['cpu_ms'] as num).toInt(),
); }

/// CPU time limit in milliseconds.
final int cpuMs;

Map<String, dynamic> toJson() { return {
  'cpu_ms': cpuMs,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('cpu_ms') && json['cpu_ms'] is num; } 
WorkersVersionRequestLimits copyWith({int? cpuMs}) { return WorkersVersionRequestLimits(
  cpuMs: cpuMs ?? this.cpuMs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersVersionRequestLimits &&
          cpuMs == other.cpuMs; } 
@override int get hashCode { return cpuMs.hashCode; } 
@override String toString() { return 'WorkersVersionRequestLimits(cpuMs: $cpuMs)'; } 
 }
