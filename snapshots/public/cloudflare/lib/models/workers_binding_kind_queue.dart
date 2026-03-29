// GENERATED CODE - DO NOT MODIFY BY HAND

import 'workers_binding_name.dart';final class WorkersBindingKindQueue {const WorkersBindingKindQueue({required this.name, required this.queueName, required this.type, });

factory WorkersBindingKindQueue.fromJson(Map<String, dynamic> json) { return WorkersBindingKindQueue(
  name: WorkersBindingName.fromJson(json['name'] as String),
  queueName: json['queue_name'] as String,
  type: json['type'] as String,
); }

final WorkersBindingName name;

/// Name of the Queue to bind to.
final String queueName;

/// The kind of resource that the binding provides.
final String type;

Map<String, dynamic> toJson() { return {
  'name': name.toJson(),
  'queue_name': queueName,
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name') &&
      json.containsKey('queue_name') && json['queue_name'] is String &&
      json.containsKey('type') && json['type'] is String; } 
WorkersBindingKindQueue copyWith({WorkersBindingName? name, String? queueName, String? type, }) { return WorkersBindingKindQueue(
  name: name ?? this.name,
  queueName: queueName ?? this.queueName,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersBindingKindQueue &&
          name == other.name &&
          queueName == other.queueName &&
          type == other.type; } 
@override int get hashCode { return Object.hash(name, queueName, type); } 
@override String toString() { return 'WorkersBindingKindQueue(name: $name, queueName: $queueName, type: $type)'; } 
 }
