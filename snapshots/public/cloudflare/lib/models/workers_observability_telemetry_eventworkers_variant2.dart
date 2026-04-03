// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_observability_telemetry_eventworkers_variant2_diagnostics_channel_events.dart';import 'workers_observability_telemetry_eventworkers_variant2_script_version.dart';@immutable final class WorkersObservabilityTelemetryEvent$workersVariant2EventType {const WorkersObservabilityTelemetryEvent$workersVariant2EventType._(this.value);

factory WorkersObservabilityTelemetryEvent$workersVariant2EventType.fromJson(String json) { return switch (json) {
  'fetch' => fetch,
  'scheduled' => scheduled,
  'alarm' => alarm,
  'cron' => cron,
  'queue' => queue,
  'email' => email,
  'tail' => tail,
  'rpc' => rpc,
  'websocket' => websocket,
  'unknown' => unknown,
  _ => WorkersObservabilityTelemetryEvent$workersVariant2EventType._(json),
}; }

static const WorkersObservabilityTelemetryEvent$workersVariant2EventType fetch = WorkersObservabilityTelemetryEvent$workersVariant2EventType._('fetch');

static const WorkersObservabilityTelemetryEvent$workersVariant2EventType scheduled = WorkersObservabilityTelemetryEvent$workersVariant2EventType._('scheduled');

static const WorkersObservabilityTelemetryEvent$workersVariant2EventType alarm = WorkersObservabilityTelemetryEvent$workersVariant2EventType._('alarm');

static const WorkersObservabilityTelemetryEvent$workersVariant2EventType cron = WorkersObservabilityTelemetryEvent$workersVariant2EventType._('cron');

static const WorkersObservabilityTelemetryEvent$workersVariant2EventType queue = WorkersObservabilityTelemetryEvent$workersVariant2EventType._('queue');

static const WorkersObservabilityTelemetryEvent$workersVariant2EventType email = WorkersObservabilityTelemetryEvent$workersVariant2EventType._('email');

static const WorkersObservabilityTelemetryEvent$workersVariant2EventType tail = WorkersObservabilityTelemetryEvent$workersVariant2EventType._('tail');

static const WorkersObservabilityTelemetryEvent$workersVariant2EventType rpc = WorkersObservabilityTelemetryEvent$workersVariant2EventType._('rpc');

static const WorkersObservabilityTelemetryEvent$workersVariant2EventType websocket = WorkersObservabilityTelemetryEvent$workersVariant2EventType._('websocket');

static const WorkersObservabilityTelemetryEvent$workersVariant2EventType unknown = WorkersObservabilityTelemetryEvent$workersVariant2EventType._('unknown');

static const List<WorkersObservabilityTelemetryEvent$workersVariant2EventType> values = [fetch, scheduled, alarm, cron, queue, email, tail, rpc, websocket, unknown];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersObservabilityTelemetryEvent$workersVariant2EventType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkersObservabilityTelemetryEvent\$workersVariant2EventType($value)'; } 
 }
@immutable final class WorkersObservabilityTelemetryEvent$workersVariant2ExecutionModel {const WorkersObservabilityTelemetryEvent$workersVariant2ExecutionModel._(this.value);

factory WorkersObservabilityTelemetryEvent$workersVariant2ExecutionModel.fromJson(String json) { return switch (json) {
  'durableObject' => durableObject,
  'stateless' => stateless,
  _ => WorkersObservabilityTelemetryEvent$workersVariant2ExecutionModel._(json),
}; }

static const WorkersObservabilityTelemetryEvent$workersVariant2ExecutionModel durableObject = WorkersObservabilityTelemetryEvent$workersVariant2ExecutionModel._('durableObject');

static const WorkersObservabilityTelemetryEvent$workersVariant2ExecutionModel stateless = WorkersObservabilityTelemetryEvent$workersVariant2ExecutionModel._('stateless');

static const List<WorkersObservabilityTelemetryEvent$workersVariant2ExecutionModel> values = [durableObject, stateless];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is WorkersObservabilityTelemetryEvent$workersVariant2ExecutionModel && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'WorkersObservabilityTelemetryEvent\$workersVariant2ExecutionModel($value)'; } 
 }
