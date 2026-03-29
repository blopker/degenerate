// GENERATED CODE - DO NOT MODIFY BY HAND

/// The event type, must be `conversation.item.truncate`.
final class RealtimeClientEventConversationItemTruncateType {const RealtimeClientEventConversationItemTruncateType._(this.value);

factory RealtimeClientEventConversationItemTruncateType.fromJson(String json) { return switch (json) {
  'conversation.item.truncate' => conversationItemTruncate,
  _ => RealtimeClientEventConversationItemTruncateType._(json),
}; }

static const RealtimeClientEventConversationItemTruncateType conversationItemTruncate = RealtimeClientEventConversationItemTruncateType._('conversation.item.truncate');

static const List<RealtimeClientEventConversationItemTruncateType> values = [conversationItemTruncate];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is RealtimeClientEventConversationItemTruncateType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'RealtimeClientEventConversationItemTruncateType($value)'; } 
 }
/// Send this event to truncate a previous assistant message’s audio. The server
/// will produce audio faster than realtime, so this event is useful when the user
/// interrupts to truncate audio that has already been sent to the client but not
/// yet played. This will synchronize the server's understanding of the audio with
/// the client's playback.
/// 
/// Truncating audio will delete the server-side text transcript to ensure there
/// is not text in the context that hasn't been heard by the user.
/// 
/// If successful, the server will respond with a `conversation.item.truncated`
/// event.
/// 
final class RealtimeClientEventConversationItemTruncate {const RealtimeClientEventConversationItemTruncate({this.eventId, required this.type, required this.itemId, required this.contentIndex, required this.audioEndMs, });

factory RealtimeClientEventConversationItemTruncate.fromJson(Map<String, dynamic> json) { return RealtimeClientEventConversationItemTruncate(
  eventId: json['event_id'] as String?,
  type: RealtimeClientEventConversationItemTruncateType.fromJson(json['type'] as String),
  itemId: json['item_id'] as String,
  contentIndex: (json['content_index'] as num).toInt(),
  audioEndMs: (json['audio_end_ms'] as num).toInt(),
); }

/// Optional client-generated ID used to identify this event.
final String? eventId;

/// The event type, must be `conversation.item.truncate`.
final RealtimeClientEventConversationItemTruncateType type;

/// The ID of the assistant message item to truncate. Only assistant message
/// items can be truncated.
/// 
final String itemId;

/// The index of the content part to truncate. Set this to `0`.
final int contentIndex;

/// Inclusive duration up to which audio is truncated, in milliseconds. If
/// the audio_end_ms is greater than the actual audio duration, the server
/// will respond with an error.
/// 
final int audioEndMs;

Map<String, dynamic> toJson() { return {
  'event_id': ?eventId,
  'type': type.toJson(),
  'item_id': itemId,
  'content_index': contentIndex,
  'audio_end_ms': audioEndMs,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('item_id') && json['item_id'] is String &&
      json.containsKey('content_index') && json['content_index'] is num &&
      json.containsKey('audio_end_ms') && json['audio_end_ms'] is num; } 
RealtimeClientEventConversationItemTruncate copyWith({String Function()? eventId, RealtimeClientEventConversationItemTruncateType? type, String? itemId, int? contentIndex, int? audioEndMs, }) { return RealtimeClientEventConversationItemTruncate(
  eventId: eventId != null ? eventId() : this.eventId,
  type: type ?? this.type,
  itemId: itemId ?? this.itemId,
  contentIndex: contentIndex ?? this.contentIndex,
  audioEndMs: audioEndMs ?? this.audioEndMs,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is RealtimeClientEventConversationItemTruncate &&
          eventId == other.eventId &&
          type == other.type &&
          itemId == other.itemId &&
          contentIndex == other.contentIndex &&
          audioEndMs == other.audioEndMs; } 
@override int get hashCode { return Object.hash(eventId, type, itemId, contentIndex, audioEndMs); } 
@override String toString() { return 'RealtimeClientEventConversationItemTruncate(eventId: $eventId, type: $type, itemId: $itemId, contentIndex: $contentIndex, audioEndMs: $audioEndMs)'; } 
 }
