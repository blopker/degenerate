// GENERATED CODE - DO NOT MODIFY BY HAND

import 'message_object.dart';final class MessageStreamEventThreadMessageIncompleteEvent {const MessageStreamEventThreadMessageIncompleteEvent._(this.value);

factory MessageStreamEventThreadMessageIncompleteEvent.fromJson(String json) { return switch (json) {
  'thread.message.incomplete' => threadMessageIncomplete,
  _ => MessageStreamEventThreadMessageIncompleteEvent._(json),
}; }

static const MessageStreamEventThreadMessageIncompleteEvent threadMessageIncomplete = MessageStreamEventThreadMessageIncompleteEvent._('thread.message.incomplete');

static const List<MessageStreamEventThreadMessageIncompleteEvent> values = [threadMessageIncomplete];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MessageStreamEventThreadMessageIncompleteEvent && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MessageStreamEventThreadMessageIncompleteEvent($value)'; } 
 }
/// Occurs when a [message](/docs/api-reference/messages/object) ends before it is completed.
final class MessageStreamEventThreadMessageIncomplete {const MessageStreamEventThreadMessageIncomplete({required this.event, required this.data, });

factory MessageStreamEventThreadMessageIncomplete.fromJson(Map<String, dynamic> json) { return MessageStreamEventThreadMessageIncomplete(
  event: MessageStreamEventThreadMessageIncompleteEvent.fromJson(json['event'] as String),
  data: MessageObject.fromJson(json['data'] as Map<String, dynamic>),
); }

final MessageStreamEventThreadMessageIncompleteEvent event;

final MessageObject data;

Map<String, dynamic> toJson() { return {
  'event': event.toJson(),
  'data': data.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('event') &&
      json.containsKey('data'); } 
MessageStreamEventThreadMessageIncomplete copyWith({MessageStreamEventThreadMessageIncompleteEvent? event, MessageObject? data, }) { return MessageStreamEventThreadMessageIncomplete(
  event: event ?? this.event,
  data: data ?? this.data,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MessageStreamEventThreadMessageIncomplete &&
          event == other.event &&
          data == other.data; } 
@override int get hashCode { return Object.hash(event, data); } 
@override String toString() { return 'MessageStreamEventThreadMessageIncomplete(event: $event, data: $data)'; } 
 }