@immutable final class WorkersObservabilityTelemetryEvent$workersVariant2 {const WorkersObservabilityTelemetryEvent$workersVariant2({required this.cpuTimeMs, required this.eventType, required this.outcome, required this.requestId, required this.scriptName, required this.wallTimeMs, this.diagnosticsChannelEvents, this.dispatchNamespace, this.durableObjectId, this.entrypoint, this.event, this.executionModel, this.scriptVersion, this.truncated, });

factory WorkersObservabilityTelemetryEvent$workersVariant2.fromJson(Map<String, dynamic> json) { return WorkersObservabilityTelemetryEvent$workersVariant2(
  cpuTimeMs: (json['cpuTimeMs'] as num).toDouble(),
  diagnosticsChannelEvents: (json['diagnosticsChannelEvents'] as List<dynamic>?)?.map((e) => WorkersObservabilityTelemetryEvent$workersVariant2DiagnosticsChannelEvents.fromJson(e as Map<String, dynamic>)).toList(),
  dispatchNamespace: json['dispatchNamespace'] as String?,
  durableObjectId: json['durableObjectId'] as String?,
  entrypoint: json['entrypoint'] as String?,
  event: json['event'] as Map<String, dynamic>?,
  eventType: WorkersObservabilityTelemetryEvent$workersVariant2EventType.fromJson(json['eventType'] as String),
  executionModel: json['executionModel'] != null ? WorkersObservabilityTelemetryEvent$workersVariant2ExecutionModel.fromJson(json['executionModel'] as String) : null,
  outcome: json['outcome'] as String,
  requestId: json['requestId'] as String,
  scriptName: json['scriptName'] as String,
  scriptVersion: json['scriptVersion'] != null ? WorkersObservabilityTelemetryEvent$workersVariant2ScriptVersion.fromJson(json['scriptVersion'] as Map<String, dynamic>) : null,
  truncated: json['truncated'] as bool?,
  wallTimeMs: (json['wallTimeMs'] as num).toDouble(),
); }

final double cpuTimeMs;

final List<WorkersObservabilityTelemetryEvent$workersVariant2DiagnosticsChannelEvents>? diagnosticsChannelEvents;

final String? dispatchNamespace;

final String? durableObjectId;

final String? entrypoint;

final Map<String,dynamic>? event;

final WorkersObservabilityTelemetryEvent$workersVariant2EventType eventType;

final WorkersObservabilityTelemetryEvent$workersVariant2ExecutionModel? executionModel;

final String outcome;

final String requestId;

final String scriptName;

final WorkersObservabilityTelemetryEvent$workersVariant2ScriptVersion? scriptVersion;

final bool? truncated;

final double wallTimeMs;

Map<String, dynamic> toJson() { return {
  'cpuTimeMs': cpuTimeMs,
  if (diagnosticsChannelEvents != null) 'diagnosticsChannelEvents': diagnosticsChannelEvents?.map((e) => e.toJson()).toList(),
  'dispatchNamespace': ?dispatchNamespace,
  'durableObjectId': ?durableObjectId,
  'entrypoint': ?entrypoint,
  'event': ?event,
  'eventType': eventType.toJson(),
  if (executionModel != null) 'executionModel': executionModel?.toJson(),
  'outcome': outcome,
  'requestId': requestId,
  'scriptName': scriptName,
  if (scriptVersion != null) 'scriptVersion': scriptVersion?.toJson(),
  'truncated': ?truncated,
  'wallTimeMs': wallTimeMs,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('cpuTimeMs') && json['cpuTimeMs'] is num &&
      json.containsKey('eventType') &&
      json.containsKey('outcome') && json['outcome'] is String &&
      json.containsKey('requestId') && json['requestId'] is String &&
      json.containsKey('scriptName') && json['scriptName'] is String &&
      json.containsKey('wallTimeMs') && json['wallTimeMs'] is num; } 
WorkersObservabilityTelemetryEvent$workersVariant2 copyWith({double? cpuTimeMs, List<WorkersObservabilityTelemetryEvent$workersVariant2DiagnosticsChannelEvents> Function()? diagnosticsChannelEvents, String Function()? dispatchNamespace, String Function()? durableObjectId, String Function()? entrypoint, Map<String, dynamic> Function()? event, WorkersObservabilityTelemetryEvent$workersVariant2EventType? eventType, WorkersObservabilityTelemetryEvent$workersVariant2ExecutionModel Function()? executionModel, String? outcome, String? requestId, String? scriptName, WorkersObservabilityTelemetryEvent$workersVariant2ScriptVersion Function()? scriptVersion, bool Function()? truncated, double? wallTimeMs, }) { return WorkersObservabilityTelemetryEvent$workersVariant2(
  cpuTimeMs: cpuTimeMs ?? this.cpuTimeMs,
  diagnosticsChannelEvents: diagnosticsChannelEvents != null ? diagnosticsChannelEvents() : this.diagnosticsChannelEvents,
  dispatchNamespace: dispatchNamespace != null ? dispatchNamespace() : this.dispatchNamespace,
  durableObjectId: durableObjectId != null ? durableObjectId() : this.durableObjectId,
  entrypoint: entrypoint != null ? entrypoint() : this.entrypoint,
  event: event != null ? event() : this.event,
  eventType: eventType ?? this.eventType,
  executionModel: executionModel != null ? executionModel() : this.executionModel,
  outcome: outcome ?? this.outcome,
  requestId: requestId ?? this.requestId,
  scriptName: scriptName ?? this.scriptName,
  scriptVersion: scriptVersion != null ? scriptVersion() : this.scriptVersion,
  truncated: truncated != null ? truncated() : this.truncated,
  wallTimeMs: wallTimeMs ?? this.wallTimeMs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersObservabilityTelemetryEvent$workersVariant2 &&
          cpuTimeMs == other.cpuTimeMs &&
          listEquals(diagnosticsChannelEvents, other.diagnosticsChannelEvents) &&
          dispatchNamespace == other.dispatchNamespace &&
          durableObjectId == other.durableObjectId &&
          entrypoint == other.entrypoint &&
          event == other.event &&
          eventType == other.eventType &&
          executionModel == other.executionModel &&
          outcome == other.outcome &&
          requestId == other.requestId &&
          scriptName == other.scriptName &&
          scriptVersion == other.scriptVersion &&
          truncated == other.truncated &&
          wallTimeMs == other.wallTimeMs; } 
@override int get hashCode { return Object.hash(cpuTimeMs, Object.hashAll(diagnosticsChannelEvents ?? const []), dispatchNamespace, durableObjectId, entrypoint, event, eventType, executionModel, outcome, requestId, scriptName, scriptVersion, truncated, wallTimeMs); } 
@override String toString() { return 'WorkersObservabilityTelemetryEvent\$workersVariant2(cpuTimeMs: $cpuTimeMs, diagnosticsChannelEvents: $diagnosticsChannelEvents, dispatchNamespace: $dispatchNamespace, durableObjectId: $durableObjectId, entrypoint: $entrypoint, event: $event, eventType: $eventType, executionModel: $executionModel, outcome: $outcome, requestId: $requestId, scriptName: $scriptName, scriptVersion: $scriptVersion, truncated: $truncated, wallTimeMs: $wallTimeMs)'; } 
 }
