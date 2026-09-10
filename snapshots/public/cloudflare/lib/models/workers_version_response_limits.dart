// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Resource limits enforced at runtime.
@immutable final class WorkersVersionResponseLimits {const WorkersVersionResponseLimits({required this.cpuMs});

factory WorkersVersionResponseLimits.fromJson(Map<String, dynamic> json) {return WorkersVersionResponseLimits(
  cpuMs: (json['cpu_ms'] as num).toInt(),
);}

/// CPU time limit in milliseconds.
final int cpuMs;

Map<String, dynamic> toJson() {return {
  'cpu_ms': cpuMs,
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('cpu_ms') && json['cpu_ms'] is num;}
WorkersVersionResponseLimits copyWith({int? cpuMs}) {return WorkersVersionResponseLimits(
  cpuMs: cpuMs ?? this.cpuMs,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is WorkersVersionResponseLimits &&
          cpuMs == other.cpuMs;}
@override int get hashCode {return cpuMs.hashCode;}
@override String toString() {return 'WorkersVersionResponseLimits(cpuMs: $cpuMs)';}
}
