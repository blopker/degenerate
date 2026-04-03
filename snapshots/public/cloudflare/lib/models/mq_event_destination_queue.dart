// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Type of destination
@immutable final class MqEventDestinationQueueType {const MqEventDestinationQueueType._(this.value);

factory MqEventDestinationQueueType.fromJson(String json) { return switch (json) {
  'queues.queue' => queuesQueue,
  _ => MqEventDestinationQueueType._(json),
}; }

static const MqEventDestinationQueueType queuesQueue = MqEventDestinationQueueType._('queues.queue');

static const List<MqEventDestinationQueueType> values = [queuesQueue];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MqEventDestinationQueueType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MqEventDestinationQueueType($value)'; } 
 }
@immutable final class MqEventDestinationQueue {const MqEventDestinationQueue({required this.queueId, required this.type, });

factory MqEventDestinationQueue.fromJson(Map<String, dynamic> json) { return MqEventDestinationQueue(
  queueId: json['queue_id'] as String,
  type: MqEventDestinationQueueType.fromJson(json['type'] as String),
); }

/// ID of the target queue
final String queueId;

/// Type of destination
final MqEventDestinationQueueType type;

Map<String, dynamic> toJson() { return {
  'queue_id': queueId,
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('queue_id') && json['queue_id'] is String &&
      json.containsKey('type'); } 
MqEventDestinationQueue copyWith({String? queueId, MqEventDestinationQueueType? type, }) { return MqEventDestinationQueue(
  queueId: queueId ?? this.queueId,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MqEventDestinationQueue &&
          queueId == other.queueId &&
          type == other.type; } 
@override int get hashCode { return Object.hash(queueId, type); } 
@override String toString() { return 'MqEventDestinationQueue(queueId: $queueId, type: $type)'; } 
 }
