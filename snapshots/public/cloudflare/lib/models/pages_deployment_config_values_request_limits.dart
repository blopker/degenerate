// GENERATED CODE - DO NOT MODIFY BY HAND

/// Limits for Pages Functions.
final class PagesDeploymentConfigValuesRequestLimits {const PagesDeploymentConfigValuesRequestLimits({required this.cpuMs});

factory PagesDeploymentConfigValuesRequestLimits.fromJson(Map<String, dynamic> json) { return PagesDeploymentConfigValuesRequestLimits(
  cpuMs: (json['cpu_ms'] as num).toInt(),
); }

/// CPU time limit in milliseconds.
final int cpuMs;

Map<String, dynamic> toJson() { return {
  'cpu_ms': cpuMs,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('cpu_ms') && json['cpu_ms'] is num; } 
PagesDeploymentConfigValuesRequestLimits copyWith({int? cpuMs}) { return PagesDeploymentConfigValuesRequestLimits(
  cpuMs: cpuMs ?? this.cpuMs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PagesDeploymentConfigValuesRequestLimits &&
          cpuMs == other.cpuMs; } 
@override int get hashCode { return cpuMs.hashCode; } 
@override String toString() { return 'PagesDeploymentConfigValuesRequestLimits(cpuMs: $cpuMs)'; } 
 }
