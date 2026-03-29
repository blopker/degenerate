// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'chat_completion_response_message.dart';/// The type of this object. It is always set to "list".
/// 
final class ChatCompletionMessageListObject {const ChatCompletionMessageListObject._(this.value);

factory ChatCompletionMessageListObject.fromJson(String json) { return switch (json) {
  'list' => list,
  _ => ChatCompletionMessageListObject._(json),
}; }

static const ChatCompletionMessageListObject list = ChatCompletionMessageListObject._('list');

static const List<ChatCompletionMessageListObject> values = [list];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChatCompletionMessageListObject && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ChatCompletionMessageListObject($value)'; } 
 }
/// An object representing a list of chat completion messages.
/// 
final class ChatCompletionMessageList {const ChatCompletionMessageList({this.object = ChatCompletionMessageListObject.list, required this.data, required this.firstId, required this.lastId, required this.hasMore, });

factory ChatCompletionMessageList.fromJson(Map<String, dynamic> json) { return ChatCompletionMessageList(
  object: ChatCompletionMessageListObject.fromJson(json['object'] as String),
  data: (json['data'] as List<dynamic>).map((e) => ChatCompletionResponseMessage.fromJson(e as Map<String, dynamic>)).toList(),
  firstId: json['first_id'] as String,
  lastId: json['last_id'] as String,
  hasMore: json['has_more'] as bool,
); }

/// The type of this object. It is always set to "list".
/// 
final ChatCompletionMessageListObject object;

/// An array of chat completion message objects.
/// 
final List<ChatCompletionResponseMessage> data;

/// The identifier of the first chat message in the data array.
final String firstId;

/// The identifier of the last chat message in the data array.
final String lastId;

/// Indicates whether there are more chat messages available.
final bool hasMore;

Map<String, dynamic> toJson() { return {
  'object': object.toJson(),
  'data': data.map((e) => e.toJson()).toList(),
  'first_id': firstId,
  'last_id': lastId,
  'has_more': hasMore,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('object') &&
      json.containsKey('data') &&
      json.containsKey('first_id') && json['first_id'] is String &&
      json.containsKey('last_id') && json['last_id'] is String &&
      json.containsKey('has_more') && json['has_more'] is bool; } 
ChatCompletionMessageList copyWith({ChatCompletionMessageListObject? object, List<ChatCompletionResponseMessage>? data, String? firstId, String? lastId, bool? hasMore, }) { return ChatCompletionMessageList(
  object: object ?? this.object,
  data: data ?? this.data,
  firstId: firstId ?? this.firstId,
  lastId: lastId ?? this.lastId,
  hasMore: hasMore ?? this.hasMore,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ChatCompletionMessageList &&
          object == other.object &&
          listEquals(data, other.data) &&
          firstId == other.firstId &&
          lastId == other.lastId &&
          hasMore == other.hasMore; } 
@override int get hashCode { return Object.hash(object, Object.hashAll(data), firstId, lastId, hasMore); } 
@override String toString() { return 'ChatCompletionMessageList(object: $object, data: $data, firstId: $firstId, lastId: $lastId, hasMore: $hasMore)'; } 
 }
