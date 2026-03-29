// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mq_event_destination.dart';import 'mq_event_source.dart';import 'mq_event_source_images.dart';import 'mq_event_source_kv.dart';import 'mq_event_source_r2.dart';import 'mq_event_source_super_slurper.dart';import 'mq_event_source_vectorize.dart';import 'mq_event_source_workers_ai_model.dart';import 'mq_event_source_workers_builds_worker.dart';import 'mq_event_source_workflows_workflow.dart';final class MqEventSubscription {const MqEventSubscription({required this.createdAt, required this.destination, required this.enabled, required this.events, required this.id, required this.modifiedAt, required this.name, required this.source, });

factory MqEventSubscription.fromJson(Map<String, dynamic> json) { return MqEventSubscription(
  createdAt: DateTime.parse(json['created_at'] as String),
  destination: MqEventDestination.fromJson(json['destination'] as Map<String, dynamic>),
  enabled: json['enabled'] as bool,
  events: (json['events'] as List<dynamic>).map((e) => e as String).toList(),
  id: json['id'] as String,
  modifiedAt: DateTime.parse(json['modified_at'] as String),
  name: json['name'] as String,
  source: OneOf8.parse(json['source'], fromA: (v) => MqEventSourceImages.fromJson(v as Map<String, dynamic>), fromB: (v) => MqEventSourceKv.fromJson(v as Map<String, dynamic>), fromC: (v) => MqEventSourceR2.fromJson(v as Map<String, dynamic>), fromD: (v) => MqEventSourceSuperSlurper.fromJson(v as Map<String, dynamic>), fromE: (v) => MqEventSourceVectorize.fromJson(v as Map<String, dynamic>), fromF: (v) => MqEventSourceWorkersAiModel.fromJson(v as Map<String, dynamic>), fromG: (v) => MqEventSourceWorkersBuildsWorker.fromJson(v as Map<String, dynamic>), fromH: (v) => MqEventSourceWorkflowsWorkflow.fromJson(v as Map<String, dynamic>),),
); }

/// When the subscription was created
final DateTime createdAt;

final MqEventDestination destination;

/// Whether the subscription is active
final bool enabled;

/// List of event types this subscription handles
final List<String> events;

/// Unique identifier for the subscription
final String id;

/// When the subscription was last modified
final DateTime modifiedAt;

/// Name of the subscription
final String name;

final MqEventSource source;

Map<String, dynamic> toJson() { return {
  'created_at': createdAt.toIso8601String(),
  'destination': destination.toJson(),
  'enabled': enabled,
  'events': events,
  'id': id,
  'modified_at': modifiedAt.toIso8601String(),
  'name': name,
  'source': source.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created_at') && json['created_at'] is String &&
      json.containsKey('destination') &&
      json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('events') &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('modified_at') && json['modified_at'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('source'); } 
MqEventSubscription copyWith({DateTime? createdAt, MqEventDestination? destination, bool? enabled, List<String>? events, String? id, DateTime? modifiedAt, String? name, MqEventSource? source, }) { return MqEventSubscription(
  createdAt: createdAt ?? this.createdAt,
  destination: destination ?? this.destination,
  enabled: enabled ?? this.enabled,
  events: events ?? this.events,
  id: id ?? this.id,
  modifiedAt: modifiedAt ?? this.modifiedAt,
  name: name ?? this.name,
  source: source ?? this.source,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MqEventSubscription &&
          createdAt == other.createdAt &&
          destination == other.destination &&
          enabled == other.enabled &&
          listEquals(events, other.events) &&
          id == other.id &&
          modifiedAt == other.modifiedAt &&
          name == other.name &&
          source == other.source; } 
@override int get hashCode { return Object.hash(createdAt, destination, enabled, Object.hashAll(events), id, modifiedAt, name, source); } 
@override String toString() { return 'MqEventSubscription(createdAt: $createdAt, destination: $destination, enabled: $enabled, events: $events, id: $id, modifiedAt: $modifiedAt, name: $name, source: $source)'; } 
 }
