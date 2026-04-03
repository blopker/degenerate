// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_observability_telemetry_event_source.dart';import 'workers_observability_telemetry_eventmetadata.dart';import 'workers_observability_telemetry_eventworkers.dart';import 'workers_observability_telemetry_eventworkers_variant1.dart';import 'workers_observability_telemetry_eventworkers_variant2.dart';/// The data structure of a telemetry event
@immutable final class WorkersObservabilityTelemetryEvent {const WorkersObservabilityTelemetryEvent({required this.$metadata, required this.dataset, required this.source, required this.timestamp, this.$containers, this.$workers, });

factory WorkersObservabilityTelemetryEvent.fromJson(Map<String, dynamic> json) { return WorkersObservabilityTelemetryEvent(
  $containers: (json[r'$containers'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v)),
  $metadata: WorkersObservabilityTelemetryEvent$metadata.fromJson(json[r'$metadata'] as Map<String, dynamic>),
  $workers: json[r'$workers'] != null ? OneOf2.parse(json[r'$workers'], fromA: (v) => WorkersObservabilityTelemetryEvent$workersVariant1.fromJson(v as Map<String, dynamic>), fromB: (v) => WorkersObservabilityTelemetryEvent$workersVariant2.fromJson(v as Map<String, dynamic>),) : null,
  dataset: json['dataset'] as String,
  source: OneOf2.parse(json['source'], fromA: (v) => v as String, fromB: (v) => (v as Map<String, dynamic>).map((k, v) => MapEntry(k, v)),),
  timestamp: (json['timestamp'] as num).toInt(),
); }

/// Cloudflare Containers event information enriches your logs so you can easily identify and debug issues.
final Map<String,dynamic>? $containers;

final WorkersObservabilityTelemetryEvent$metadata $metadata;

/// Cloudflare Workers event information enriches your logs so you can easily identify and debug issues.
final WorkersObservabilityTelemetryEvent$workers? $workers;

final String dataset;

final WorkersObservabilityTelemetryEventSource source;

final int timestamp;

Map<String, dynamic> toJson() { return {
  r'$containers': ?$containers,
  r'$metadata': $metadata.toJson(),
  if ($workers != null) r'$workers': $workers?.toJson(),
  'dataset': dataset,
  'source': source.toJson(),
  'timestamp': timestamp,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey(r'$metadata') &&
      json.containsKey('dataset') && json['dataset'] is String &&
      json.containsKey('source') &&
      json.containsKey('timestamp') && json['timestamp'] is num; } 
WorkersObservabilityTelemetryEvent copyWith({Map<String, dynamic> Function()? $containers, WorkersObservabilityTelemetryEvent$metadata? $metadata, WorkersObservabilityTelemetryEvent$workers Function()? $workers, String? dataset, WorkersObservabilityTelemetryEventSource? source, int? timestamp, }) { return WorkersObservabilityTelemetryEvent(
  $containers: $containers != null ? $containers() : this.$containers,
  $metadata: $metadata ?? this.$metadata,
  $workers: $workers != null ? $workers() : this.$workers,
  dataset: dataset ?? this.dataset,
  source: source ?? this.source,
  timestamp: timestamp ?? this.timestamp,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersObservabilityTelemetryEvent &&
          $containers == other.$containers &&
          $metadata == other.$metadata &&
          $workers == other.$workers &&
          dataset == other.dataset &&
          source == other.source &&
          timestamp == other.timestamp; } 
@override int get hashCode { return Object.hash($containers, $metadata, $workers, dataset, source, timestamp); } 
@override String toString() { return 'WorkersObservabilityTelemetryEvent(\$containers: ${$containers}, \$metadata: ${$metadata}, \$workers: ${$workers}, dataset: $dataset, source: $source, timestamp: $timestamp)'; } 
 }
