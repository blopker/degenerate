// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'chat_completion_request_message_content_part_text.dart';/// A value that is one of: `ChatCompletionRequestMessageContentPartText`.
sealed class ChatCompletionRequestToolMessageContentPart {const ChatCompletionRequestToolMessageContentPart();

factory ChatCompletionRequestToolMessageContentPart.fromJson(Map<String, dynamic> json) {   if (ChatCompletionRequestMessageContentPartText.canParse(json)) {
    return ChatCompletionRequestToolMessageContentPartChatCompletionRequestMessageContentPartText(ChatCompletionRequestMessageContentPartText.fromJson(json));
  }
  return ChatCompletionRequestToolMessageContentPart$Unknown(json); }

/// The underlying raw value.
dynamic get value;
dynamic toJson() { return value; } 
 }
@immutable final class ChatCompletionRequestToolMessageContentPartChatCompletionRequestMessageContentPartText extends ChatCompletionRequestToolMessageContentPart {const ChatCompletionRequestToolMessageContentPartChatCompletionRequestMessageContentPartText(this._value);

final ChatCompletionRequestMessageContentPartText _value;

@override ChatCompletionRequestMessageContentPartText get value { return _value; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChatCompletionRequestToolMessageContentPartChatCompletionRequestMessageContentPartText && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ChatCompletionRequestToolMessageContentPart.chatCompletionRequestMessageContentPartText($_value)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
@immutable final class ChatCompletionRequestToolMessageContentPart$Unknown extends ChatCompletionRequestToolMessageContentPart {const ChatCompletionRequestToolMessageContentPart$Unknown(this._value);

final dynamic _value;

@override dynamic get value { return _value ?? ''; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChatCompletionRequestToolMessageContentPart$Unknown && _value == other._value; } 
@override int get hashCode { return _value.hashCode; } 
@override String toString() { return 'ChatCompletionRequestToolMessageContentPart.unknown($_value)'; } 
 }
