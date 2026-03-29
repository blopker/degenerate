// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostEventCreateBulkResponse202CreatedEvents {const PostEventCreateBulkResponse202CreatedEvents({required this.eventIndex, required this.shardId, required this.uuid, });

factory PostEventCreateBulkResponse202CreatedEvents.fromJson(Map<String, dynamic> json) { return PostEventCreateBulkResponse202CreatedEvents(
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
PostEventCreateBulkResponse202CreatedEvents copyWith({double? eventIndex, String? shardId, String? uuid, }) { return PostEventCreateBulkResponse202CreatedEvents(
  eventIndex: eventIndex ?? this.eventIndex,
  shardId: shardId ?? this.shardId,
  uuid: uuid ?? this.uuid,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostEventCreateBulkResponse202CreatedEvents &&
          eventIndex == other.eventIndex &&
          shardId == other.shardId &&
          uuid == other.uuid; } 
@override int get hashCode { return Object.hash(eventIndex, shardId, uuid); } 
@override String toString() { return 'PostEventCreateBulkResponse202CreatedEvents(eventIndex: $eventIndex, shardId: $shardId, uuid: $uuid)'; } 
 }
