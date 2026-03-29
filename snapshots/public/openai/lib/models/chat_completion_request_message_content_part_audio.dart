// GENERATED CODE - DO NOT MODIFY BY HAND

import 'chat_completion_request_message_content_part_audio_input_audio.dart';/// The type of the content part. Always `input_audio`.
final class ChatCompletionRequestMessageContentPartAudioType {const ChatCompletionRequestMessageContentPartAudioType._(this.value);

factory ChatCompletionRequestMessageContentPartAudioType.fromJson(String json) { return switch (json) {
  'input_audio' => inputAudio,
  _ => ChatCompletionRequestMessageContentPartAudioType._(json),
}; }

static const ChatCompletionRequestMessageContentPartAudioType inputAudio = ChatCompletionRequestMessageContentPartAudioType._('input_audio');

static const List<ChatCompletionRequestMessageContentPartAudioType> values = [inputAudio];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ChatCompletionRequestMessageContentPartAudioType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ChatCompletionRequestMessageContentPartAudioType($value)'; } 
 }
/// Learn about [audio inputs](/docs/guides/audio).
/// 
final class ChatCompletionRequestMessageContentPartAudio {const ChatCompletionRequestMessageContentPartAudio({required this.type, required this.inputAudio, });

factory ChatCompletionRequestMessageContentPartAudio.fromJson(Map<String, dynamic> json) { return ChatCompletionRequestMessageContentPartAudio(
  type: ChatCompletionRequestMessageContentPartAudioType.fromJson(json['type'] as String),
  inputAudio: ChatCompletionRequestMessageContentPartAudioInputAudio.fromJson(json['input_audio'] as Map<String, dynamic>),
); }

/// The type of the content part. Always `input_audio`.
final ChatCompletionRequestMessageContentPartAudioType type;

final ChatCompletionRequestMessageContentPartAudioInputAudio inputAudio;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
  'input_audio': inputAudio.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') &&
      json.containsKey('input_audio'); } 
ChatCompletionRequestMessageContentPartAudio copyWith({ChatCompletionRequestMessageContentPartAudioType? type, ChatCompletionRequestMessageContentPartAudioInputAudio? inputAudio, }) { return ChatCompletionRequestMessageContentPartAudio(
  type: type ?? this.type,
  inputAudio: inputAudio ?? this.inputAudio,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ChatCompletionRequestMessageContentPartAudio &&
          type == other.type &&
          inputAudio == other.inputAudio; } 
@override int get hashCode { return Object.hash(type, inputAudio); } 
@override String toString() { return 'ChatCompletionRequestMessageContentPartAudio(type: $type, inputAudio: $inputAudio)'; } 
 }
