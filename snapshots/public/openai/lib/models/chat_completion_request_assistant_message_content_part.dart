// GENERATED CODE - DO NOT MODIFY BY HAND

import 'chat_completion_request_message_content_part_refusal.dart';import 'chat_completion_request_message_content_part_text.dart';sealed class ChatCompletionRequestAssistantMessageContentPart {const ChatCompletionRequestAssistantMessageContentPart();

/// Deserialize from JSON, dispatching on the `type` discriminator.
factory ChatCompletionRequestAssistantMessageContentPart.fromJson(Map<String, dynamic> json) { return switch (json['type']) {
  'ChatCompletionRequestMessageContentPartText' => ChatCompletionRequestAssistantMessageContentPartChatCompletionRequestMessageContentPartText.fromJson(json),
  'ChatCompletionRequestMessageContentPartRefusal' => ChatCompletionRequestAssistantMessageContentPartChatCompletionRequestMessageContentPartRefusal.fromJson(json),
  _ => ChatCompletionRequestAssistantMessageContentPart$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get type;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is ChatCompletionRequestAssistantMessageContentPart$Unknown; } 
 }
final class ChatCompletionRequestAssistantMessageContentPartChatCompletionRequestMessageContentPartText extends ChatCompletionRequestAssistantMessageContentPart {const ChatCompletionRequestAssistantMessageContentPartChatCompletionRequestMessageContentPartText(this.chatCompletionRequestMessageContentPartText);

factory ChatCompletionRequestAssistantMessageContentPartChatCompletionRequestMessageContentPartText.fromJson(Map<String, dynamic> json) { return ChatCompletionRequestAssistantMessageContentPartChatCompletionRequestMessageContentPartText(ChatCompletionRequestMessageContentPartText.fromJson(json)); }

final ChatCompletionRequestMessageContentPartText chatCompletionRequestMessageContentPartText;

@override String get type { return 'ChatCompletionRequestMessageContentPartText'; } 
@override Map<String, dynamic> toJson() { return {...chatCompletionRequestMessageContentPartText.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChatCompletionRequestAssistantMessageContentPartChatCompletionRequestMessageContentPartText && chatCompletionRequestMessageContentPartText == other.chatCompletionRequestMessageContentPartText; } 
@override int get hashCode { return chatCompletionRequestMessageContentPartText.hashCode; } 
@override String toString() { return 'ChatCompletionRequestAssistantMessageContentPartChatCompletionRequestMessageContentPartText(chatCompletionRequestMessageContentPartText: $chatCompletionRequestMessageContentPartText)'; } 
 }
final class ChatCompletionRequestAssistantMessageContentPartChatCompletionRequestMessageContentPartRefusal extends ChatCompletionRequestAssistantMessageContentPart {const ChatCompletionRequestAssistantMessageContentPartChatCompletionRequestMessageContentPartRefusal(this.chatCompletionRequestMessageContentPartRefusal);

factory ChatCompletionRequestAssistantMessageContentPartChatCompletionRequestMessageContentPartRefusal.fromJson(Map<String, dynamic> json) { return ChatCompletionRequestAssistantMessageContentPartChatCompletionRequestMessageContentPartRefusal(ChatCompletionRequestMessageContentPartRefusal.fromJson(json)); }

final ChatCompletionRequestMessageContentPartRefusal chatCompletionRequestMessageContentPartRefusal;

@override String get type { return 'ChatCompletionRequestMessageContentPartRefusal'; } 
@override Map<String, dynamic> toJson() { return {...chatCompletionRequestMessageContentPartRefusal.toJson(), 'type': type}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChatCompletionRequestAssistantMessageContentPartChatCompletionRequestMessageContentPartRefusal && chatCompletionRequestMessageContentPartRefusal == other.chatCompletionRequestMessageContentPartRefusal; } 
@override int get hashCode { return chatCompletionRequestMessageContentPartRefusal.hashCode; } 
@override String toString() { return 'ChatCompletionRequestAssistantMessageContentPartChatCompletionRequestMessageContentPartRefusal(chatCompletionRequestMessageContentPartRefusal: $chatCompletionRequestMessageContentPartRefusal)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class ChatCompletionRequestAssistantMessageContentPart$Unknown extends ChatCompletionRequestAssistantMessageContentPart {const ChatCompletionRequestAssistantMessageContentPart$Unknown(this.json);

final Map<String, dynamic> json;

@override String get type { return json['type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChatCompletionRequestAssistantMessageContentPart$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'ChatCompletionRequestAssistantMessageContentPart.unknown($json)'; } 
 }
