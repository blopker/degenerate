// GENERATED CODE - DO NOT MODIFY BY HAND

import 'cc_observability_logs.dart';/// Settings for observability such as logging.
final class CcObservability {const CcObservability({this.logs});

factory CcObservability.fromJson(Map<String, dynamic> json) { return CcObservability(
  logs: json['logs'] != null ? CcObservabilityLogs.fromJson(json['logs'] as Map<String, dynamic>) : null,
); }

final CcObservabilityLogs? logs;

Map<String, dynamic> toJson() { return {
  if (logs != null) 'logs': logs?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'logs'}.contains(key)); } 
CcObservability copyWith({CcObservabilityLogs Function()? logs}) { return CcObservability(
  logs: logs != null ? logs() : this.logs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CcObservability &&
          logs == other.logs; } 
@override int get hashCode { return logs.hashCode; } 
@override String toString() { return 'CcObservability(logs: $logs)'; } 
 }
