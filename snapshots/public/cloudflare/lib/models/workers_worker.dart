// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_worker_observability.dart';import 'workers_worker_references.dart';import 'workers_worker_subdomain.dart';import 'workers_worker_tail_consumers.dart';@immutable final class WorkersWorker {const WorkersWorker({required this.createdOn, required this.id, required this.name, required this.observability, required this.references, required this.subdomain, required this.updatedOn, this.deployedOn, this.logpush = false, this.tags = const [], this.tailConsumers = const [], });

factory WorkersWorker.fromJson(Map<String, dynamic> json) { return WorkersWorker(
  createdOn: DateTime.parse(json['created_on'] as String),
  deployedOn: json['deployed_on'] != null ? DateTime.parse(json['deployed_on'] as String) : null,
  id: json['id'] as String,
  logpush: json['logpush'] as bool,
  name: json['name'] as String,
  observability: WorkersWorkerObservability.fromJson(json['observability'] as Map<String, dynamic>),
  references: WorkersWorkerReferences.fromJson(json['references'] as Map<String, dynamic>),
  subdomain: WorkersWorkerSubdomain.fromJson(json['subdomain'] as Map<String, dynamic>),
  tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
  tailConsumers: (json['tail_consumers'] as List<dynamic>).map((e) => WorkersWorkerTailConsumers.fromJson(e as Map<String, dynamic>)).toList(),
  updatedOn: DateTime.parse(json['updated_on'] as String),
); }

/// When the Worker was created.
final DateTime createdOn;

/// When the Worker's most recent deployment was created. `null` if the Worker has never been deployed.
final DateTime? deployedOn;

/// Immutable ID of the Worker.
final String id;

/// Whether logpush is enabled for the Worker.
final bool logpush;

/// Name of the Worker.
final String name;

/// Observability settings for the Worker.
final WorkersWorkerObservability observability;

/// Other resources that reference the Worker and depend on it existing.
final WorkersWorkerReferences references;

/// Subdomain settings for the Worker.
final WorkersWorkerSubdomain subdomain;

/// Tags associated with the Worker.
final List<String> tags;

/// Other Workers that should consume logs from the Worker.
final List<WorkersWorkerTailConsumers> tailConsumers;

/// When the Worker was most recently updated.
final DateTime updatedOn;

Map<String, dynamic> toJson() { return {
  'created_on': createdOn.toIso8601String(),
  if (deployedOn != null) 'deployed_on': deployedOn?.toIso8601String(),
  'id': id,
  'logpush': logpush,
  'name': name,
  'observability': observability.toJson(),
  'references': references.toJson(),
  'subdomain': subdomain.toJson(),
  'tags': tags,
  'tail_consumers': tailConsumers.map((e) => e.toJson()).toList(),
  'updated_on': updatedOn.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('created_on') && json['created_on'] is String &&
      json.containsKey('id') && json['id'] is String &&
      json.containsKey('logpush') && json['logpush'] is bool &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('observability') &&
      json.containsKey('references') &&
      json.containsKey('subdomain') &&
      json.containsKey('tags') &&
      json.containsKey('tail_consumers') &&
      json.containsKey('updated_on') && json['updated_on'] is String; } 
WorkersWorker copyWith({DateTime? createdOn, DateTime? Function()? deployedOn, String? id, bool? logpush, String? name, WorkersWorkerObservability? observability, WorkersWorkerReferences? references, WorkersWorkerSubdomain? subdomain, List<String>? tags, List<WorkersWorkerTailConsumers>? tailConsumers, DateTime? updatedOn, }) { return WorkersWorker(
  createdOn: createdOn ?? this.createdOn,
  deployedOn: deployedOn != null ? deployedOn() : this.deployedOn,
  id: id ?? this.id,
  logpush: logpush ?? this.logpush,
  name: name ?? this.name,
  observability: observability ?? this.observability,
  references: references ?? this.references,
  subdomain: subdomain ?? this.subdomain,
  tags: tags ?? this.tags,
  tailConsumers: tailConsumers ?? this.tailConsumers,
  updatedOn: updatedOn ?? this.updatedOn,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersWorker &&
          createdOn == other.createdOn &&
          deployedOn == other.deployedOn &&
          id == other.id &&
          logpush == other.logpush &&
          name == other.name &&
          observability == other.observability &&
          references == other.references &&
          subdomain == other.subdomain &&
          listEquals(tags, other.tags) &&
          listEquals(tailConsumers, other.tailConsumers) &&
          updatedOn == other.updatedOn; } 
@override int get hashCode { return Object.hash(createdOn, deployedOn, id, logpush, name, observability, references, subdomain, Object.hashAll(tags), Object.hashAll(tailConsumers), updatedOn); } 
@override String toString() { return 'WorkersWorker(createdOn: $createdOn, deployedOn: $deployedOn, id: $id, logpush: $logpush, name: $name, observability: $observability, references: $references, subdomain: $subdomain, tags: $tags, tailConsumers: $tailConsumers, updatedOn: $updatedOn)'; } 
 }
