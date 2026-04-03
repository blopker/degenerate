// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Controls diagnostic tracing during the session.
@immutable final class WorkflowTracingParam {const WorkflowTracingParam({this.enabled});

factory WorkflowTracingParam.fromJson(Map<String, dynamic> json) { return WorkflowTracingParam(
  enabled: json['enabled'] as bool?,
); }

/// Whether tracing is enabled during the session. Defaults to true.
final bool? enabled;

Map<String, dynamic> toJson() { return {
  'enabled': ?enabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled'}.contains(key)); } 
WorkflowTracingParam copyWith({bool Function()? enabled}) { return WorkflowTracingParam(
  enabled: enabled != null ? enabled() : this.enabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkflowTracingParam &&
          enabled == other.enabled; } 
@override int get hashCode { return enabled.hashCode; } 
@override String toString() { return 'WorkflowTracingParam(enabled: $enabled)'; } 
 }
