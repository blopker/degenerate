// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WorkersWorkerReferencesQueues {const WorkersWorkerReferencesQueues({required this.queueConsumerId, required this.queueId, required this.queueName, });

factory WorkersWorkerReferencesQueues.fromJson(Map<String, dynamic> json) { return WorkersWorkerReferencesQueues(
  queueConsumerId: json['queue_consumer_id'] as String,
  queueId: json['queue_id'] as String,
  queueName: json['queue_name'] as String,
); }

/// ID of the queue consumer configuration.
final String queueConsumerId;

/// ID of the queue.
final String queueId;

/// Name of the queue.
final String queueName;

Map<String, dynamic> toJson() { return {
  'queue_consumer_id': queueConsumerId,
  'queue_id': queueId,
  'queue_name': queueName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('queue_consumer_id') && json['queue_consumer_id'] is String &&
      json.containsKey('queue_id') && json['queue_id'] is String &&
      json.containsKey('queue_name') && json['queue_name'] is String; } 
WorkersWorkerReferencesQueues copyWith({String? queueConsumerId, String? queueId, String? queueName, }) { return WorkersWorkerReferencesQueues(
  queueConsumerId: queueConsumerId ?? this.queueConsumerId,
  queueId: queueId ?? this.queueId,
  queueName: queueName ?? this.queueName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersWorkerReferencesQueues &&
          queueConsumerId == other.queueConsumerId &&
          queueId == other.queueId &&
          queueName == other.queueName; } 
@override int get hashCode { return Object.hash(queueConsumerId, queueId, queueName); } 
@override String toString() { return 'WorkersWorkerReferencesQueues(queueConsumerId: $queueConsumerId, queueId: $queueId, queueName: $queueName)'; } 
 }
