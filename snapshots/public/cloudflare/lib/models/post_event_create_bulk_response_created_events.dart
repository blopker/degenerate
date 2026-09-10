// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostEventCreateBulkResponseCreatedEvents {const PostEventCreateBulkResponseCreatedEvents({required this.eventIndex, required this.shardId, required this.uuid, });

factory PostEventCreateBulkResponseCreatedEvents.fromJson(Map<String, dynamic> json) { return PostEventCreateBulkResponseCreatedEvents(
  eventIndex: (json['eventIndex'] as num).toDouble(),
  shardId: json['shardId'] as String,
  uuid: json['uuid'] as String,
); }

/// Original index in the input data array
final double eventIndex;

/// Dataset ID of the shard where the event was created
final String shardId;

/// UUID of the created event
final String uuid;

Map<String, dynamic> toJson() { return {
  'eventIndex': eventIndex,
  'shardId': shardId,
  'uuid': uuid,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('eventIndex') && json['eventIndex'] is num &&
      json.containsKey('shardId') && json['shardId'] is String &&
      json.containsKey('uuid') && json['uuid'] is String; } 
PostEventCreateBulkResponseCreatedEvents copyWith({double? eventIndex, String? shardId, String? uuid, }) { return PostEventCreateBulkResponseCreatedEvents(
  eventIndex: eventIndex ?? this.eventIndex,
  shardId: shardId ?? this.shardId,
  uuid: uuid ?? this.uuid,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostEventCreateBulkResponseCreatedEvents &&
          eventIndex == other.eventIndex &&
          shardId == other.shardId &&
          uuid == other.uuid; } 
@override int get hashCode { return Object.hash(eventIndex, shardId, uuid); } 
@override String toString() { return 'PostEventCreateBulkResponseCreatedEvents(eventIndex: $eventIndex, shardId: $shardId, uuid: $uuid)'; } 
 }
