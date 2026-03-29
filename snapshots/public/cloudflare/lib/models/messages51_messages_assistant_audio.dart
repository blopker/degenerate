// GENERATED CODE - DO NOT MODIFY BY HAND

import 'messages51_messages_assistant_audio_variant1.dart';final class Messages51MessagesAssistantAudio {const Messages51MessagesAssistantAudio({this.messages51MessagesAssistantAudioVariant1});

factory Messages51MessagesAssistantAudio.fromJson(Map<String, dynamic> json) { return Messages51MessagesAssistantAudio(
  messages51MessagesAssistantAudioVariant1: Messages51MessagesAssistantAudioVariant1.canParse(json) ? Messages51MessagesAssistantAudioVariant1.fromJson(json) : null,
); }

final Messages51MessagesAssistantAudioVariant1? messages51MessagesAssistantAudioVariant1;

/// At least one variant must be present.
bool get isValid { return messages51MessagesAssistantAudioVariant1 != null; } 
Map<String, dynamic> toJson() { return {
  ...?messages51MessagesAssistantAudioVariant1?.toJson(),
}; } 
 }
