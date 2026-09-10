// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_observability_logs.dart';/// Observability settings for the Worker.
@immutable final class WorkersObservability {const WorkersObservability({required this.enabled, this.headSamplingRate = const Omittable.absent(), this.logs = const Omittable.absent(), });

factory WorkersObservability.fromJson(Map<String, dynamic> json) { return WorkersObservability(
  enabled: json['enabled'] as bool,
  headSamplingRate: json.containsKey('head_sampling_rate') ? Omittable(json['head_sampling_rate'] != null ? (json['head_sampling_rate'] as num).toDouble() : null) : const Omittable.absent(),
  logs: json.containsKey('logs') ? Omittable(json['logs'] != null ? WorkersObservabilityLogs.fromJson(json['logs'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// Whether observability is enabled for the Worker.
final bool enabled;

/// The sampling rate for incoming requests. From 0 to 1 (1 = 100%, 0.1 = 10%). Default is 1.
final Omittable<double?> headSamplingRate;

/// Log settings for the Worker.
final Omittable<WorkersObservabilityLogs?> logs;

Map<String, dynamic> toJson() { return {
  'enabled': enabled,
  if (headSamplingRate.isPresent) 'head_sampling_rate': headSamplingRate.value,
  if (logs.isPresent) 'logs': logs.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('enabled') && json['enabled'] is bool; } 
WorkersObservability copyWith({bool? enabled, Omittable<double?>? headSamplingRate, Omittable<WorkersObservabilityLogs?>? logs, }) { return WorkersObservability(
  enabled: enabled ?? this.enabled,
  headSamplingRate: headSamplingRate ?? this.headSamplingRate,
  logs: logs ?? this.logs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersObservability &&
          enabled == other.enabled &&
          headSamplingRate == other.headSamplingRate &&
          logs == other.logs; } 
@override int get hashCode { return Object.hash(enabled, headSamplingRate, logs); } 
@override String toString() { return 'WorkersObservability(enabled: $enabled, headSamplingRate: $headSamplingRate, logs: $logs)'; } 
 }
