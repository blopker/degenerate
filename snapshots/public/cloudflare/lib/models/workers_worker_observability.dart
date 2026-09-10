// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_worker_observability_logs.dart';/// Observability settings for the Worker.
@immutable final class WorkersWorkerObservability {const WorkersWorkerObservability({this.enabled, this.headSamplingRate, this.logs, });

factory WorkersWorkerObservability.fromJson(Map<String, dynamic> json) {return WorkersWorkerObservability(
  enabled: json['enabled'] as bool?,
  headSamplingRate: json['head_sampling_rate'] != null ? (json['head_sampling_rate'] as num).toDouble() : null,
  logs: json['logs'] != null ? WorkersWorkerObservabilityLogs.fromJson(json['logs'] as Map<String, dynamic>) : null,
);}

/// Whether observability is enabled for the Worker.
final bool? enabled;

/// The sampling rate for observability. From 0 to 1 (1 = 100%, 0.1 = 10%).
final double? headSamplingRate;

/// Log settings for the Worker.
final WorkersWorkerObservabilityLogs? logs;

/// The value with the schema default applied when absent.
bool get enabledOrDefault {return enabled ?? false;}
/// The value with the schema default applied when absent.
double get headSamplingRateOrDefault {return headSamplingRate ?? 1.0;}
Map<String, dynamic> toJson() {return {
  'enabled': ?enabled,
  'head_sampling_rate': ?headSamplingRate,
  if (logs != null) 'logs': logs?.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'enabled', 'head_sampling_rate', 'logs'}.contains(key));}
WorkersWorkerObservability copyWith({bool? Function()? enabled, double? Function()? headSamplingRate, WorkersWorkerObservabilityLogs? Function()? logs, }) {return WorkersWorkerObservability(
  enabled: enabled != null ? enabled() : this.enabled,
  headSamplingRate: headSamplingRate != null ? headSamplingRate() : this.headSamplingRate,
  logs: logs != null ? logs() : this.logs,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is WorkersWorkerObservability &&
          enabled == other.enabled &&
          headSamplingRate == other.headSamplingRate &&
          logs == other.logs;}
@override int get hashCode {return Object.hash(enabled, headSamplingRate, logs);}
@override String toString() {return 'WorkersWorkerObservability(enabled: $enabled, headSamplingRate: $headSamplingRate, logs: $logs)';}
}
