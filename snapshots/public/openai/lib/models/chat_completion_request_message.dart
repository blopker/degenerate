// GENERATED CODE - DO NOT MODIFY BY HAND

import 'chat_completion_request_assistant_message.dart';import 'chat_completion_request_developer_message.dart';import 'chat_completion_request_function_message.dart';import 'chat_completion_request_system_message.dart';import 'chat_completion_request_tool_message.dart';import 'chat_completion_request_user_message.dart';sealed class ChatCompletionRequestMessage {const ChatCompletionRequestMessage();

/// Deserialize from JSON, dispatching on the `role` discriminator.
factory ChatCompletionRequestMessage.fromJson(Map<String, dynamic> json) { return switch (json['role']) {
  'developer' => ChatCompletionRequestMessageDeveloper.fromJson(json),
  'system' => ChatCompletionRequestMessageSystem.fromJson(json),
  'user' => ChatCompletionRequestMessageUser.fromJson(json),
  'assistant' => ChatCompletionRequestMessageAssistant.fromJson(json),
  'tool' => ChatCompletionRequestMessageTool.fromJson(json),
  'function' => ChatCompletionRequestMessageFunction.fromJson(json),
  _ => ChatCompletionRequestMessage$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get role;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is ChatCompletionRequestMessage$Unknown; } 
 }
final class ChatCompletionRequestMessageDeveloper extends ChatCompletionRequestMessage {const ChatCompletionRequestMessageDeveloper(this.chatCompletionRequestDeveloperMessage);

factory ChatCompletionRequestMessageDeveloper.fromJson(Map<String, dynamic> json) { return ChatCompletionRequestMessageDeveloper(ChatCompletionRequestDeveloperMessage.fromJson(json)); }

final ChatCompletionRequestDeveloperMessage chatCompletionRequestDeveloperMessage;

@override String get role { return 'developer'; } 
@override Map<String, dynamic> toJson() { return {...chatCompletionRequestDeveloperMessage.toJson(), 'role': role}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChatCompletionRequestMessageDeveloper && chatCompletionRequestDeveloperMessage == other.chatCompletionRequestDeveloperMessage; } 
@override int get hashCode { return chatCompletionRequestDeveloperMessage.hashCode; } 
@override String toString() { return 'ChatCompletionRequestMessageDeveloper(chatCompletionRequestDeveloperMessage: $chatCompletionRequestDeveloperMessage)'; } 
 }
final class ChatCompletionRequestMessageSystem extends ChatCompletionRequestMessage {const ChatCompletionRequestMessageSystem(this.chatCompletionRequestSystemMessage);

factory ChatCompletionRequestMessageSystem.fromJson(Map<String, dynamic> json) { return ChatCompletionRequestMessageSystem(ChatCompletionRequestSystemMessage.fromJson(json)); }

final ChatCompletionRequestSystemMessage chatCompletionRequestSystemMessage;

@override String get role { return 'system'; } 
@override Map<String, dynamic> toJson() { return {...chatCompletionRequestSystemMessage.toJson(), 'role': role}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChatCompletionRequestMessageSystem && chatCompletionRequestSystemMessage == other.chatCompletionRequestSystemMessage; } 
@override int get hashCode { return chatCompletionRequestSystemMessage.hashCode; } 
@override String toString() { return 'ChatCompletionRequestMessageSystem(chatCompletionRequestSystemMessage: $chatCompletionRequestSystemMessage)'; } 
 }
final class ChatCompletionRequestMessageUser extends ChatCompletionRequestMessage {const ChatCompletionRequestMessageUser(this.chatCompletionRequestUserMessage);

factory ChatCompletionRequestMessageUser.fromJson(Map<String, dynamic> json) { return ChatCompletionRequestMessageUser(ChatCompletionRequestUserMessage.fromJson(json)); }

final ChatCompletionRequestUserMessage chatCompletionRequestUserMessage;

@override String get role { return 'user'; } 
@override Map<String, dynamic> toJson() { return {...chatCompletionRequestUserMessage.toJson(), 'role': role}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChatCompletionRequestMessageUser && chatCompletionRequestUserMessage == other.chatCompletionRequestUserMessage; } 
@override int get hashCode { return chatCompletionRequestUserMessage.hashCode; } 
@override String toString() { return 'ChatCompletionRequestMessageUser(chatCompletionRequestUserMessage: $chatCompletionRequestUserMessage)'; } 
 }
final class ChatCompletionRequestMessageAssistant extends ChatCompletionRequestMessage {const ChatCompletionRequestMessageAssistant(this.chatCompletionRequestAssistantMessage);

factory ChatCompletionRequestMessageAssistant.fromJson(Map<String, dynamic> json) { return ChatCompletionRequestMessageAssistant(ChatCompletionRequestAssistantMessage.fromJson(json)); }

final ChatCompletionRequestAssistantMessage chatCompletionRequestAssistantMessage;

@override String get role { return 'assistant'; } 
@override Map<String, dynamic> toJson() { return {...chatCompletionRequestAssistantMessage.toJson(), 'role': role}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChatCompletionRequestMessageAssistant && chatCompletionRequestAssistantMessage == other.chatCompletionRequestAssistantMessage; } 
@override int get hashCode { return chatCompletionRequestAssistantMessage.hashCode; } 
@override String toString() { return 'ChatCompletionRequestMessageAssistant(chatCompletionRequestAssistantMessage: $chatCompletionRequestAssistantMessage)'; } 
 }
final class ChatCompletionRequestMessageTool extends ChatCompletionRequestMessage {const ChatCompletionRequestMessageTool(this.chatCompletionRequestToolMessage);

factory ChatCompletionRequestMessageTool.fromJson(Map<String, dynamic> json) { return ChatCompletionRequestMessageTool(ChatCompletionRequestToolMessage.fromJson(json)); }

final ChatCompletionRequestToolMessage chatCompletionRequestToolMessage;

@override String get role { return 'tool'; } 
@override Map<String, dynamic> toJson() { return {...chatCompletionRequestToolMessage.toJson(), 'role': role}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChatCompletionRequestMessageTool && chatCompletionRequestToolMessage == other.chatCompletionRequestToolMessage; } 
@override int get hashCode { return chatCompletionRequestToolMessage.hashCode; } 
@override String toString() { return 'ChatCompletionRequestMessageTool(chatCompletionRequestToolMessage: $chatCompletionRequestToolMessage)'; } 
 }
final class ChatCompletionRequestMessageFunction extends ChatCompletionRequestMessage {const ChatCompletionRequestMessageFunction(this.chatCompletionRequestFunctionMessage);

factory ChatCompletionRequestMessageFunction.fromJson(Map<String, dynamic> json) { return ChatCompletionRequestMessageFunction(ChatCompletionRequestFunctionMessage.fromJson(json)); }

final ChatCompletionRequestFunctionMessage chatCompletionRequestFunctionMessage;

@override String get role { return 'function'; } 
@override Map<String, dynamic> toJson() { return {...chatCompletionRequestFunctionMessage.toJson(), 'role': role}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChatCompletionRequestMessageFunction && chatCompletionRequestFunctionMessage == other.chatCompletionRequestFunctionMessage; } 
@override int get hashCode { return chatCompletionRequestFunctionMessage.hashCode; } 
@override String toString() { return 'ChatCompletionRequestMessageFunction(chatCompletionRequestFunctionMessage: $chatCompletionRequestFunctionMessage)'; } 
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
