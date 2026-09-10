// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Log settings for the Worker.
@immutable final class WorkersWorkerObservabilityLogs {const WorkersWorkerObservabilityLogs({this.enabled, this.headSamplingRate, this.invocationLogs, });

factory WorkersWorkerObservabilityLogs.fromJson(Map<String, dynamic> json) { return WorkersWorkerObservabilityLogs(
  enabled: json['enabled'] as bool?,
  headSamplingRate: json['head_sampling_rate'] != null ? (json['head_sampling_rate'] as num).toDouble() : null,
  invocationLogs: json['invocation_logs'] as bool?,
); }

/// Whether logs are enabled for the Worker.
final bool? enabled;

/// The sampling rate for logs. From 0 to 1 (1 = 100%, 0.1 = 10%).
final double? headSamplingRate;

/// Whether [invocation logs](https://developers.cloudflare.com/workers/observability/logs/workers-logs/#invocation-logs) are enabled for the Worker.
final bool? invocationLogs;

/// The value with the schema default applied when absent.
bool get enabledOrDefault { return enabled ?? false; } 
/// The value with the schema default applied when absent.
double get headSamplingRateOrDefault { return headSamplingRate ?? 1.0; } 
/// The value with the schema default applied when absent.
bool get invocationLogsOrDefault { return invocationLogs ?? true; } 
Map<String, dynamic> toJson() { return {
  'enabled': ?enabled,
  'head_sampling_rate': ?headSamplingRate,
  'invocation_logs': ?invocationLogs,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled', 'head_sampling_rate', 'invocation_logs'}.contains(key)); } 
WorkersWorkerObservabilityLogs copyWith({bool? Function()? enabled, double? Function()? headSamplingRate, bool? Function()? invocationLogs, }) { return WorkersWorkerObservabilityLogs(
  enabled: enabled != null ? enabled() : this.enabled,
  headSamplingRate: headSamplingRate != null ? headSamplingRate() : this.headSamplingRate,
  invocationLogs: invocationLogs != null ? invocationLogs() : this.invocationLogs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersWorkerObservabilityLogs &&
          enabled == other.enabled &&
          headSamplingRate == other.headSamplingRate &&
          invocationLogs == other.invocationLogs; } 
@override int get hashCode { return Object.hash(enabled, headSamplingRate, invocationLogs); } 
@override String toString() { return 'WorkersWorkerObservabilityLogs(enabled: $enabled, headSamplingRate: $headSamplingRate, invocationLogs: $invocationLogs)'; } 
 }
