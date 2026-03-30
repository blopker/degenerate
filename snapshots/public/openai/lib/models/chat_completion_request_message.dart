// GENERATED CODE - DO NOT MODIFY BY HAND

import 'chat_completion_request_assistant_message.dart';import 'chat_completion_request_developer_message.dart';import 'chat_completion_request_function_message.dart';import 'chat_completion_request_system_message.dart';import 'chat_completion_request_tool_message.dart';import 'chat_completion_request_user_message.dart';sealed class ChatCompletionRequestMessage {const ChatCompletionRequestMessage();

/// Deserialize from JSON, dispatching on the `role` discriminator.
factory ChatCompletionRequestMessage.fromJson(Map<String, dynamic> json) { return switch (json['role']) {
  'ChatCompletionRequestDeveloperMessage' => ChatCompletionRequestMessageChatCompletionRequestDeveloperMessage.fromJson(json),
  'ChatCompletionRequestSystemMessage' => ChatCompletionRequestMessageChatCompletionRequestSystemMessage.fromJson(json),
  'ChatCompletionRequestUserMessage' => ChatCompletionRequestMessageChatCompletionRequestUserMessage.fromJson(json),
  'ChatCompletionRequestAssistantMessage' => ChatCompletionRequestMessageChatCompletionRequestAssistantMessage.fromJson(json),
  'ChatCompletionRequestToolMessage' => ChatCompletionRequestMessageChatCompletionRequestToolMessage.fromJson(json),
  'ChatCompletionRequestFunctionMessage' => ChatCompletionRequestMessageChatCompletionRequestFunctionMessage.fromJson(json),
  _ => ChatCompletionRequestMessage$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get role;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is ChatCompletionRequestMessage$Unknown; } 
 }
final class ChatCompletionRequestMessageChatCompletionRequestDeveloperMessage extends ChatCompletionRequestMessage {const ChatCompletionRequestMessageChatCompletionRequestDeveloperMessage(this.chatCompletionRequestDeveloperMessage);

factory ChatCompletionRequestMessageChatCompletionRequestDeveloperMessage.fromJson(Map<String, dynamic> json) { return ChatCompletionRequestMessageChatCompletionRequestDeveloperMessage(ChatCompletionRequestDeveloperMessage.fromJson(json)); }

final ChatCompletionRequestDeveloperMessage chatCompletionRequestDeveloperMessage;

@override String get role { return 'ChatCompletionRequestDeveloperMessage'; } 
@override Map<String, dynamic> toJson() { return {...chatCompletionRequestDeveloperMessage.toJson(), 'role': role}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChatCompletionRequestMessageChatCompletionRequestDeveloperMessage && chatCompletionRequestDeveloperMessage == other.chatCompletionRequestDeveloperMessage; } 
@override int get hashCode { return chatCompletionRequestDeveloperMessage.hashCode; } 
@override String toString() { return 'ChatCompletionRequestMessageChatCompletionRequestDeveloperMessage(chatCompletionRequestDeveloperMessage: $chatCompletionRequestDeveloperMessage)'; } 
 }
final class ChatCompletionRequestMessageChatCompletionRequestSystemMessage extends ChatCompletionRequestMessage {const ChatCompletionRequestMessageChatCompletionRequestSystemMessage(this.chatCompletionRequestSystemMessage);

factory ChatCompletionRequestMessageChatCompletionRequestSystemMessage.fromJson(Map<String, dynamic> json) { return ChatCompletionRequestMessageChatCompletionRequestSystemMessage(ChatCompletionRequestSystemMessage.fromJson(json)); }

final ChatCompletionRequestSystemMessage chatCompletionRequestSystemMessage;

@override String get role { return 'ChatCompletionRequestSystemMessage'; } 
@override Map<String, dynamic> toJson() { return {...chatCompletionRequestSystemMessage.toJson(), 'role': role}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChatCompletionRequestMessageChatCompletionRequestSystemMessage && chatCompletionRequestSystemMessage == other.chatCompletionRequestSystemMessage; } 
@override int get hashCode { return chatCompletionRequestSystemMessage.hashCode; } 
@override String toString() { return 'ChatCompletionRequestMessageChatCompletionRequestSystemMessage(chatCompletionRequestSystemMessage: $chatCompletionRequestSystemMessage)'; } 
 }
final class ChatCompletionRequestMessageChatCompletionRequestUserMessage extends ChatCompletionRequestMessage {const ChatCompletionRequestMessageChatCompletionRequestUserMessage(this.chatCompletionRequestUserMessage);

factory ChatCompletionRequestMessageChatCompletionRequestUserMessage.fromJson(Map<String, dynamic> json) { return ChatCompletionRequestMessageChatCompletionRequestUserMessage(ChatCompletionRequestUserMessage.fromJson(json)); }

final ChatCompletionRequestUserMessage chatCompletionRequestUserMessage;

@override String get role { return 'ChatCompletionRequestUserMessage'; } 
@override Map<String, dynamic> toJson() { return {...chatCompletionRequestUserMessage.toJson(), 'role': role}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChatCompletionRequestMessageChatCompletionRequestUserMessage && chatCompletionRequestUserMessage == other.chatCompletionRequestUserMessage; } 
@override int get hashCode { return chatCompletionRequestUserMessage.hashCode; } 
@override String toString() { return 'ChatCompletionRequestMessageChatCompletionRequestUserMessage(chatCompletionRequestUserMessage: $chatCompletionRequestUserMessage)'; } 
 }
final class ChatCompletionRequestMessageChatCompletionRequestAssistantMessage extends ChatCompletionRequestMessage {const ChatCompletionRequestMessageChatCompletionRequestAssistantMessage(this.chatCompletionRequestAssistantMessage);

factory ChatCompletionRequestMessageChatCompletionRequestAssistantMessage.fromJson(Map<String, dynamic> json) { return ChatCompletionRequestMessageChatCompletionRequestAssistantMessage(ChatCompletionRequestAssistantMessage.fromJson(json)); }

final ChatCompletionRequestAssistantMessage chatCompletionRequestAssistantMessage;

@override String get role { return 'ChatCompletionRequestAssistantMessage'; } 
@override Map<String, dynamic> toJson() { return {...chatCompletionRequestAssistantMessage.toJson(), 'role': role}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChatCompletionRequestMessageChatCompletionRequestAssistantMessage && chatCompletionRequestAssistantMessage == other.chatCompletionRequestAssistantMessage; } 
@override int get hashCode { return chatCompletionRequestAssistantMessage.hashCode; } 
@override String toString() { return 'ChatCompletionRequestMessageChatCompletionRequestAssistantMessage(chatCompletionRequestAssistantMessage: $chatCompletionRequestAssistantMessage)'; } 
 }
final class ChatCompletionRequestMessageChatCompletionRequestToolMessage extends ChatCompletionRequestMessage {const ChatCompletionRequestMessageChatCompletionRequestToolMessage(this.chatCompletionRequestToolMessage);

factory ChatCompletionRequestMessageChatCompletionRequestToolMessage.fromJson(Map<String, dynamic> json) { return ChatCompletionRequestMessageChatCompletionRequestToolMessage(ChatCompletionRequestToolMessage.fromJson(json)); }

final ChatCompletionRequestToolMessage chatCompletionRequestToolMessage;

@override String get role { return 'ChatCompletionRequestToolMessage'; } 
@override Map<String, dynamic> toJson() { return {...chatCompletionRequestToolMessage.toJson(), 'role': role}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChatCompletionRequestMessageChatCompletionRequestToolMessage && chatCompletionRequestToolMessage == other.chatCompletionRequestToolMessage; } 
@override int get hashCode { return chatCompletionRequestToolMessage.hashCode; } 
@override String toString() { return 'ChatCompletionRequestMessageChatCompletionRequestToolMessage(chatCompletionRequestToolMessage: $chatCompletionRequestToolMessage)'; } 
 }
final class ChatCompletionRequestMessageChatCompletionRequestFunctionMessage extends ChatCompletionRequestMessage {const ChatCompletionRequestMessageChatCompletionRequestFunctionMessage(this.chatCompletionRequestFunctionMessage);

factory ChatCompletionRequestMessageChatCompletionRequestFunctionMessage.fromJson(Map<String, dynamic> json) { return ChatCompletionRequestMessageChatCompletionRequestFunctionMessage(ChatCompletionRequestFunctionMessage.fromJson(json)); }

final ChatCompletionRequestFunctionMessage chatCompletionRequestFunctionMessage;

@override String get role { return 'ChatCompletionRequestFunctionMessage'; } 
@override Map<String, dynamic> toJson() { return {...chatCompletionRequestFunctionMessage.toJson(), 'role': role}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChatCompletionRequestMessageChatCompletionRequestFunctionMessage && chatCompletionRequestFunctionMessage == other.chatCompletionRequestFunctionMessage; } 
@override int get hashCode { return chatCompletionRequestFunctionMessage.hashCode; } 
@override String toString() { return 'ChatCompletionRequestMessageChatCompletionRequestFunctionMessage(chatCompletionRequestFunctionMessage: $chatCompletionRequestFunctionMessage)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class ChatCompletionRequestMessage$Unknown extends ChatCompletionRequestMessage {const ChatCompletionRequestMessage$Unknown(this.json);

final Map<String, dynamic> json;

@override String get role { return json['role'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChatCompletionRequestMessage$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'ChatCompletionRequestMessage.unknown($json)'; } 
 }
