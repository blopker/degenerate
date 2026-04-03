// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The object type, which is always `conversation`.
@immutable final class ConversationResourceObject {const ConversationResourceObject._(this.value);

factory ConversationResourceObject.fromJson(String json) { return switch (json) {
  'conversation' => conversation,
  _ => ConversationResourceObject._(json),
}; }

static const ConversationResourceObject conversation = ConversationResourceObject._('conversation');

static const List<ConversationResourceObject> values = [conversation];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ConversationResourceObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ConversationResourceObject($value)'; } 
 }
@immutable final class ConversationResource {const ConversationResource({required this.id, required this.metadata, required this.createdAt, this.object = ConversationResourceObject.conversation, });

factory ConversationResource.fromJson(Map<String, dynamic> json) { return ConversationResource(
  id: json['id'] as String,
  object: ConversationResourceObject.fromJson(json['object'] as String),
  metadata: json['metadata'],
  createdAt: (json['created_at'] as num).toInt(),
); }

/// The unique ID of the conversation.
final String id;

/// The object type, which is always `conversation`.
final ConversationResourceObject object;

/// Set of 16 key-value pairs that can be attached to an object. This can be         useful for storing additional information about the object in a structured         format, and querying for objects via API or the dashboard.
///         Keys are strings with a maximum length of 64 characters. Values are strings         with a maximum length of 512 characters.
final dynamic metadata;

/// The time at which the conversation was created, measured in seconds since the Unix epoch.
final int createdAt;

Map<String, dynamic> toJson() { return {
  'id': id,
  'object': object.toJson(),
  'metadata': ?metadata,
  'created_at': createdAt,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('object') &&
      json.containsKey('metadata') &&
      json.containsKey('created_at') && json['created_at'] is num; } 
ConversationResource copyWith({String? id, ConversationResourceObject? object, dynamic Function()? metadata, int? createdAt, }) { return ConversationResource(
  id: id ?? this.id,
  object: object ?? this.object,
  metadata: metadata != null ? metadata() : this.metadata,
  createdAt: createdAt ?? this.createdAt,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ConversationResource &&
          id == other.id &&
          object == other.object &&
          metadata == other.metadata &&
          createdAt == other.createdAt; } 
@override int get hashCode { return Object.hash(id, object, metadata, createdAt); } 
@override String toString() { return 'ConversationResource(id: $id, object: $object, metadata: $metadata, createdAt: $createdAt)'; } 
 }
