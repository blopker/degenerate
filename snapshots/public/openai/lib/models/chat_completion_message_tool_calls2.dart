// GENERATED CODE - DO NOT MODIFY BY HAND

import 'chat_completion_message_custom_tool_call.dart';import 'chat_completion_message_tool_call.dart';sealed class ChatCompletionMessageToolCalls2 {const ChatCompletionMessageToolCalls2();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory ChatCompletionMessageToolCalls2.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'function' => ChatCompletionMessageToolCalls2Function.fromJson(json),
  'custom' => ChatCompletionMessageToolCalls2Custom.fromJson(json),
  _ => ChatCompletionMessageToolCalls2$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is ChatCompletionMessageToolCalls2$Unknown; } 
 }
final class ChatCompletionMessageToolCalls2Function extends ChatCompletionMessageToolCalls2 {const ChatCompletionMessageToolCalls2Function(this.chatCompletionMessageToolCall);

factory ChatCompletionMessageToolCalls2Function.fromJson(Map<String, dynamic> json) { return ChatCompletionMessageToolCalls2Function(ChatCompletionMessageToolCall.fromJson(json)); }

final ChatCompletionMessageToolCall chatCompletionMessageToolCall;

@override String get type { return 'function'; } 
@override Map<String, dynamic> toJson() { return {...chatCompletionMessageToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChatCompletionMessageToolCalls2Function && chatCompletionMessageToolCall == other.chatCompletionMessageToolCall; } 
@override int get hashCode { return chatCompletionMessageToolCall.hashCode; } 
@override String toString() { return 'ChatCompletionMessageToolCalls2Function(chatCompletionMessageToolCall: $chatCompletionMessageToolCall)'; } 
 }
final class ChatCompletionMessageToolCalls2Custom extends ChatCompletionMessageToolCalls2 {const ChatCompletionMessageToolCalls2Custom(this.chatCompletionMessageCustomToolCall);

factory ChatCompletionMessageToolCalls2Custom.fromJson(Map<String, dynamic> json) { return ChatCompletionMessageToolCalls2Custom(ChatCompletionMessageCustomToolCall.fromJson(json)); }

final ChatCompletionMessageCustomToolCall chatCompletionMessageCustomToolCall;

@override String get type { return 'custom'; } 
@override Map<String, dynamic> toJson() { return {...chatCompletionMessageCustomToolCall.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChatCompletionMessageToolCalls2Custom && chatCompletionMessageCustomToolCall == other.chatCompletionMessageCustomToolCall; } 
@override int get hashCode { return chatCompletionMessageCustomToolCall.hashCode; } 
@override String toString() { return 'ChatCompletionMessageToolCalls2Custom(chatCompletionMessageCustomToolCall: $chatCompletionMessageCustomToolCall)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class ChatCompletionMessageToolCalls2$Unknown extends ChatCompletionMessageToolCalls2 {const ChatCompletionMessageToolCalls2$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChatCompletionMessageToolCalls2$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'ChatCompletionMessageToolCalls2.unknown($json)'; } 
 }
