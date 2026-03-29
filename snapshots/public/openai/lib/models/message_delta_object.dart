// GENERATED CODE - DO NOT MODIFY BY HAND

import 'message_delta_object_delta.dart';/// The object type, which is always `thread.message.delta`.
final class MessageDeltaObjectObject {const MessageDeltaObjectObject._(this.value);

factory MessageDeltaObjectObject.fromJson(String json) { return switch (json) {
  'thread.message.delta' => threadMessageDelta,
  _ => MessageDeltaObjectObject._(json),
}; }

static const MessageDeltaObjectObject threadMessageDelta = MessageDeltaObjectObject._('thread.message.delta');

static const List<MessageDeltaObjectObject> values = [threadMessageDelta];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is MessageDeltaObjectObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'MessageDeltaObjectObject($value)'; } 
 }
/// Represents a message delta i.e. any changed fields on a message during streaming.
/// 
final class MessageDeltaObject {const MessageDeltaObject({required this.id, required this.object, required this.delta, });

factory MessageDeltaObject.fromJson(Map<String, dynamic> json) { return MessageDeltaObject(
  id: json['id'] as String,
  object: MessageDeltaObjectObject.fromJson(json['object'] as String),
  delta: MessageDeltaObjectDelta.fromJson(json['delta'] as Map<String, dynamic>),
); }

/// The identifier of the message, which can be referenced in API endpoints.
final String id;

/// The object type, which is always `thread.message.delta`.
final MessageDeltaObjectObject object;

/// The delta containing the fields that have changed on the Message.
final MessageDeltaObjectDelta delta;

Map<String, dynamic> toJson() { return {
  'id': id,
  'object': object.toJson(),
  'delta': delta.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('object') &&
      json.containsKey('delta'); } 
MessageDeltaObject copyWith({String? id, MessageDeltaObjectObject? object, MessageDeltaObjectDelta? delta, }) { return MessageDeltaObject(
  id: id ?? this.id,
  object: object ?? this.object,
  delta: delta ?? this.delta,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MessageDeltaObject &&
          id == other.id &&
          object == other.object &&
          delta == other.delta; } 
@override int get hashCode { return Object.hash(id, object, delta); } 
@override String toString() { return 'MessageDeltaObject(id: $id, object: $object, delta: $delta)'; } 
 }
