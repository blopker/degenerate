// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_worker_request_observability.dart';import 'workers_worker_request_subdomain.dart';import 'workers_worker_request_tail_consumers.dart';@immutable final class WorkersWorkerRequest {const WorkersWorkerRequest({required this.logpush, required this.name, required this.observability, required this.subdomain, required this.tags, required this.tailConsumers, });

factory WorkersWorkerRequest.fromJson(Map<String, dynamic> json) {return WorkersWorkerRequest(
  logpush: json['logpush'] as bool,
  name: json['name'] as String,
  observability: WorkersWorkerRequestObservability.fromJson(json['observability'] as Map<String, dynamic>),
  subdomain: WorkersWorkerRequestSubdomain.fromJson(json['subdomain'] as Map<String, dynamic>),
  tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
  tailConsumers: (json['tail_consumers'] as List<dynamic>).map((e) => WorkersWorkerRequestTailConsumers.fromJson(e as Map<String, dynamic>)).toList(),
);}

/// Whether logpush is enabled for the Worker.
final bool logpush;

/// Name of the Worker.
final String name;

/// Observability settings for the Worker.
final WorkersWorkerRequestObservability observability;

/// Subdomain settings for the Worker.
final WorkersWorkerRequestSubdomain subdomain;

/// Tags associated with the Worker.
final List<String> tags;

/// Other Workers that should consume logs from the Worker.
final List<WorkersWorkerRequestTailConsumers> tailConsumers;

Map<String, dynamic> toJson() {return {
  'logpush': logpush,
  'name': name,
  'observability': observability.toJson(),
  'subdomain': subdomain.toJson(),
  'tags': tags,
  'tail_consumers': tailConsumers.map((e) => e.toJson()).toList(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('logpush') && json['logpush'] is bool &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('observability') &&
      json.containsKey('subdomain') &&
      json.containsKey('tags') &&
      json.containsKey('tail_consumers');}
WorkersWorkerRequest copyWith({bool? logpush, String? name, WorkersWorkerRequestObservability? observability, WorkersWorkerRequestSubdomain? subdomain, List<String>? tags, List<WorkersWorkerRequestTailConsumers>? tailConsumers, }) {return WorkersWorkerRequest(
  logpush: logpush ?? this.logpush,
  name: name ?? this.name,
  observability: observability ?? this.observability,
  subdomain: subdomain ?? this.subdomain,
  tags: tags ?? this.tags,
  tailConsumers: tailConsumers ?? this.tailConsumers,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is WorkersWorkerRequest &&
          logpush == other.logpush &&
          name == other.name &&
          observability == other.observability &&
          subdomain == other.subdomain &&
          listEquals(tags, other.tags) &&
          listEquals(tailConsumers, other.tailConsumers);}
@override int get hashCode {return Object.hash(logpush, name, observability, subdomain, Object.hashAll(tags), Object.hashAll(tailConsumers));}
@override String toString() {return 'WorkersWorkerRequest(logpush: $logpush, name: $name, observability: $observability, subdomain: $subdomain, tags: $tags, tailConsumers: $tailConsumers)';}
}
