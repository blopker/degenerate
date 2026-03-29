// GENERATED CODE - DO NOT MODIFY BY HAND

final class ChatCompletionModalities2 {const ChatCompletionModalities2._(this.value);

factory ChatCompletionModalities2.fromJson(String json) { return switch (json) {
  'text' => text,
  'audio' => audio,
  _ => ChatCompletionModalities2._(json),
}; }

static const ChatCompletionModalities2 text = ChatCompletionModalities2._('text');

static const ChatCompletionModalities2 audio = ChatCompletionModalities2._('audio');

static const List<ChatCompletionModalities2> values = [text, audio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChatCompletionModalities2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ChatCompletionModalities2($value)'; } 
 }
